# 5. DINÂMICA SOCIAL: O "DRAMA EMERGENTE"

## 5.1 Formação de Grupos (Party System)

Heróis não são solitários por natureza. Eles formam **grupos dinâmicos** baseados em afinidade e preferência social.

### Regras de Formação

- **Tamanho Máximo:** 3 heróis por grupo
- **Critério Principal:** Affinity Score (quanto maior, mais provável)
- **Critério Secundário:** Personalidade (Ethics alto prefere grupos)
- **Dinâmica:** Grupos podem se dissolver se a afinidade cair abaixo de -20

### Benefícios de Grupo

| Benefício                        | Descrição                                             |
| -------------------------------- | ----------------------------------------------------- |
| **XP Compartilhado**             | Todos ganham XP de kills do grupo (80% do valor)      |
| **Buff de Moral**                | +10% Attack e Defense enquanto aliados estão próximos |
| **Salvamento Automático**        | Herói com HP baixo é defendido por aliados            |
| **Compartilhamento de Recursos** | Heróis éticos doam poções entre si                    |

### Exemplo de Formação

**Cenário:**

- Sir Kaelen (Ethics: 0.7) derrota um Ogro
- Lila Rogue (Ethics: 0.3) observa de longe
- Kaelen protege Lila de um ataque surpresa → Lila ganha +5 Affinity
- Após 3 interações positivas: Affinity = +30
- **Resultado:** Lila propõe formar grupo
- Kaelen aceita (Ethics alto = cooperativo)

---

## 5.3 Combate PvP (Player vs Player... entre Heróis!)

### Regras de PvP

**Condições para Iniciar:**

1. Herói atacante tem `pvp_flag` OU
2. Affinity < -50 (ódio profundo) OU
3. Quirk `VENGEFUL` ativo

**Mecânica:**

- PvP funciona **exatamente** como combate PvE
- Não há dano reduzido (realista e brutal)
- Outros heróis podem **intervir** baseado em Affinity

### Três Finais Possíveis

#### 1. Nocaute (HP ≤ 30%)

- Perdedor foge automaticamente
- Ganhador recupera honra: Remove `pvp_flag`
- Affinity cai para **mínimo -80**

#### 2. Morte

- Perdedor morre (entra em recuperação de 60s)
- Ganhador ganha título: `"Matador de [Nome]"`
- Affinity com todos aliados da vítima: -30

#### 3. Intervenção de Terceiros

- Herói com alta Affinity (>50) com a vítima **intervém**
- Atacante original é forcado a recuar
- Interveniente ganha +10 Affinity com vítima

### Vingança Coordenada

Se um herói **muito querido** (Affinity média > 60 no reino) é morto em PvP:

**Evento:** `VENDETTA`

- 2-3 heróis formam "Esquadrão de Vingança"
- Caçam o assassino ativamente
- Ignoram outras prioridades (monstros, quests)
- Se bem-sucedidos: Assassino morre ou é exilado

---

## 5.4 Amizades e Lealdade

### Sistema de Afinidade (Affinity Score)

Cada par de heróis tem um **Affinity Score** que varia de **-100 a +100**.

#### Como Aumentar Afinidade (+)

| Ação                                   | Ganho  |
| -------------------------------------- | ------ |
| Lutar juntos contra boss               | +10    |
| Salvar de morte certa                  | +25    |
| Doar item valioso                      | +15    |
| Proteger de dano letal                 | +10    |
| Aceitar resposta de carta com gratidão | +8     |
| Vingar morte                           | +30    |
| **Curar sem ser solicitado**           | **+5** |
| **Elogiar em público (Log)**           | **+3** |
| **Combo de Habilidade (Sync)**         | **+8** |

#### Como Diminuir Afinidade (-)

| Ação | Perda |
| ---- | ----- |

| Deixar morrer quando podia salvar | -20 |

