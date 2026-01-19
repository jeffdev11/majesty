# 4. OS HERÓIS: AGENTES AUTÔNOMOS

## 4.1 Estrutura de Dados de um Herói

Cada herói é uma entidade complexa com múltiplas camadas de dados.

### Schema Completo

```typescript
interface Hero {
  // Identificação
  id: string;
  name: string;
  class: HeroClass; // WARRIOR, MAGE, ARCHER, ROGUE, DRUID, ELF

  // Atributos Físicos
  stats: {
    hp: number;
    maxHp: number;
    mana: number;
    maxMana: number;
    attack: number;
    defense: number;
    speed: number;
  };

  // Personalidade (P.E.R.M.A.)
  personality: {
    power: number; // Audácia (0.0 - 1.0)
    ethics: number; // Ética (0.0 - 1.0)
    resource: number; // Ganância (0.0 - 1.0)
    mind: number; // Intelecto (0.0 - 1.0)
    affect: number; // Humor (0.0 - 1.0)
  };

  // Estados Temporários
  states: TemporaryState[]; // DRUNK, HUNGRY, INSPIRED, SCARED

  // Peculiaridades (Overrides)
  quirks: Quirk[]; // ARACHNOPHOBIA, GAMBLER, HATE_UNDEAD

  // Social
  relationships: Map<HeroId, AffinityScore>; // -100 a +100
  memories: Memory[];

  // Inventário
  inventory: Item[];
  equipment: {
    weapon: Weapon;
    armor: Armor;
    accessory: Accessory;
  };

  // Progressão
  level: number;
  xp: number;
  unlockedSkills: Skill[];

  // Background Procedural
  background: {
    birthplace: string;
    motivation: string;
    fear: string;
    biography: string; // Gerado por LLM
  };
}
```

---

## 4.2 Sistema P.E.R.M.A.: Os 5 Vetores de Personalidade

O sistema **P.E.R.M.A.** define a essência psicológica de cada herói através de 5 vetores flutuantes (0.0 a 1.0).

### Tabela de Referência

| Vetor | Nome                    | 0.0 (Baixo)                                        | 1.0 (Alto)                                         | Impacto no Gameplay                        |
| ----- | ----------------------- | -------------------------------------------------- | -------------------------------------------------- | ------------------------------------------ |
| **P** | **Power (Audácia)**     | **Covarde:** Foge com 80% HP. Evita Elites.        | **Temerário:** Luta até 0% HP. Ataca Boss sozinho. | Define `FleeThreshold` e peso do risco     |
| **E** | **Ethics (Ética)**      | **Oportunista:** Rouba Kills (KS), ignora aliados. | **Paladino:** Cura aliados, divide loot, obedece.  | Define interação social e obediência       |
| **R** | **Resource (Ganância)** | **Altruísta:** Ignora ouro durante combate.        | **Kleptomaníaco:** Para de lutar para pegar loot.  | Define prioridade LOOT vs COMBAT           |
| **M** | **Mind (Intelecto)**    | **Instintivo:** Ataca alvo mais próximo.           | **Tático:** Foca Healers/Magos, usa itens.         | Define seleção de alvo e uso de inventário |
| **A** | **Affect (Humor)**      | **Instável:** Humor volátil, quebra sob pressão.   | **Estoico:** Mantém calma, ignora insultos.        | Define volatilidade dos outros vetores     |

### Geração Procedural

Cada herói nasce com vetores aleatórios, mas com **vieses de classe**:

```typescript
// Guerreiro
personality: {
  power: random(0.6, 1.0),    // Naturalmente corajoso
  ethics: random(0.4, 0.8),   // Neutro
  resource: random(0.2, 0.5), // Pouco ganancioso
  mind: random(0.3, 0.6),     // Força bruta
  affect: random(0.5, 0.8)    // Estável
}

// Ladino
personality: {
  power: random(0.3, 0.6),    // Cauteloso
  ethics: random(0.1, 0.4),   // Deslealdade
  resource: random(0.7, 1.0), // MUITO ganancioso
  mind: random(0.6, 0.9),     // Astuto
  affect: random(0.3, 0.7)    // Imprevisível
}

// Druida
personality: {
  power: random(0.4, 0.7),    // Moderadamente corajoso
  ethics: random(0.6, 0.9),   // Altruísta
  resource: random(0.2, 0.5), // Pouco ganancioso
  mind: random(0.5, 0.8),     // Sábio
  affect: random(0.6, 0.9)    // Calmo e equilibrado
}

// Elfo
personality: {
  power: random(0.5, 0.8),    // Confiante
  ethics: random(0.5, 0.8),   // Honrado
  resource: random(0.3, 0.6), // Moderado
  mind: random(0.6, 0.9),     // Muito inteligente
  affect: random(0.7, 1.0)    // Muito estável
}
```

---

## 4.3 Camadas de Modificação: Estados e Peculiaridades

A personalidade base é **modulada** por estados temporários e peculiaridades permanentes.

### Estados Temporários (Buffs/Debuffs Psicológicos)

| Estado            | Duração   | Efeito                                     |
| ----------------- | --------- | ------------------------------------------ |
| **DRUNK**         | 5 min     | Power +0.3, Mind -0.5 (Corajoso mas burro) |
| **HUNGRY**        | Até comer | Resource +0.2, Speed -10%                  |
| **INSPIRED**      | 2 min     | Todos vetores +0.1                         |
| **SCARED**        | 1 min     | Power -0.4, Flee Threshold +30%            |
| **GREEDY_FRENZY** | 30s       | Resource +0.5 (Vê loot lendário)           |

