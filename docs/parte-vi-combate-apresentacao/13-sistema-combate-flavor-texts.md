# 13. SISTEMA DE COMBATE E FLAVOR TEXTS

## 13.1 Mecânica de Combate: Simplificada mas Profunda

### Sistema de Combate Baseado em Turnos Rápidos

O combate acontece em **micro-turnos** (1 turno = 1 segundo real).

#### Fórmula de Dano

```typescript
const damage = attacker.attack * (1 - defender.defense / 100);
const finalDamage = damage * critMultiplier * elementalBonus;

defender.hp -= finalDamage;
```

#### Exemplo

```
Kaelen ataca Ogro:
- Attack: 50
- Defense Ogro: 20
- Dano base: 50 * (1 - 20/100) = 40

Crítico (10% chance): 40 * 2 = 80
Ogro HP: 200 → 120
```

---

## 13.2 Flavor Texts: O Coração da Narrativa

### Sistema de Textos Dinâmicos

Cada evento de combate gera **texto contextual** variado via banco de dados.

### Estrutura da Tabela `flavor_texts`

```sql
CREATE TABLE flavor_texts (
    id SERIAL PRIMARY KEY,
    context_type VARCHAR(50) NOT NULL,        -- 'combat', 'social', 'loot'
    event_trigger VARCHAR(50) NOT NULL,       -- 'critical_hit', 'hero_death', 'loot_grab'
    intensity_level VARCHAR(20),              -- 'low', 'medium', 'high', 'epic'
    actor_class VARCHAR(20),                  -- 'warrior', 'mage', 'rogue', 'archer'
    weapon_type VARCHAR(20),                  -- 'sword', 'bow', 'staff', 'dagger'
    personality_trait VARCHAR(20),            -- 'brave', 'coward', 'greedy'
    text_template TEXT NOT NULL,              -- Template com placeholders
    rarity_weight INT DEFAULT 1,              -- Peso para randomização
    created_at TIMESTAMP DEFAULT NOW()
);
```

### Exemplo de Registros

```sql
-- Crítico Épico
INSERT INTO flavor_texts VALUES (
  context_type: 'combat',
  event_trigger: 'critical_hit',
  intensity_level: 'epic',
  actor_class: 'warrior',
  weapon_type: 'sword',
  text_template: '⚔️ {HERO} desferiu um golpe DEVASTADOR em {MONSTER}! Sangue jorrou!',
  rarity_weight: 10
);

-- Morte Heroica
INSERT INTO flavor_texts VALUES (
  context_type: 'combat',
  event_trigger: 'hero_death',
  intensity_level: 'epic',
  personality_trait: 'brave',
  text_template: '💀 {HERO} caiu em batalha. Suas últimas palavras: "Pelo... reino..."',
  rarity_weight: 5
);
```

---

## 13.3 Contextos de Eventos

### Matriz Completa de Contextos

| Categoria     | Eventos                                              | Variações                                                  |
| ------------- | ---------------------------------------------------- | ---------------------------------------------------------- |
| **Combate**   | Attack, Critical Hit, Miss, Kill, Hero Death         | 5 níveis de intensidade × 6 classes × 4 armas = 120 textos |
| **Social**    | PvP Start, Friendship Formed, Betrayal               | 3 níveis × 5 personalidades = 15 textos                    |
| **Loot**      | Common Drop, Rare Drop, Legendary Drop, No Loot      | 4 níveis × 6 classes = 24 textos                           |
| **Ambiental** | Day/Night Transition, Weather Change, Invasion Alert | 2 níveis × 5 tipos = 10 textos                             |
| **Econômico** | Purchase, Upgrade, Broke, Treasure Found             | 3 níveis = 12 textos                                       |

**Total:** ~150 textos base × variações = **500+ flavor texts únicos**

---

## 13.4 Sistema de Geração de Logs

### Pipeline de Criação de Log

```typescript
function generateCombatLog(event: CombatEvent): string {
  // 1. Buscar textos compatíveis no banco
  const candidates = db.query(
    `
    SELECT text_template, rarity_weight 
    FROM flavor_texts 
    WHERE context_type = 'combat'
      AND event_trigger = $1
      AND actor_class = $2
      AND intensity_level = $3
  `,
    [event.trigger, event.hero.class, event.intensity],
  );

  // 2. Randomização ponderada
  const selectedText = weightedRandom(candidates, "rarity_weight");

  // 3. Substituir placeholders
  const finalText = selectedText.text_template
    .replace("{HERO}", event.hero.name)
    .replace("{MONSTER}", event.monster.name)
    .replace("{DAMAGE}", event.damage)
    .replace("{WEAPON}", event.hero.weapon.name);

  // 4. Adicionar emoji/ícone baseado em intensidade
  const icon = getIntensityIcon(event.intensity);

  return `[${timestamp}] ${icon} ${finalText}`;
}
```