| Matar em PvP | -100 (permanente) |
| Ignorar pedido de ajuda | -8 |
| **Friendly Fire (Dano em área)** | **-5** |
| **Recusar Buff/Cura** | **-5** |
| **Discutir em Chat (Banter)** | **-2** |

### Títulos de Amizade

Quando Affinity atinge certos marcos:

| Affinity       | Título       | Gameplay                                           |
| -------------- | ------------ | -------------------------------------------------- |
| **+80 a +100** | Inseparáveis | Sempre formam grupo, compartilham 100% loot        |
| **+50 a +79**  | Amigos Leais | Defendem-se mutuamente, +15% stats quando próximos |
| **+20 a +49**  | Companheiros | Preferem formar grupo                              |
| **0 a +19**    | Conhecidos   | Neutro                                             |
| **-19 a -1**   | Desconfiança | Evitam cooperar                                    |
| **-49 a -20**  | Rivais       | Competem por kills e loot                          |
| **-100 a -50** | Inimigos     | PvP garantido se cruzarem caminhos                 |

### 5.4.1 Consequências de Gameplay (Console & UX)

A afinidade não é apenas um número no banco de dados; ela altera drasticamente como o jogo é **visualizado e jogado** no console.

#### ✅ Alta Afinidade (Sinergia)

Quando dois heróis são "Amigos Leais" ou "Inseparáveis":

1.  **Ataques Sincronizados (Dual Techs):**
    - **Visual:** Uma linha de energia (verde/dourada) conecta os retratos dos heróis no [F1].
    - **Mecânica:** Desbloqueiam combos automáticos. Ex: O Guerreiro lança o inimigo para cima, o Arqueiro atira no ar.
    - **Log:** `⚔️ [COMBO] Kaelen & Lila executaram "Tempestade de Lâminas"!`

2.  **Proteção de Tanque (Bodyblock):**
    - Se um Mago (HP Baixo) vai receber dano letal, o Paladino Amigo pula na frente automaticamente.
    - **Feedback Visual:** Escudo vibrante aparece brevemente sobre o protegido.

3.  **Compartilhamento de Inventário:**
    - Se um herói está sem poções, o amigo joga uma das suas (animação de arremesso).

#### ❌ Baixa Afinidade (Rivalidade)

Quando dois heróis são "Rivais" ou "Inimigos":

1.  **Bloqueio de Movimento (Bodyblock Hostil):**
    - Heróis se recusam a dar passagem em corredores estreitos, empurrando um ao outro.
    - **Log:** `💢 [Lila] empurrou [Kaelen]: "Sai da frente, lata velha!"`

2.  **Negligência de Cura:**
    - Healers podem "fingir que não viram" o rival com HP baixo, priorizando outros ou a si mesmos.
    - **Feedback UX:** O healer mostra um ícone de 🙈 sobre a cabeça.

3.  **Friendly Fire "Acidental":**
    - Mago lança bola de fogo "perto demais" do Guerreiro rival.
    - **Dano:** Pequeno, mas causa interrupção (stagger).

---

---

## 5.2 Disputa de Glória (Quem finalizou?)

Embora o XP seja compartilhado em grupos, apenas quem desfere o **Golpe Final (Last Hit)** ganha o bônus de **Glória** e incrementa o contador de Kills.

### Conflito Narrativo

Heróis orgulhosos (Power > 0.7) podem ficar ofendidos se um aliado "tomar a glória" de um inimigo que eles enfraqueceram.

**Exemplo de Log:**

```
[14:30] ⚔️ Kaelen deixou Ogro com 5% HP.
[14:31] 🏹 Lila disparou flecha final! (Last Hit)
[14:32] 💢 Kaelen: "Essa foi MINHA vitória, ladina!"
[14:33] 📉 Affinity: Kaelen ↔ Lila (-5)
```

> **Nota:** Isso NÃO é roubo de recursos (o loot é gerado para quem matou, mas pode ser compartilhado se forem amigos). É puramente uma disputa de ego.

---

## 5.5 Saque de Heróis Caídos (Sem Roubo)