### Peculiaridades (Overrides Binários)

| Quirk             | Trigger          | Efeito                                  |
| ----------------- | ---------------- | --------------------------------------- |
| **ARACHNOPHOBIA** | Vê aranha        | Force Flee (100%), ignora personalidade |
| **GAMBLER**       | Encontra Cassino | Pode gastar todo ouro em apostas        |
| **HATE_UNDEAD**   | Vê morto-vivo    | Attack Priority +1000, ignora HP baixo  |
| **PYROMANCER**    | Contra Ogro      | +50% dano com fogo                      |
| **KLEPTOMANIAC**  | Vê baú           | MUST loot, mesmo durante combate        |

---

## 4.4 Classes de Heróis: Vieses e Identidade

### As 6 Classes Principais

#### 🗡️ Guerreiro (Warrior)

- **Identidade:** Tanque de linha de frente
- **Stats Base:** HP Alto, Ataque Médio, Defesa Alta
- **Viés P.E.R.M.A.:** Power ↑, Resource ↓
- **Comportamento:** Ataca primeiro, protege aliados fracos

#### 🔮 Mago (Mage)

- **Identidade:** DPS de longo alcance, controle de área
- **Stats Base:** HP Baixo, Mana Alto, Ataque Mágico Alto
- **Viés P.E.R.M.A.:** Mind ↑, Power ↓
- **Comportamento:** Mantém distância, foca múltiplos alvos

#### 🏹 Arqueiro (Archer)

- **Identidade:** DPS consistente, mobilidade
- **Stats Base:** HP Médio, Velocidade Alta, Ataque Físico Médio
- **Viés P.E.R.M.A.:** Mind ↑, Affect ↑
- **Comportamento:** Kiting, foca alvos fracos

#### 🗝️ Ladino (Rogue)

- **Identidade:** Burst damage, saque, evasão
- **Stats Base:** HP Baixo, Velocidade Muito Alta, Crit Alto
- **Viés P.E.R.M.A.:** Resource ↑↑, Ethics ↓
- **Comportamento:** Rouba kills, saqueia primeiro, foge rápido

#### 🌿 Druida (Druid)

- **Identidade:** Suporte/Metamorfo, cura e transformação
- **Stats Base:** HP Médio, Mana Médio, Versatilidade Alta
- **Viés P.E.R.M.A.:** Ethics ↑, Mind ↑
- **Comportamento:** Cura aliados, se transforma em animais, controle de área

#### 🏹 Elfo (Elf)

- **Identidade:** Híbrido mágico/físico, suporte ágil
- **Stats Base:** HP Médio-Baixo, Mana Alto, Velocidade Alta
- **Viés P.E.R.M.A.:** Mind ↑, Affect ↑
- **Comportamento:** Combate à distância, buffs de grupo, alta mobilidade

---

## 4.5 Ciclo de Vida: Morte, Redenção e Necromancia

### A Morte Não é o Fim

Quando um herói morre:

1. **Drop de Equipamento:** Todo equipamento cai no chão (pode ser saqueado)
2. **Entrada no Memorial:** O herói entra temporariamente na aba "MEMORIAL (MORTOS)" da Library
3. **Redenção Automática:** Após 60 segundos, o herói **automaticamente** renasce como **Guarda da Cidade** (nível base, sem equipamento)

### O Caminho da Redenção: Guardas da Cidade

**Estado:** `GUARDA_DA_CIDADE`

**Características:**

- Equipamento básico (espada de ferro, sem armadura)
- Nível resetado para 1
- Personalidade **preservada**
- Novo objetivo: Completar 5 "Missões de Redenção"

**Missões de Redenção:**

- Defender a vila de invasão
- Escoltar mercador
- Patrulhar perímetro
- Salvar herói caído
- Derrotar chefe de facção

**Ao completar 5 missões:** Estado volta para `AVENTUREIRO` com level 3 e equipamento médio.

### Trauma e Memória

Heróis que morreram ganham uma memória permanente:

```typescript
{
  type: "DEATH",
  killer: "Ogro das Cavernas",
  location: "Floresta Sombria",
  emotionalImpact: -20, // Afeta relacionamentos com outros heróis
  phobia: "FEAR_OF_OGRES" // 20% chance de quirk
}
```

### Necromancia: O Lado Sombrio

Se um **Necromancer Boss** aparecer no Ciclo 3, ele pode reanimar heróis mortos como:

**Heróis Corrompidos:**

- Nome: "Sir Kaelen, O Amaldiçoado"
- Luta **contra** o jogador
- Mantém skills, mas sem personalidade
- Se derrotado novamente: **Libertado da corrupção**, volta como Guarda da Cidade após 60 segundos

---

## 4.6 Limitação Estratégica: Máximo de 12 Heróis

**Regra de Ouro:** O jogador pode ter no máximo **12 heróis ativos** simultaneamente.

### Justificativa de Design

- **Valor Individual:** Cada herói importa. A morte de um é catastrófica
- **Conhecimento Pessoal:** O jogador consegue memorizar nomes, personalidades e histórias
- **Desafio:** Força o jogador a tomar decisões difíceis de recrutamento
- **Performance:** Reduz complexidade de IA

### O Que Acontece Quando Atinge o Limite?

1. **Recrutamento Bloqueado:** Não é possível atrair novos heróis
2. **Exceção:** Se um herói morrer, uma vaga abre
3. **Escolha Dolorosa:** O jogador pode "demitir" um herói (ele sai do reino e nunca volta)

---