### Exemplo de Output

```
[12:45] ⚔️ ATK [Kaelen ⚔️ Ogro] [CRÍTICO! -80 HP] Golpe devastador! Sangue jorrou!

[12:47] 🩸 STAT [Kaelen] [🚩 PvP] Bandeira Vermelha ativa.
[12:48] 💀 KILL [Monstro ⚔️ Gandalf] [☼️] Últimas palavras: "Cuidado com... *ugh*"
```

---

## 13.5 Prompt para LLM: Geração de Flavor Texts

### Template de Prompt

```
Você é um escritor de RPG medieval. Gere 50 textos curtos (máx. 100 caracteres)
para eventos de combate em um jogo de simulação.

Contexto: {context_type}
Evento: {event_trigger}
Classe: {actor_class}
Intensidade: {intensity_level}

Regras:
1. Use placeholders: {HERO}, {MONSTER}, {DAMAGE}, {WEAPON}
2. Varie o tom: épico, cômico, dramático, sarcástico
3. 70% devem ser neutros, 20% épicos, 10% cômicos
4. Evite repetições de estrutura

Formato de saída (SQL INSERT):
INSERT INTO flavor_texts (context_type, event_trigger, intensity_level,
actor_class, text_template, rarity_weight) VALUES
('combat', 'critical_hit', 'epic', 'warrior',
 '⚔️ {HERO} dividiu {MONSTER} ao meio com {WEAPON}!', 5);

Gere 50 variações agora.
```

---

## 13.6 Cache e Performance

### Sistema de Cache de Textos

```typescript
// Pré-carregar textos mais comuns na inicialização
const textCache = new Map<string, FlavorText[]>();

async function preloadCache() {
  const commonContexts = ["combat", "social", "loot"];

  for (const context of commonContexts) {
    const texts = await db.query(
      `
      SELECT * FROM flavor_texts 
      WHERE context_type = $1 
      AND rarity_weight >= 30
    `,
      [context],
    );

    textCache.set(context, texts);
  }
}

// Uso em runtime (sem hit no DB)
function getFlavorText(context: string, trigger: string): string {
  const cached = textCache.get(context);
  return weightedRandom(cached.filter((t) => t.event_trigger === trigger));
}
```

---

## 13.7 Guia de Estilização Visual dos Logs

Este guia descreve a **aparência visual** de cada tipo de mensagem no console de combate. O objetivo é criar hierarquia visual clara, permitindo ao jogador identificar eventos importantes rapidamente.

---

### 📦 Container do Log (Área Geral)

- **Fundo**: Escuro, quase preto, semi-transparente (para não cobrir completamente o mapa)
- **Fonte**: Monoespaçada (estilo terminal/console)
- **Bordas**: Arredondadas sutilmente, borda fina cinza escuro
- **Rolagem**: Vertical, com as mensagens mais recentes aparecendo embaixo
- **Altura máxima**: Aproximadamente 1/4 da tela

---

### 📝 Linha Base (Mensagem Padrão)

- Texto cinza claro sobre fundo escuro
- Barra vertical fina à esquerda (3px) que muda de cor conforme o tipo
- Leve destaque ao passar o cursor (hover) - útil para versões com mouse

---

### 🎨 Tipos de Eventos e Suas Aparências

#### ⚔️ **Ataque Normal**

- **Barra lateral**: Cinza médio
- **Texto**: Branco acinzentado
- **Ícone**: ⚔️ (espadas cruzadas)
- **Exemplo**: `[12:45] ⚔️ Kaelen atacou Goblin. (-25 HP)`

#### 💥 **Golpe Crítico**

- **Barra lateral**: Vermelho vivo
- **Texto**: Vermelho claro, **negrito**
- **Fundo**: Gradiente sutil vermelho → transparente (da esquerda para direita)
- **Efeito**: Leve brilho/pulso vermelho ao aparecer (flash rápido de 0.5s)
- **Ícone**: 💥 ou ⚔️ com destaque
- **Exemplo**: `[12:45] 💥 CRÍTICO! Kaelen devastou Ogro! (-120 HP)`