Heróis nunca roubam itens de aliados vivos. Porém, se um herói morrer:

1. **Drop:** Todos os itens inventariados caem no chão (Loot Bag).
2. **Recuperação:** Qualquer herói próximo pode pegar a bolsa.
3. **Decisão Ética:**
   - **Ético (Ethics > 0.6):** Guarda os itens para devolver ao dono quando ele renascer.
   - **Pragmático (Ethics < 0.4):** Usa os itens se forem melhores que os seus.
   - **Ganancioso (Resource > 0.8):** Vende os itens no mercado para lucro próprio.

**Exemplo:**

```
[10:15] 💀 Gandalf caiu em combate. Dropou: "Cajado das Cinzas".
[10:16] ✋ Sir Kaelen recolheu o Cajado.
[10:17] 💬 Kaelen: "Vou guardar isso para você, velho amigo."
```

---

## 5.6 Sistema de "Banter" (Diálogos Dinâmicos)

Heróis **conversam entre si** baseado em eventos e personalidade.

### Estrutura de Template

```typescript
const banterTemplate = {
  trigger: "FRIENDLY_FIRE",
  speaker: "VICTIM",
  template: "{VICTIM_NAME}: Cuidado onde mira essa magia, {ATTACKER_NAME}!",
  personality_filter: { ethics: ">0.5" },
};
```

### Exemplos de Banter

#### Formação de Grupo

- **Líder:** _"Lila, vamos caçar juntos?"_
- **Aceita:** _"Só se você não recuar, Kaelen!"_

#### Morte de Aliado

- **Testemunha (Affinity Alta):** _"NÃO! Gandalf! Vou vingar você!"_
- **Testemunha (Affinity Baixa):** _"Hmm, ele devia ter fugido antes..."_

#### Boss Derrotado

- **Guerreiro:** _"A força sempre vence!"_
- **Mago:** _"A estratégia sempre vence!"_

---

## 5.7 Matriz de Relacionamento (Visualização)

No **[F3] LIBRARY**, o jogador pode ver uma **Matriz de Afinidade**:

```
        Kaelen  Lila  Gandalf  Elara
Kaelen    -     +45    +80     +20
Lila     +40     -     -10     +15
Gandalf  +75    -5      -      +50
Elara    +25    +10    +55      -
```

**Legenda:**

- Verde: +50 ou mais (Amigos)
- Amarelo: 0 a +49 (Neutro)
- Vermelho: Negativo (Rivais/Inimigos)

---

## 5.8 Outros Gatilhos de Conflito Social

**IMPORTANTE:** A Disputa de Glória NÃO é o único tipo de conflito! Para evitar redundância narrativa, o sistema possui **6 categorias principais** de conflitos emergentes.

### 1. Covardia Causando Morte

**Gatilho:** Herói A foge de combate (Audácia < 0.3) e isso resulta na morte de Herói B que estava lutando ao lado.

**Cálculo de Culpabilidade:**

```typescript
if (heroB.died && heroA.ranAway && distance(A, B) < 5) {
  // Herói A é culpado!
  heroB.lastWords = "A covardia de " + heroA.name + " me matou!";
  triggerRevenge(heroB, heroA);
}
```

**Consequências:**

- Affinity: -30 (GRAVE)
- Herói que morreu pode virar **Fantasma Vingativo**
- Outros heróis que presenciaram: -10 Affinity com covarde
- Reputação global: "Covarde" permanente até redimir

**Exemplo Narrativo:**

```
[14:32] ⚔️ ATK [Kaelen+Lila ⚔️ 5 Ogros] Combate 2v5 iniciado!
[14:33] 👣 FLEE [Kaelen] [HP: 25%] Fugiu e deixou Lila sozinha!
[14:34] ⚔️ ATK [Lila ⚔️ 5 Ogros] [1v5] Cerco mortal!
[14:35] 💀 KILL [Ogros ⚔️ Lila] [☼️] Lila caiu em batalha.

[Log de Morte]:
"Lila caiu. Últimas palavras: 'Kaelen... covarde...'"

[Efeito]:
- Lila vira Fantasma (se sistema de necromancia ativo)
- Kaelen ganha trauma "Culpa"
- Affinity Kaelen ↔ todos: -10
```

