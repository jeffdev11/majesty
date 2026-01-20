# 4. OS HERÓIS: AGENTES AUTÔNOMOS

## 4.1 Estrutura de Dados de um Herói

Cada herói é uma entidade complexa com múltiplas camadas de dados.

### Schema Completo

```typescript
interface Hero {
  // Identificação
  id: string;
  name: string;
  class: HeroClass; // WARRIOR, MAGE, ARCHER, ROGUE, DRUID, ELF, PALADIN, NECROMANCER, BARD, MONK

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

  // Personalidade (P.E.C.M.A.)
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

## 4.2 Sistema P.E.C.M.A.: Os 5 Vetores de Personalidade

O sistema **P.E.C.M.A.** define a essência psicológica de cada herói através de 5 vetores flutuantes (0.0 a 1.0).

**Acrônimo:**

- **P** - Proactivity (Proatividade)
- **E** - Ethics (Ética)
- **C** - Cooperation (Cooperação)
- **M** - Mind (Intelecto)
- **A** - Affect (Temperamento)

### Tabela de Referência P.E.C.M.A.

| Vetor | Nome                           | 0.0 (Baixo)                                           | 1.0 (Alto)                                                           | Impacto no Gameplay                             |
| ----- | ------------------------------ | ----------------------------------------------------- | -------------------------------------------------------------------- | ----------------------------------------------- |
| **P** | **Proactivity (Proatividade)** | **Reativo:** Espera ordens, patrulha próximo da vila. | **Proativo:** Busca monstros ativamente, explora sozinho.            | Define iniciativa e raio de ação autônoma       |
| **E** | **Ethics (Ética)**             | **Pragmático:** Fim justifica meios, rouba, trai.     | **Honrado:** Segue código de conduta, leal, justo.                   | Define comportamento moral e social             |
| **C** | **Cooperation (Cooperação)**   | **Lobo Solitário:** Prefere agir sozinho, não ajuda.  | **Espírito de Equipe:** Forma grupos, compartilha, ajuda.            | Define trabalho em equipe vs individualismo     |
| **M** | **Mind (Intelecto)**           | **Impulsivo:** Ataca primeiro alvo, não usa itens.    | **Estratégico:** Prioriza alvos, usa itens, recua quando necessário. | Define tomada de decisão tática                 |
| **A** | **Affect (Temperamento)**      | **Volátil:** Humor muda facilmente, imprevisível.     | **Estável:** Mantém calma, consistente, confiável.                   | Define volatilidade emocional e previsibilidade |

---

### Buffs/Debuffs de Valores Extremos

Quando um herói atinge valores **extremos** (≤0.1 ou ≥0.9) em qualquer vetor, ganha buffs ou debuffs permanentes:

#### **P - Proactivity Extrema**

| Valor    | Título                  | Buffs                                                                                                                                     | Debuffs                                                                                |
| -------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| **≤0.1** | 🛡️ **Guarda Leal**      | +20% Defense quando a menos de 100m da vila<br>Obedece cartas instantaneamente (0s delay)<br>+15% vigilância (detecta inimigos +2s antes) | Nunca explora além de 150m da vila<br>-30% XP de exploração<br>Recusa missões de scout |
| **≥0.9** | ⚡ **Desbravador Nato** | +30% Velocidade de Ação<br>Descobre áreas ocultas 50% mais rápido<br>+25% XP de exploração                                           | Pode ignorar cartas (30% chance)<br>-20% Defense (imprudente)<br>Risco de morte +15%   |

#### **E - Ethics Extrema**

| Valor    | Título                | Buffs                                                                                             | Debuffs                                                                                                    |
| -------- | --------------------- | ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| **≤0.1** | 😈 **Sem Escrúpulos** | +30% ouro de saques<br>Pode roubar de aliados<br>+20% dano quando ataca pelas costas              | Affinity natural com todos: -20<br>50% chance de trair por 1000g<br>Moral do reino -5 enquanto vivo        |
| **≥0.9** | 😇 **Alma Pura**      | +20% Affinity natural com todos<br>Moral do reino +10 enquanto vivo<br>Imune a corrupção/subornos | Nunca rouba kills (perde XP)<br>Divide todo loot (ganha 60% em vez de 100%)<br>Pode recusar ordens imorais |

#### **C - Cooperation Extrema**

| Valor    | Título               | Buffs                                                                                                           | Debuffs                                                                                          |
| -------- | -------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| **≤0.1** | 🐺 **Lobo Alfa**     | +40% stats quando lutando sozinho<br>Não sofre penalidade por estar sozinho<br>+20% velocidade quando sem grupo | -50% XP quando em grupo<br>Nunca compartilha recursos<br>Affinity máxima com qualquer herói: +30 |
| **≥0.9** | 🤝 **Líder Natural** | +25% stats para aliados próximos (10m)<br>Grupos formam 2x mais rápido<br>Compartilha buffs com o time          | -30% stats quando sozinho<br>Recusa lutar sem grupo (foge)<br>Dá itens valiosos para aliados     |

#### **M - Mind Extremo**

| Valor    | Título                 | Buffs                                                                                             | Debuffs                                                                                               |
| -------- | ---------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **≤0.1** | 💢 **Fúria Cega**      | +40% Attack<br>Imune a medo<br>Nunca foge (luta até morte)                                        | Sempre ataca o mais próximo<br>Nunca usa itens/poções<br>Cai em todas as armadilhas                   |
| **≥0.9** | 🧠 **Mente Brilhante** | +35% XP ganho<br>Aprende skills 2x mais rápido<br>Calcula vitória 100% certo (foge se odds < 40%) | Demora 2x mais para tomar decisões<br>Pode "overthink" e perder oportunidades<br>-10% Attack (hesita) |

#### **A - Affect Extremo**

| Valor    | Título            | Buffs                                                                                                    | Debuffs                                                                                          |
| -------- | ----------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| **≤0.1** | 🌪️ **Caos Vivo**  | Stats aleatórios a cada combate (±40%)<br>Pode ter momentos de genialidade<br>Imprevisível para inimigos | Affinity muda aleatoriamente (±20/dia)<br>Pode atacar aliados se provocado<br>Impossível confiar |
| **≥0.9** | 🗿 **Inabalável** | Imune a todos estados emocionais<br>100% consistente e confiável<br>+20% Defense (calma sob pressão)     | Sem bônus de motivação<br>Não reage a mortes de aliados<br>-15% moral do grupo (parece frio)     |

### Detalhamento dos Vetores com Exemplos

#### **P - Proactivity (Proatividade): 0.0 a 1.0**

**O que representa:** O quanto o herói busca ativamente desafios vs aguarda instruções.

**Comportamentos por faixa:**

| Valor       | Comportamento        | Exemplo Prático                                                     |
| ----------- | -------------------- | ------------------------------------------------------------------- |
| **0.0-0.2** | Extremamente reativo | Só sai da vila se receber carta direta. Patrulha em raio de 50m.    |
| **0.3-0.4** | Cauteloso            | Explora apenas áreas seguras (já reveladas). Evita névoa de guerra. |
| **0.5-0.6** | Equilibrado          | Explora quando não há ameaças próximas. Balanceia segurança e ação. |
| **0.7-0.8** | Aventureiro          | Busca ativamente monstros. Entra em névoa de guerra.                |
| **0.9-1.0** | Temerário            | Vai direto para bosses sozinho. Ignora avisos de perigo.            |

**Exemplos em gameplay:**

- **Baixa (0.2):** Herói fica na vila esperando monstros virem até ele. Jogador precisa enviar cartas para fazê-lo explorar.
- **Alta (0.9):** Herói descobre boss sozinho, inicia combate sem backup, pode morrer mas ganha muita informação.

**Interação com cartas:**

- Proatividade baixa: Obedece cartas instantaneamente
- Proatividade alta: Pode ignorar cartas se encontrar "oportunidade melhor"

---

#### **E - Ethics (Ética): 0.0 a 1.0**

**O que representa:** Código moral do herói. O quanto valoriza honra, lealdade e justiça.

**Comportamentos por faixa:**

| Valor       | Arquétipo        | Comportamentos                                            |
| ----------- | ---------------- | --------------------------------------------------------- |
| **0.0-0.2** | **Maquiavélico** | Trai aliados por ouro. Aceita subornos. Abandona feridos. |
| **0.3-0.4** | **Pragmático**   | Rouba kills se conveniente. Mente se necessário.          |
| **0.5-0.6** | **Neutro**       | Segue regras quando observado. Ajuda se não custar muito. |
| **0.7-0.8** | **Honrado**      | Divide loot igualmente. Cumpre promessas. Leal ao reino.  |
| **0.9-1.0** | **Paladino**     | Sacrifica-se por aliados. Recusa subornos. Nunca mente.   |

**Exemplos Detalhados em Gameplay:**

**Situação 1: Kill Stealing**

- Ethics 0.2: Rouba kill ativamente, sem remorso
- Ethics 0.5: Rouba se ninguém estiver olhando
- Ethics 0.8: Deixa o kill para quem iniciou o combate

**Situação 2: Aliado Caído (HP < 20%)**

- Ethics 0.2: Foge e salva-se, deixa aliado morrer
- Ethics 0.5: Ajuda se não houver muito risco
- Ethics 0.8: Usa poção em aliado mesmo se for a última

**Situação 3: Corrupção (NPC oferece 500g para trair)**

- Ethics 0.2: Aceita imediatamente
- Ethics 0.5: Considera seriamente, pode aceitar
- Ethics 0.8: Recusa e reporta ao Majesty

**Situação 4: Loot Lendário**

- Ethics 0.2: Pega tudo, não compartilha
- Ethics 0.5: Divide com quem ajudou
- Ethics 0.8: Oferece ao aliado que precisa mais

**Situação 5: Ordem vs Moral**

- Ethics 0.2: Obedece qualquer ordem sem questionar
- Ethics 0.5: Questiona ordens claramente erradas
- Ethics 0.8: Desobedece ordens imorais, aceita punição

---

#### **R - Cooperation (Cooperação): 0.0 a 1.0**

**O que representa:** Preferência por trabalho em equipe vs ação solo.

**Comportamentos por faixa:**

| Valor       | Arquétipo          | Comportamentos                                                 |
| ----------- | ------------------ | -------------------------------------------------------------- |
| **0.0-0.2** | **Lobo Solitário** | Nunca forma grupos. Recusa ajuda. Trabalha sozinho.            |
| **0.3-0.4** | **Independente**   | Forma grupo raramente. Prefere solo mas aceita companhia.      |
| **0.5-0.6** | **Flexível**       | Forma grupo se vantajoso. Balanceia solo e equipe.             |
| **0.7-0.8** | **Sociável**       | Prefere grupos. Compartilha recursos. Ajuda ativamente.        |
| **0.9-1.0** | **Altruísta**      | Sempre busca formar grupos. Sacrifica ganho pessoal pelo time. |

**Exemplos em Gameplay:**

**Formação de Grupos:**

- Cooperation 0.2: Recusa formar grupo, mesmo com alta Affinity
- Cooperation 0.5: Forma grupo com 2-3 heróis de confiança
- Cooperation 0.9: Forma grupos grandes, convida todos

**Compartilhamento de Recursos:**

- Cooperation 0.2: Usa todas poções em si mesmo
- Cooperation 0.5: Compartilha se sobrar
- Cooperation 0.9: Dá poção para aliado mesmo se precisar

**Combate em Grupo:**

- Cooperation 0.2: Luta próximo mas não coordena
- Cooperation 0.5: Foca mesmo alvo que o grupo
- Cooperation 0.9: Protege aliados fracos, tanking para o time

**Salvamento (Aliado morrendo):**

- Cooperation 0.2: Ignora, continua lutando
- Cooperation 0.5: Salva se for amigo próximo
- Cooperation 0.9: Interrompe tudo para salvar qualquer aliado

**XP e Loot em Grupo:**

- Cooperation 0.2: Tenta pegar tudo, maximiza ganho pessoal
- Cooperation 0.5: Divide igualmente
- Cooperation 0.9: Dá prioridade aos mais fracos

---

#### **M - Mind (Intelecto): 0.0 a 1.0**

**O que representa:** Capacidade tática, estratégia e uso de recursos.

**Comportamentos por faixa:**

| Valor       | Arquétipo               | Comportamentos                                                   |
| ----------- | ----------------------- | ---------------------------------------------------------------- |
| **0.0-0.2** | **Berserker**           | Ataca primeiro que vê. Nunca foge. Não usa itens.                |
| **0.3-0.4** | **Impulsivo**           | Decisões rápidas. Pouca análise. Uso básico de itens.            |
| **0.5-0.6** | **Competente**          | Avalia ameaças. Foge quando HP baixo. Usa itens principais.      |
| **0.7-0.8** | **Tático**              | Prioriza alvos. Usa terreno. Otimiza uso de recursos.            |
| **0.9-1.0** | **Mestre Estrategista** | Planeja 3 passos à frente. Explora fraquezas. Máxima eficiência. |

**Exemplos em Gameplay:**

**Seleção de Alvo:**

- Mind 0.2: Ataca o mais próximo sempre
- Mind 0.5: Prioriza alvos mais fracos
- Mind 0.9: Foca healers/magos primeiro, ignora tanks

**Uso de Itens/Poções:**

- Mind 0.2: Nunca usa ou usa aleatoriamente
- Mind 0.5: Usa poção quando HP < 30%
- Mind 0.9: Usa poção preventivamente antes de boss, otimiza cooldowns

**Decisão de Fuga:**

- Mind 0.2: Nunca foge (morre sempre que perder)
- Mind 0.5: Foge quando HP < 20%
- Mind 0.9: Foge quando calcula que não pode vencer (mesmo com HP alto)

**Análise de Ameaças:**

- Mind 0.2: Ataca qualquer coisa
- Mind 0.5: Evita inimigos muito superiores
- Mind 0.9: Calcula odds, evita lutas desfavoráveis, atrai para emboscadas

**Exploração:**

- Mind 0.2: Caminha aleatoriamente
- Mind 0.5: Explora sistematicamente
- Mind 0.9: Mapeia eficientemente, evita backtracking

---

#### **A - Affect (Temperamento): 0.0 a 1.0**

**O que representa:** Estabilidade emocional. Volatilidade vs consistência.

**Comportamentos por faixa:**

| Valor       | Arquétipo       | Comportamentos                                     |
| ----------- | --------------- | -------------------------------------------------- |
| **0.0-0.2** | **Caótico**     | Humor muda a cada evento. Totalmente imprevisível. |
| **0.3-0.4** | **Volátil**     | Reage fortemente a eventos. Influenciável.         |
| **0.5-0.6** | **Normal**      | Reações proporcionais. Recupera-se com tempo.      |
| **0.7-0.8** | **Equilibrado** | Difícil abalar. Mantém foco sob pressão.           |
| **0.9-1.0** | **Estoico**     | Imperturbável. Zero volatilidade. Máquina.         |

**Exemplos em Gameplay:**

**Reação a Morte de Aliado:**

- Affect 0.2: Entra em pânico, foge ou ataca furiosamente boss (alterna)
- Affect 0.5: Fica triste (-10% stats por 5min)
- Affect 0.9: Continua focado, sem mudança de comportamento

**Reação a Loot Lendário:**

- Affect 0.2: Fica eufórico, stats temporários aleatórios
- Affect 0.5: Fica feliz (+5% stats por 2min)
- Affect 0.9: Sem reação especial

**Reação a Insultos (de outros heróis):**

- Affect 0.2: Pode iniciar PvP imediatamente
- Affect 0.5: Affinity diminui, mas sem violência
- Affect 0.9: Ignora completamente

**Efeito de Estados (DRUNK, SCARED, etc):**

- Affect 0.2: Estados duram +100% e têm efeito dobrado
- Affect 0.5: Duração normal
- Affect 0.9: Estados duram -50% e efeito reduzido

**Consistência de Comportamento:**

- Affect 0.2: Hoje ajuda aliados, amanhã os abandona (mood swings)
- Affect 0.5: Comportamento previsível na maioria das vezes
- Affect 0.9: 100% consistente, pode-se sempre contar com ele

---

### Traits Pré-Estabelecidas por Classe

Cada classe tem **tendências** (não valores fixos, mas ranges estreitos) que definem sua identidade:

#### 🗡️ **Guerreiro**

```typescript
personality: {
  proactivity: random(0.6, 0.9),   // Busca ativamente combate
  ethics: random(0.5, 0.8),        // Tende a ser honrado
  cooperation: random(0.6, 0.9),   // Espírito de equipe alto
  mind: random(0.3, 0.6),          // Força bruta > estratégia
  affect: random(0.6, 0.9)         // Estável sob pressão
}
```

**Personalidade típica:** Proativo, honrado, trabalha bem em equipe, direto nas decisões, emocionalmente estável.

---

#### 🔮 **Mago**

```typescript
personality: {
  proactivity: random(0.3, 0.6),   // Mais cauteloso
  ethics: random(0.4, 0.7),        // Neutro a honrado
  cooperation: random(0.4, 0.7),   // Pode ser solitário
  mind: random(0.7, 1.0),          // Extremamente inteligente
  affect: random(0.5, 0.8)         // Relativamente estável
}
```

**Personalidade típica:** Cauteloso, pensa antes de agir, pode ser solitário, extremamente tático, emocionalmente controlado.

---

#### 🏹 **Arqueiro**

```typescript
personality: {
  proactivity: random(0.5, 0.8),   // Explorador nato
  ethics: random(0.5, 0.8),        // Tende a ser honrado
  cooperation: random(0.3, 0.6),   // Independente
  mind: random(0.6, 0.9),          // Muito inteligente
  affect: random(0.6, 0.9)         // Bastante estável
}
```

**Personalidade típica:** Explorador, honrado, independente mas não anti-social, inteligente, calmo.

---

#### 🗝️ **Ladino**

```typescript
personality: {
  proactivity: random(0.7, 1.0),   // Muito proativo
  ethics: random(0.1, 0.4),        // Baixa ética
  cooperation: random(0.2, 0.5),   // Lobo solitário
  mind: random(0.6, 0.9),          // Astuto
  affect: random(0.3, 0.7)         // Volátil
}
```

**Personalidade típica:** Extremamente proativo, sem escrúpulos, trabalha sozinho, muito astuto, temperamento volátil.

---

#### 🌿 **Druida**

```typescript
personality: {
  proactivity: random(0.4, 0.7),   // Moderado
  ethics: random(0.7, 1.0),        // Muito ético
  cooperation: random(0.7, 1.0),   // Espírito de equipe altíssimo
  mind: random(0.5, 0.8),          // Sábio
  affect: random(0.7, 1.0)         // Muito estável (conexão com natureza)
}
```

**Personalidade típica:** Equilibrado, altamente ético, altruísta, sábio, emocionalmente estável.

---

#### 🏹 **Elfo**

```typescript
personality: {
  proactivity: random(0.5, 0.8),   // Explorador
  ethics: random(0.6, 0.9),        // Honrado
  cooperation: random(0.5, 0.8),   // Trabalha bem em grupo
  mind: random(0.7, 1.0),          // Muito inteligente
  affect: random(0.7, 1.0)         // Extremamente estável (longevidade)
}
```

**Personalidade típica:** Explorador, honrado, sociável, extremamente inteligente, inabalável emocionalmente.

---

#### 🛡️ **Paladino**

```typescript
personality: {
  proactivity: random(0.6, 0.8),   // Proativo mas não temerário
  ethics: random(0.8, 1.0),        // EXTREMAMENTE ético
  cooperation: random(0.7, 1.0),   // Altruísta
  mind: random(0.4, 0.7),          // Moderado
  affect: random(0.7, 0.9)         // Estável (fé inabalável)
}
```

**Personalidade típica:** Extremamente honrado, autossacrificante, protetor, fé inabalável, inspira aliados.

---

#### 💀 **Necromante**

```typescript
personality: {
  proactivity: random(0.5, 0.8),   // Explora para encontrar cadáveres
  ethics: random(0.1, 0.3),        // MUITO baixa (usa mortos)
  cooperation: random(0.2, 0.5),   // Lobo solitário
  mind: random(0.7, 1.0),          // Extremamente inteligente
  affect: random(0.4, 0.7)         // Moderado a estável
}
```

**Personalidade típica:** Pragmático, sombrio, solitário, extremamente inteligente, sem escrúpulos morais.

---

#### 🎵 **Bardo**

```typescript
personality: {
  proactivity: random(0.4, 0.7),   // Moderado
  ethics: random(0.6, 0.9),        // Honrado
  cooperation: random(0.8, 1.0),   // EXTREMAMENTE cooperativo
  mind: random(0.5, 0.8),          // Inteligente
  affect: random(0.7, 1.0)         // Muito estável (otimista)
}
```

**Personalidade típica:** Extremamente social, otimista, carismático, forma grupos grandes, inspira através de música.

---

#### 👊 **Monge**

```typescript
personality: {
  proactivity: random(0.5, 0.8),   // Equil ibrado
  ethics: random(0.6, 0.9),        // Honrado (código de honra)
  cooperation: random(0.4, 0.7),   // Neutro (independente mas não anti-social)
  mind: random(0.6, 0.9),          // Muito inteligente (disciplina)
  affect: random(0.8, 1.0)         // EXTREMAMENTE estável (meditação)
}
```

**Personalidade típica:** Disciplinado, calmo, medita frequentemente, segue código de honra, mestre em autocontrole.

---

### Escola Estoica: Treinamento de Personalidade

**Novo Edifício:** 🏛️ **Escola Estoica**

A Escola Estoica permite ao Majesty **moldar a personalidade** dos heróis através de treinamento filosófico.

#### Custo de Construção

| Nível       | Custo | Tempo de Construção | Benefício                                            |
| ----------- | ----- | ------------------- | ---------------------------------------------------- |
| **Nível 1** | 800g  | 120s                | Permite treinar 1 trait por vez                      |
| **Nível 2** | 1500g | 180s                | Permite treinar 2 traits simultaneamente             |
| **Nível 3** | 2500g | 240s                | Permite treinar 3 traits + -20% custo de treinamento |

#### Sistema de Treinamento

**Como funciona:**

1. Majesty seleciona um herói
2. Escolhe qual trait melhorar (P, E, C, M ou A)
3. Paga o custo em ouro
4. Herói entra em "Treinamento" por um período
5. Trait aumenta +0.05 a +0.15 (aleatório, baseado no nível do herói)

**Tabela de Custos:**

| Trait Atual               | Custo Base | Tempo | Aumento       |
| ------------------------- | ---------- | ----- | ------------- |
| **0.0-0.3** (Muito Baixo) | 200g       | 60s   | +0.10 a +0.15 |
| **0.4-0.6** (Médio)       | 400g       | 90s   | +0.08 a +0.12 |
| **0.7-0.8** (Alto)        | 800g       | 120s  | +0.05 a +0.10 |
| **0.9+** (Extremo)        | **1500g**  | 180s  | +0.02 a +0.05 |

**Modificadores de Custo:**

- **Herói Nível Alto:** +50g por nível acima de 5
- **Trait Oposta à Classe:** +100% custo (ex: treinar Mind alto em Guerreiro)
- **Trait Natural da Classe:** -30% custo (ex: treinar Cooperation em Guerreiro)
- **Escola Nível 3:** -20% em todos os custos

#### Exemplos Práticos

**Exemplo 1: Ladino Ético**

- Herói: Lila (Ladino Level 6)
- Trait Atual: Ethics 0.2 (Sem Escrúpulos)
- Objetivo: Aumentar para evitar traições
- Custo: 200g (base) + 50g (nível 6) + 200g (oposta à classe) = **450g**
- Tempo: 60s
- Resultado: Ethics 0.2 → 0.33 (+0.13)

**Exemplo 2: Guerreiro Tático**

- Herói: Kaelen (Guerreiro Level 8)
- Trait Atual: Mind 0.4 (Impulsivo)
- Objetivo: Torná-lo mais estratégico
- Custo: 400g (base) + 150g (nível 8) + 400g (oposta à classe) = **950g**
- Tempo: 90s
- Resultado: Mind 0.4 → 0.51 (+0.11)

**Exemplo 3: Druida Líder**

- Herói: Yara (Druida Level 5)
- Trait Atual: Cooperation 0.7 (Sociável)
- Objetivo: Torná-la Líder Natural (≥0.9)
- Custo: 800g (base) - 240g (natural da classe, -30%) = **560g**
- Tempo: 120s
- Resultado: Cooperation 0.7 → 0.78 (+0.08)
- **Precisa de mais 2 treinamentos para atingir 0.9**

#### Limitações e Regras

**Regras importantes:**

1. **Sem Diminuir Traits:** Só é possível aumentar, nunca diminuir
2. **Cooldown por Herói:** Cada herói só pode treinar 1x a cada 5 minutos
3. **Máximo por Trait:** Não pode ultrapassar 1.0
4. **Herói Indisponível:** Durante treinamento, herói não pode sair da vila
5. **Cancelamento:** Se cancelado, perde 50% do ouro pago

**Estratégias:**

- **Min-Maxing:** Treinar traits já altas para atingir valores extremos (buffs)
- **Balanceamento:** Corrigir fraquezas de heróis problemáticos
- **Especialização:** Levar traits baixas ao extremo (debuffs podem valer a pena)

#### Interface no F2 (ADMIN)

**Novo painel na Escola Estoica:**

```
+-----------------------------------------------------------+
|        🏛️ ESCOLA ESTOICA - TREINAMENTO FILOSÓFICO         |
+-----------------------------------------------------------+
| HERÓI: Sir Kaelen (Guerreiro Lvl 8)                      |
|                                                           |
| [P] Proactivity:   [████████░░] 0.82  | Treinar (700g)   |
| [E] Ethics:        [██████░░░░] 0.65  | Treinar (450g)   |
| [C] Cooperation:   [████████░░] 0.78  | Treinar (600g)   |
| [M] Mind:          [████░░░░░░] 0.41  | Treinar (950g) ⚠️|
| [A] Affect:        [███████░░░] 0.71  | Treinar (550g)   |
|                                                           |
| ⚠️ = Trait oposta à classe (custo dobrado)                |
| 💰 SALDO: 1,200g                                          |
+-----------------------------------------------------------+
| [TAB] Trocar Herói | [ENTER] Confirmar | [ESC] Cancelar  |
+-----------------------------------------------------------+
```

#### Log de Exemplo

```
[10:23] 🏛️ TRAIN [Escola Estoica] Sir Kaelen iniciou treinamento de Mind.
[10:23] 💰 ECO [Escola] -950g (Treinamento de Mind)
[12:53] 🏛️ TRAIN [Escola Estoica] Sir Kaelen completou treinamento!
[12:53] 📈 GROWTH [Kaelen] Mind 0.41 → 0.52 (+0.11)
```

#### Impacto Estratégico

**Quando usar a Escola Estoica:**

✅ **Heróis problemáticos:** Ladino com Ethics 0.1 está traindo? Treine até 0.4
✅ **Especialização:** Quer um "Líder Natural"? Treine Cooperation até ≥0.9
✅ **Corrigir RNG:** Herói nasceu com Mind 0.2? Invista para torná-lo útil
✅ **Endgame:** Com ouro sobrando, crie heróis "perfeitos"

❌ **Quando NÃO usar:**

- Início do jogo (ouro é escasso)
- Heróis que vão morrer em breve
- Traits já próximas do ideal

**Trade-off:** Ouro gasto em treinamento = ouro não gasto em equipamento/skills

---

## 4.3 Camadas de Modificação: Estados e Peculiaridades

A personalidade base é **modulada** por estados temporários e peculiaridades permanentes.

### Estados Temporários (Buffs/Debuffs Psicológicos)

| Estado            | Duração   | Efeito                                                |
| ----------------- | --------- | ----------------------------------------------------- |
| **DRUNK**         | 5 min     | Proactivity +0.3, Mind -0.5 (Corajoso mas burro)      |
| **HUNGRY**        | Até comer | Cooperation -0.2, Speed -10% (Egoísta quando faminto) |
| **INSPIRED**      | 2 min     | Todos vetores +0.1                                    |
| **SCARED**        | 1 min     | Proactivity -0.4, Flee Threshold +30%                 |
| **GREEDY_FRENZY** | 30s       | Cooperation -0.5 (Vê loot lendário, ignora aliados)   |

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
- **Viés P.E.C.M.A.:** Proactivity ↑, Cooperation ↑, Mind ↓
- **Comportamento:** Busca combate ativamente, trabalha em equipe, decisões diretas

#### 🔮 Mago (Mage)

- **Identidade:** DPS de longo alcance, controle de área
- **Stats Base:** HP Baixo, Mana Alto, Ataque Mágico Alto
- **Viés P.E.C.M.A.:** Mind ↑↑, Proactivity ↓
- **Comportamento:** Extremamente tático, cauteloso, pode ser solitário

#### 🏹 Arqueiro (Archer)

- **Identidade:** DPS consistente, mobilidade
- **Stats Base:** HP Médio, Velocidade Alta, Ataque Físico Médio
- **Viés P.E.C.M.A.:** Mind ↑, Affect ↑, Cooperation ↓
- **Comportamento:** Inteligente, explorador, independente mas estável

#### 🗝️ Ladino (Rogue)

- **Identidade:** Burst damage, saque, evasão
- **Stats Base:** HP Baixo, Velocidade Muito Alta, Crit Alto
- **Viés P.E.C.M.A.:** Proactivity ↑↑, Ethics ↓, Cooperation ↓, Affect ↓
- **Comportamento:** Muito proativo, sem escrúpulos, lobo solitário, volátil

#### 🌿 Druida (Druid)

- **Identidade:** Suporte/Metamorfo, cura e transformação
- **Stats Base:** HP Médio, Mana Médio, Versatilidade Alta
- **Viés P.E.C.M.A.:** Ethics ↑↑, Cooperation ↑↑, Affect ↑
- **Comportamento:** Altamente ético, altruísta, extremamente estável

#### 🏹 Elfo (Elf)

- **Identidade:** Híbrido mágico/físico, suporte ágil
- **Stats Base:** HP Médio-Baixo, Mana Alto, Velocidade Alta
- **Viés P.E.C.M.A.:** Mind ↑↑, Affect ↑↑
- **Comportamento:** Extremamente inteligente e emocionalmente estável

#### 🛡️ Paladino (Paladin)

- **Identidade:** Tank/Healer sagrado, defensor dos fracos
- **Stats Base:** HP Muito Alto, Mana Médio, Defesa Muito Alta
- **Viés P.E.C.M.A.:** Ethics ↑↑↑, Cooperation ↑↑, Proactivity ↑
- **Comportamento:** Extremamente honrado, protege aliados, autossacrifica-se
- **Mecânica Única:** **Aura Sagrada** - Buffa aliados em 12m (+15% Defense)
- **Recurso Especial:** **Devoção** (acumula ao proteger aliados, gasta em heals)

#### 💀 Necromante (Necromancer)

- **Identidade:** Invocador de mortos-vivos, DPS sombrio
- **Stats Base:** HP Baixo, Mana Muito Alto, Invocações
- **Viés P.E.C.M.A.:** Mind ↑↑, Ethics ↓↓, Cooperation ↓
- **Comportamento:** Solitário, pragmático, usa cadáveres como recursos
- **Mecânica Única:** **Reanimar Mortos** - Transforma cadáveres em servos
- **Recurso Especial:** **Essência Sombria** (ganha ao matar, gasta em invocações)

#### 🎵 Bardo (Bard)

- **Identidade:** Suporte musical, buffa aliados com canções
- **Stats Base:** HP Médio, Mana Médio, Velocidade Média
- **Viés P.E.C.M.A.:** Cooperation ↑↑↑, Affect ↑↑, Ethics ↑
- **Comportamento:** Altamente social, forma grupos grandes, sempre otimista
- **Mecânica Única:** **Canções** - Buffs em área que persistem enquanto canta
- **Recurso Especial:** **Inspiração** (ganha ao assistir kills de aliados)

#### 👊 Monge (Monk)

- **Identidade:** DPS corpo-a-corpo sem armas, mobilidade extrema
- **Stats Base:** HP Médio, Velocidade Muito Alta, Critical Alto
- **Viés P.E.C.M.A.:** Mind ↑, Affect ↑↑, Cooperation →
- **Comportamento:** Disciplinado, calmo em combate, medita frequentemente
- **Mecânica Única:** **Combo System** - Ataques encadeados aumentam dano
- **Recurso Especial:** **Mana** (regenera com o tempo, gasta em habilidades)

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

## 4.6 Limitação Estratégica: Máximo de 5 Heróis

**Regra de Ouro:** O jogador pode ter no máximo **5 heróis ativos** simultaneamente.

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