#### 💚 **Cura/Regeneração**

- **Barra lateral**: Verde esmeralda
- **Texto**: Verde claro suave
- **Ícone**: 🌿 ou 💚
- **Exemplo**: `[12:46] 🌿 Druida restaurou 50 HP de Kaelen.`

#### 🔵 **Buff (Bônus Positivo)**

- **Barra lateral**: Azul celeste
- **Texto**: Azul claro
- **Ícone**: ⬆️ ou 🔵
- **Exemplo**: `[12:46] ⬆️ Grito de Guerra! Kaelen ganhou +20% Attack.`

#### 🟣 **Debuff (Penalidade)**

- **Barra lateral**: Roxo/Violeta
- **Texto**: Lilás claro
- **Ícone**: ⬇️ ou 🟣
- **Exemplo**: `[12:47] ⬇️ Ogro está envenenado! (-5 HP/s)`

#### 👑 **Evento Épico/Lendário**

- **Borda completa**: Dourada fina ao redor da linha inteira
- **Fundo**: Leve brilho dourado translúcido
- **Texto**: Dourado, MAIÚSCULAS, espaçamento entre letras maior
- **Efeito**: Brilho interno (glow) dourado sutil
- **Ícone**: 👑 ou ⭐
- **Exemplo**: `[12:48] 👑 LENDÁRIO! KAELEN ENCONTROU EXCALIBUR!`

#### 💬 **Social/Diálogo**

- **Barra lateral**: Amarelo pálido
- **Texto**: Amarelo claro, _itálico_
- **Ícone**: 💬 ou 🗨️
- **Exemplo**: `[12:49] 💬 Kaelen: "Cuidem das minhas costas!"`

#### 🌈 **Combo de Afinidade (Dual Tech)**

- **Barra lateral**: Mais grossa (4px), com gradiente arco-íris ou magenta→ciano
- **Fundo**: Gradiente magenta translúcido → transparente
- **Texto**: Branco, **negrito**
- **Efeito especial**: Pequeno flash ou partículas brilhantes ao aparecer
- **Ícone**: 🌈 ou ⚡
- **Exemplo**: `[12:50] 🌈 COMBO! Kaelen & Lila: "Distração Brutal"! (850 Dano)`

#### 💀 **Morte de Herói**

- **Barra lateral**: Preto com borda vermelha escura
- **Texto**: Vermelho escuro, **negrito**
- **Fundo**: Gradiente preto avermelhado
- **Ícone**: 💀 ou ☠️
- **Exemplo**: `[12:51] 💀 Kaelen caiu em batalha... "Pelo... reino..."`

#### 🏆 **Vitória/Loot**

- **Barra lateral**: Verde dourado
- **Texto**: Verde claro ou dourado (dependendo da raridade)
- **Ícone**: 🏆 ou 💰
- **Exemplo**: `[12:52] 🏆 Ogro derrotado! +150 XP, +35 Ouro`

---

### 📐 Estrutura de Cada Linha

Cada mensagem de log deve conter três elementos visuais em sequência:

1. **Timestamp** (opcional, menor e mais escuro): `[HH:MM]`
2. **Ícone** (emoji ou sprite pequeno): Indica o tipo de evento
3. **Conteúdo** (texto principal): A mensagem em si

Exemplo de layout:

```
[12:45] ⚔️ Kaelen atacou Goblin. (-25 HP)
```

---

### ✨ Animações Sugeridas

| Evento         | Animação                                           |
| -------------- | -------------------------------------------------- |
| Crítico        | Flash vermelho rápido (0.3s) + texto pulsa uma vez |
| Épico/Lendário | Brilho dourado expande e some (0.5s)               |
| Combo          | Flash multicolorido + shake leve da linha          |
| Morte          | Fade-in lento com efeito de "escurecer"            |
| Loot Raro      | Partículas brilhantes sobem brevemente             |

---

### 🎯 Princípios de Design

1. **Hierarquia Visual**: Eventos raros/importantes devem "saltar" visualmente
2. **Legibilidade**: Contraste suficiente mesmo em cenas claras
3. **Consistência**: Mesmo padrão de cores para o mesmo tipo de evento
4. **Não Intrusivo**: Animações rápidas, nunca bloqueiam gameplay
5. **Escalável**: Funciona bem com muitas mensagens em sequência

---