---

### 2. Negligência Tática (Erro Crítico)

**Gatilho:** Herói falha em sua função primária (Tank perde aggro, Healer não cura) causando dano grave a um aliado.

**Lógica de Culpa:**

```typescript
if (ally.hp < 20% && healer.hasMana && !healer.cooldown && !healer.healed) {
  ally.anger += 15;
  ally.dialogue = "EU PRECISAVA DE CURA, " + healer.name + "!";
}
```

**Consequências:**

- Affinity: -15
- Discussão no chat (Banter)
- Vítima pode recusar ajudar o negligente no futuro

**Exemplo:**

```
[16:20] ⚠️ CRISIS [Kaelen] HP: 15% (Tanking Boss)
[16:20] 💤 IDLE [Elara] (Healer) Mana: 100% | Status: Parada
[16:21] 💀 HIT [Boss -> Kaelen] 120 Dano (Kaelen Caiu!)
[16:22] 💬 CHAT [Kaelen] "Elara?? Eu estava morrendo!"
[16:23] 💬 CHAT [Elara] "Estava economizando mana para a fase 2..."
[16:24] 🩸 RELAÇÃO [Kaelen <-> Elara] -20 (Negligência)
```

### 3. Ciúmes de Poder (Inveja de Níveis)

**Gatilho:** Diferença de nível entre heróis > 5 e um deles tem Inveja (Power > 0.7).

**Psicologia:**

```typescript
if (heroA.level - heroB.level > 5 && heroB.power > 0.7) {
  heroB.envy = true;
  heroB.dialogue = `${heroA.name} não é TÃO especial. 
                     Eu posso ser melhor!`;
}
```

**Consequências:**

- Herói B sabota missões de A (não ajuda propositalmente)
- Se lealdade baixa (<40%): Traição e deserção possível

**Exemplo:**

```
Kaelen: Lvl 12 (mais forte)
Lila: Lvl 6 (Power: 0.9 - muito ambiciosa)

[Sistema detecta inveja]:
Lila começa a sabotar Kaelen:
- Não cura ele em combate
- Compete por kills
- Fala mal dele para outros heróis

[Carta de Lila para Gandalf]:
"Kaelen se acha o melhor. Mas ele teve SORTE.
Eu sou mais habilidosa. Um dia vou provar."

[Affinity gradual]:
Dia 50: Lila ↔ Kaelen = +30
Dia 55: +20 (começou inveja)
Dia 60: +5
Dia 65: -10 (rival declarada)
```

---

### 4. Conflito de Personalidade P.E.C.M.A.

**Gatilho:** Dois heróis com vetores P.E.C.M.A. **opostos** interagem frequentemente.

**Exemplo de Oposição:**

| Herói        | Ethics       | Resource         | Mind          | Affect       |
| ------------ | ------------ | ---------------- | ------------- | ------------ |
| **Paladino** | 0.9 (santo)  | 0.1 (desapegado) | 0.5           | 0.8 (alegre) |
| **Ladino**   | 0.1 (amoral) | 0.9 (ganancioso) | 0.7 (esperto) | 0.2 (cínico) |

**Cálculo de Incompatibilidade:**

```typescript
const diff =
  abs(heroA.ethics - heroB.ethics) +
  abs(heroA.resource - heroB.resource) +
  abs(heroA.affect - heroB.affect);

if (diff > 2.0) {
  // Personalidades incompatíveis!
  startPersonalityConflict(heroA, heroB);
}
```

**Consequências:**

- Affinity começa em -20 (naturalmente não se dão bem)
- Diálogos constantes de discussão
- Nunca formam grupo juntos (sistema evita)
- Se forçados a lutar juntos: -5 Affinity/dia

**Exemplo:**

```
Sir Kaelen (Ética: 0.9, honrado)
vs
Lila Rogue (Ética: 0.1, amoral)

[Diálogo automático - Dia 10]:
Kaelen: "Lila, saquear os mortos é DESONROSO!"
Lila: "Honra não paga contas, paladino."

[Resultado]:
Affinity permanece negativo a partida inteira.
Eles só cooperam se FORÇADOS pelo jogador via carta.
```

---

### 5. Vingança por Morte de Amigo

**Gatilho:** Herói A morre, Herói B tinha Affinity +70+ com A, e B culpa Herói C pela morte.

**Lógica de Culpa:**

```typescript
if (heroA.died) {
  const lastAttacker = heroA.lastDamagedBy;
  const friendsOfA = heroes.filter((h) => h.affinity[heroA.id] > 70);

  friendsOfA.forEach((friend) => {
    friend.target = lastAttacker; // Marca para vingança
    friend.mood = "FURIOSO";
    friend.dialogue = `${lastAttacker.name} MATOU meu amigo! 
                       Vou vingar ${heroA.name}!`;
  });
}
```

**Consequências:**

- Herói B busca ativamente matar C
- Ignora outras missões (focus 100% em vingança)
- Se C é outro herói: PvP inevitável
- Se C é monstro: Hunt obsessivo até matar

**Exemplo:**

```
[Dia 42]
Gandalf (Mago) morre para Ogro Rei "Grog"

Kaelen (Affinity com Gandalf: +85 - melhores amigos)

[Sistema ativa Vingança]:
Kaelen.target = "Ogro Rei Grog"
Kaelen.dialogue = "GROG MATOU GANDALF! ELE VAI PAGAR!"

[Comportamento de Kaelen]:
- Para de aceitar outras missões
- Vai direto para covil do Ogro Rei
- Luta até matar Grog ou morrer tentando
- Se vingar: +50 XP bônus, título "Vingador"
- Se morrer: Grupo trágico (ambos mortos)

[Carta para o Majesty]:
"Majestade, não me peça para parar.
Gandalf era como um irmão.
Grog vai morrer. Por minha mão ou pelo céu."
```

---

### Frequência e Balanceamento

Para evitar **fadiga narrativa**, o sistema controla frequência:

| Tipo de Conflito       | Cooldown    | Máximo/Partida        |
| ---------------------- | ----------- | --------------------- |
| Covardia               | 30 min      | 3 eventos             |
| Negligência Tática     | 20 min      | 5 eventos             |
| Ciúmes                 | Passivo     | 1 por par de heróis   |
| Conflito Personalidade | Passivo     | 1-2 pares             |
| Vingança               | 1 por morte | Quantas mortes houver |

**Prioridade de Narrativa (IA decide qual contar):**

1. **Vingança** (mais dramático) - sempre mostrado
2. **Covardia** (raro e grave) - destaque

3. **Ciúmes** (sutil, background)
4. **Conflito P.E.C.M.A.** (passivo, constante)

---

### Exemplo de Cadeia de Conflitos (Cascata Dramática)

```
[Dia 52] Lila insulta Kaelen (conflito de personalidade)
         Affinity: +30 → +10

[Dia 55] Kaelen envia carta hostil
         Affinity: +10 → -5

[Dia 58] Lila e Kaelen lutam PvP (iniciado por Kaelen)
         Kaelen vence, Lila HP 2%

[Dia 59] Gandalf (amigo de Lila, Affinity +80) vê a luta
         Gandalf vs Kaelen (Vingança)

[Dia 60] Majesty intervém via carta:
         "PAREM TODOS! Foco nos monstros!"

[Resultado]:
- Kaelen se acalma (Lealdade 70%)
- Lila perdoa parcialmente
- Gandalf ainda desconfia de Kaelen
- Affinity final: Kaelen ↔ Lila = -10 (rivais permanentes)
```

---
