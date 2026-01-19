# 8. MUNDO PROCEDURAL E CICLOS TEMPORAIS

## 8.1 Névoa de Guerra Pessoal: O Reino Oculto

### O Conceito

O jogador **NÃO** vê tudo. A visão é limitada ao que **heróis e construções** conseguem enxergar.

#### Regras de Visibilidade

```typescript
// Área visível é calculada por:
const visibleNodes = [];

// 1. Todos os heróis revelam um raio ao redor
heroes.forEach((hero) => {
  visibleNodes.push(...getNodesInRadius(hero.position, hero.visionRange));
});

// 2. Torres e construções têm visão estática
buildings.forEach((building) => {
  if (building.type === "WATCHTOWER") {
    visibleNodes.push(...getNodesInRadius(building.position, 50));
  }
});

// 3. Tudo fora disso é "Fog of War"
map.forEach((node) => {
  if (!visibleNodes.includes(node)) {
    node.status = FOG_OF_WAR; // Mostrar "???"
  }
});
```

### Impacto Estratégico

**Cenário:**

```
[F4] WORLD MAP
Mapa mostra:
  [V] Vila (Visível)
  [F] Floresta (Visível - herói patrulhando)
  [?] Caverna (Névoa - nenhum herói lá)
  [?] Montanha (Névoa)

Jogador: /scout cavern
Conselheiro: "Lila foi enviada para explorar. ETA: 2 min."

[2 minutos depois]
Conselheiro: "Caverna revelada! Detectado: Boss Ogro
Rei (Elite). Loot estimado: Alto. Risco: EXTREMO."
```

---

## 8.2 Os 4 Ciclos de 50 Dias: Progressão Temporal

### Estrutura da Partida

Cada partida dura **200 dias** divididos em **4 ciclos** de 50 dias cada.

```
┌─────────────────────────────────────────────┐
│ CICLO 1: "Primavera" (Dias 1-50)           │
│ - Monstros: Tier 1 (Goblins, Lobos)        │
│ - Clima: Ameno, chuvas leves                │
│ - Eventos: Tutoriais, expansão básica      │
│ - Tom: Esperançoso, construção             │
└─────────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────────┐
│ CICLO 2: "Verão Vermelho" (Dias 51-100)    │
│ - Monstros: Tier 2 (Ogros, Trolls)         │
│ - Clima: Calor extremo, tempestades        │
│ - Eventos: Invasões massivas, traições     │
│ - Tom: Conflito intenso, guerras           │
└─────────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────────┐
│ CICLO 3: "Inverno" (Dias 101-150)          │
│ - Monstros: Tier 2-3 (Gigantes, Liches)    │
│ - Clima: Neve, nevasca, gelo               │
│ - Eventos: Fome, primeira Lua de Sangue    │
│ - Tom: Sobrevivência, desespero            │
└─────────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────────┐
│ CICLO 4: "Apocalipse" (Dias 151-200)       │
│ - Monstros: Tier 3 (Dragões, Demônios)     │
│ - Clima: Lua de Sangue, Eclipse            │
│ - Evento Final: Castelo Amaldiçoado        │
│ - Tom: Épico, climático, fim dos tempos    │
└─────────────────────────────────────────────┘
```

---

### CICLO 1: "PRIMAVERA" (Dias 1-50)

#### Clima e Ambiente

**Paleta de Cores:** Verde, azul claro, amarelo sol
**Música:** Acústica, esperançosa, cordas leves
**Descrição:** _"O reino desperta. Flores brotam nas planícies enquanto novos heróis respondem ao chamado."_

#### Características

| Aspecto               | Detalhes                                          |
| --------------------- | ------------------------------------------------- |
| **Temperatura**       | Amena (15-25°C)                                   |
| **Precipitação**      | Chuvas leves (benéficas para fazendas)            |
| **Duração Dia/Noite** | 12min dia / 8min noite (mais seguro)              |
| **Visibilidade**      | Alta (névoa de guerra se dissipa 20% mais rápido) |

#### Monstros Tier 1

| Monstro            | HP      | Attack | Comportamento                |
| ------------------ | ------- | ------ | ---------------------------- |
| **Goblin**         | 50-100  | 10-15  | Covardes, fogem com HP < 30% |
| **Lobo**           | 80-120  | 15-20  | Caçam em matilhas de 3-5     |
| **Aranha Gigante** | 100-150 | 12-18  | Veneno leve, teias           |
| **Bandido**        | 120-180 | 20-25  | Inteligente, rouba ouro      |

#### Eventos Globais Únicos do Ciclo 1

**Eventos Frequentes:**

- ☀️ **Sol Intenso** (A cada 7 dias): +20% Stamina heróis, +10% farm yield
- 🌧️ **Chuva de Primavera** (Aleatório): +30% regeneração de recursos naturais
- 🎭 **Festival da Vila** (Dia 30): +20 Moral global, heróis descansam
- 💰 **Caravana Mercante** (Dias 15, 35): -30% preços na loja

**Eventos Raros:**

- 🏆 **Torneio de Heróis** (Dia 45): Competição amistosa, +XP para vencedor
- 🌈 **Arco-Íris Místico** (5% chance): Spawna baú lendário

#### Progressão Esperada

```
Dia 1-10:   Recrutar 3-5 heróis, construir primeiras guildas
Dia 11-25:  Expandir para 8 heróis, primeiro posto avançado
Dia 26-40:  Conflitos sociais começam (KS, rivalidades)
Dia 41-50:  Preparação para Ciclo 2, upgrades essenciais
```

---

### CICLO 2: "VERÃO VERMELHO" (Dias 51-100)

#### Clima e Ambiente

**Paleta de Cores:** Vermelho, laranja, dourado queimado
**Música:** Percussiva, intensa, cordas dramáticas
**Descrição:** _"O sol escarlate queima a terra. Sangue mancha os campos de batalha."_

#### Características

| Aspecto               | Detalhes                              |
| --------------------- | ------------------------------------- |
| **Temperatura**       | Calor extremo (30-45°C)               |
| **Precipitação**      | Seca + tempestades súbitas            |
| **Duração Dia/Noite** | 10min dia / 10min noite (equilibrado) |
| **Visibilidade**      | Média (poeira/calor distorce visão)   |

#### Monstros Tier 2

| Monstro               | HP          | Attack  | Comportamento                |
| --------------------- | ----------- | ------- | ---------------------------- |
| **Ogro**              | 800-1,200   | 80-150  | Agressivo, destrói edifícios |
| **Troll**             | 1,000-1,500 | 100-180 | Regenera HP, anti-fogo       |
| **Harpy**             | 400-600     | 60-90   | Voa, ataque em grupo         |
| **Elemental de Fogo** | 600-900     | 120-200 | Spawna durante tempestades   |

#### Eventos Globais Únicos do Ciclo 2

**Eventos Frequentes:**

- 🌪️ **Tempestade de Areia** (A cada 5 dias): -50% visibilidade, monstros +30% stats
- 🔥 **Onda de Calor** (Aleatório): Heróis perdem -2 HP/min se não beberem água
- ⚔️ **Invasão Ogro** (Dias 60, 85): 15-25 Ogros atacam capital
- 🌋 **Terremoto** (Dias 70, 95): Abre novas passagens, 5% chance destruir prédio

**Eventos Raros:**

- 💀 **Horda Barbarian** (10% chance): 50 bandidos de elite invadem
- ☄️ **Chuva de Meteoros** (5% chance): Destrói 1-3 edifícios aleatórios, spawna Elementais

#### Progressão Esperada

```
Dia 51-60:  Adaptação ao Tier 2, primeiras mortes de herói
Dia 61-75:  Traições começam, conflitos PvP aumentam
Dia 76-90:  Batalhas épicas, redenções e vinganças
Dia 91-100: Boss intermediário, preparação para Inverno
```

---

### CICLO 3: "INVERNO" (Dias 101-150) **[NOVO]**

#### Clima e Ambiente

**Paleta de Cores:** Branco, azul gélido, cinza
**Música:** Orquestral sombria, coral grave, silêncios tensos
**Descrição:** _"O inverno chegou sem perdão. A fome espreita cada lar. A esperança congela."_

#### Características

| Aspecto               | Detalhes                                |
| --------------------- | --------------------------------------- |
| **Temperatura**       | Congelante (-10 a 5°C)                  |
| **Precipitação**      | Neve constante, nevascas                |
| **Duração Dia/Noite** | 8min dia / 12min noite (noites longas!) |
| **Visibilidade**      | Baixa (neve reduz visão em 40%)         |

#### Monstros Tier 2-3 (Híbrido)

| Monstro             | HP          | Attack  | Comportamento                     |
| ------------------- | ----------- | ------- | --------------------------------- |
| **Lobo de Gelo**    | 1,200-1,800 | 150-220 | Matilhas de 8-12, congelam heróis |
| **Gigante de Gelo** | 3,000-4,500 | 300-450 | Boss menor, destrói postos        |
| **Lich**            | 2,000-3,000 | 200-300 | Ressuscita mortos como zumbis     |
| **Espectro**        | 800-1,200   | 180-250 | Intangível, ataque psíquico       |

#### Efeitos Passivos do Inverno

**FOME:**

- Fazendas produzem -70%
- Custo de comida +200%
- Se heróis ficarem 3 dias sem comer: -50% stats

**FRIO:**

- Heróis perdem -1 HP/min ao ar livre
- Torres consomem lenha para manter aquecidas
- Moral -10 global

**Solução:** Construir "Fogueiras" (100g cada, área 10m aquecida)

#### Eventos Globais Únicos do Ciclo 3

**Eventos Frequentes:**

- ❄️ **Nevasca** (A cada 3 dias): -75% velocidade todos, visibilidade zero
- 🧊 **Rio Congelado** (Dia 110): Abre atalhos no mapa, mas perigoso
- 👻 **Noite dos Mortos** (Dia 120): Heróis mortos reanimam como inimigos
- 🌙 **Primeira Lua de Sangue** (Dia 125): Todos monstros +100% stats, Boss spawna

**Eventos Raros:**

- 🏔️ **Avalanche** (15% chance): Destrói postos em montanhas
- 🧛 **Vampiro Desperta** (Dia 140): Boss vampiro que converte heróis

#### Progressão Esperada

```
Dia 101-115: Choque inicial, fome mata heróis fracos
Dia 116-130: Adaptação, fogueiras e estoques críticos
Dia 131-145: Primeira Lua de Sangue, perdas massivas
Dia 146-150: Sobreviventes se preparam para Apocalipse
```

---

### CICLO 4: "APOCALIPSE" (Dias 151-200)

#### Clima e Ambiente

**Paleta de Cores:** Vermelho sangue, preto, roxo necrótico
**Música:** Coral épico, percussão de guerra, trombetas do fim
**Descrição:** _"O céu sangra. A terra se parte. Os mortos marcham. Este é o fim... ou a redenção?"_

#### Características

| Aspecto               | Detalhes                                     |
| --------------------- | -------------------------------------------- |
| **Temperatura**       | Caótico (-20°C a 40°C aleatório)             |
| **Precipitação**      | Chuva ácida, neve de cinzas                  |
| **Duração Dia/Noite** | 5min dia / 15min noite (quase sempre noite!) |
| **Visibilidade**      | Mínima (lua de sangue permanente)            |

#### Monstros Tier 3 (Apocalípticos)

| Monstro                               | HP            | Attack  | Comportamento                        |
| ------------------------------------- | ------------- | ------- | ------------------------------------ |
| **Dragão**                            | 10,000-15,000 | 500-800 | Voa, queima tudo, ataca Casa Central |
| **Demônio**                           | 5,000-8,000   | 400-600 | Teleporta, corrompre heróis          |
| **Golem de Obsidiana**                | 8,000-12,000  | 600-900 | Invulnerável exceto magia            |
| **Rei Vilão (Her\u00f3i Ca\u00eddo)** | 20,000        | 1,000   | Boss final, ex-herói traidor         |

#### Efeitos Passivos do Apocalipse

**LUA DE SANGUE PERMANENTE:**

- Monstros +100% HP/Attack (sempre ativo)
- Heróis -20% Moral (constante)
- Mortos reanimam automaticamente após 5min

**FENDAS MÁGICAS:**

- Portais spawnam a cada 10min
- Liberam 10-20 monstros elite
- Só fecham se destruídos (5,000 HP cada)

**ECLIPSE ALEATÓRIO:**

- Dia vira noite por 5min
- Mortos-vivos +200% poder **(CRITICAL)**

#### Eventos Globais Únicos do Ciclo 4

**Eventos Garantidos:**

- 💀 **Castelo Amaldiçoado** (Dia 155): Herói morto vira Rei Vilão com exército
- 🐉 **Ataque do Dragão** (Dia 170): Dragão ataca Casa Central diretamente
- 🌙 **Lua de Sangue Dupla** (Dia 185): Monstros +200% (dobro do normal)
- ⚔️ **Batalha Final** (Dia 195-200): Boss final + 3 tenentes + 100 monstros

**Eventos Raros:**

- 🧟 **Praga Zumbi** (20% chance): Todos mortos viram zumbis
- 🔥 **Ragnarok** (5% chance): Mundo começa a se autodestruir

#### Progressão Esperada

```
Dia 151-165: Survival mode, cada dia é uma vitória
Dia 166-180: Redenções heroicas, últimas alianças
Dia 181-195: Preparação para Boss final
Dia 196-200: BATALHA FINAL - Vitória ou Derrota total
```

---

### Comparação dos 4 Ciclos

| Aspecto           | Primavera | Verão    | Inverno   | Apocalipse                   |
| ----------------- | --------- | -------- | --------- | ---------------------------- |
| **Tom**           | Esperança | Conflito | Desespero | Épico                        |
| **Dificuldade**   | ★☆☆☆      | ★★☆☆     | ★★★☆      | ★★★★                         |
| **Moral Médio**   | 80%       | 60%      | 40%       | 20%                          |
| **Taxa de Morte** | 10%       | 30%      | 50%       | 80%                          |
| **Ouro/Dia**      | +500g     | +300g    | +100g     | -200g (gasta mais que ganha) |
| **Eventos/Dia**   | 0.5       | 1.0      | 1.5       | 3.0                          |

---

### Transição Entre Ciclos

**Ao mudar de ciclo, o jogo avisa:**

```
┌────────────────────────────────────────────────┐
│                                                │
│   🌅 FIM DO CICLO 1: PRIMAVERA                 │
│                                                │
│   Dias completados: 50                         │
│   Heróis vivos: 8/10                           │
│   Reino prospera!                              │
│                                                │
│   ⚠️ ATENÇÃO: O VERÃO VERMELHO SE APROXIMA     │
│                                                │
│   Mudanças:                                    │
│   - Monstros Tier 2 (Ogros, Trolls)           │
│   - Tempestades frequentes                    │
│   - Invasões massivas                          │
│                                                │
│   Recomendação do Conselheiro:                 │
│   "Compre upgrades AGORA. Prepare defesas.     │
│    O pior ainda está por vir."                 │
│                                                │
│   [Continuar para Dia 51]                      │
│                                                │
└────────────────────────────────────────────────┘
```

---

## 8.3 Ciclo Dia/Noite: Perigo após o Pôr do Sol

### Mecânica

O mundo tem um **ciclo de 20 minutos** (tempo real):

- **10 minutos:** Dia (seguro)
- **10 minutos:** Noite (perigoso)

### Mudanças Noturnas

#### Monstros Noturnos

| Monstro Diurno | Substituto Noturno | Diferença                |
| -------------- | ------------------ | ------------------------ |
| Goblin         | Goblin Sombrio     | +50% HP, +30% Attack     |
| Lobo           | Lobo Fantasma      | Invisível até atacar     |
| Ogro           | Ogro Berserker     | +100% Damage, -20% Speed |

#### Debuff de Escuridão

Heróis sem **iluminação** sofrem:

- -20% Acurácia (mais misses)
- -10% Velocidade de Movimento
- +30% Chance de Fuga (medo)

**Solução:** Comprar Tochas (50g cada) ou ficar perto de Torres (elas têm luz).

### Exemplo de Log

```
[18:45] 🌙 O sol se pôs. A noite chegou.
[18:46] Lila Rogue: "Está escuro demais... preciso de luz."
[18:47] Gandalf usou Bola de Fogo (ilumina 20m por 5 min).
[18:48] Sir Kaelen retornou à vila (covarde de noite).
```

---

## 8.4 Eventos Globais: O Caos Controlado

### Tipos de Eventos

#### 1. Terremotos

- **Frequência:** 1 a cada 15 dias
- **Efeito:** Abre novas passagens no mapa (ex: caverna bloqueada é revelada)
- **Risco:** 5% chance de destruir edifício aleatório

#### 2. Tempestades

- **Duração:** 5 minutos
- **Efeito:**
  - Magos têm +50% poder (raios)
  - Arqueiros têm -30% acurácia (vento)
  - Torres ficam offline (chuva apaga fogo)

#### 3. Fendas Mágicas

- **Evento Raro:** 5% chance por dia (Ciclo 2+)
- **Efeito:** Portal abre e spawna 10-20 monstros de elite
- **Duração:** 10 minutos (deve ser fechado por mago)

#### 4. Lua de Sangue

- **Frequência:** Dia 100, Dia 125, Dia 150
- **Efeito:**
  - Todos monstros ganham +100% HP/Attack
  - Heróis têm -10 Moral
  - Mortos-vivos spawnam em massa
  - **Boss Global** aparece

---

## 8.5 Boss Global: O Rei Vilão

### O Castelo Amaldiçoado

No **Ciclo 3** (dia 101+), um evento único acontece:

**Evento:** `THE_CURSED_CASTLE`

```
[Dia 105 - 14:30]
[ALERTA CRÍTICO] Um castelo sombrio se materializou
no horizonte. Um herói caído foi corrompido e se
autoproclamou "Rei Vilão". Ele comanda um exército
de mortos-vivos.

Rei Vilão: Gandalf, O Corrompido
Stats: HP 10,000 | Attack 500 | Defense 200
Exército: 50 Esqueletos, 10 Necromantes
```

### Mecânica do Boss Final

**Objetivo:** Derrotar o Rei Vilão antes do **Dia 150** (fim da partida).

**Desafio:**

- Boss está **dentro do castelo** (precisa atravessar hordas)
- Cada herói pode atacar **uma vez** antes de precisar recuar (HP baixo)
- Trabalho em equipe é **obrigatório**

**Vitória:**

```
[Dia 148 - 20:15]
💀 Gandalf, O Corrompido foi derrotado!
Heróis sobreviventes: 7/12
Reino Salvo. Partida Concluída.

Gerando Crônicas do Reino...
```

---

## 8.6 Escalonamento Dinâmico de Dificuldade

### Sistema de Balanceamento

O jogo **ajusta a dificuldade** baseado na performance do jogador.

#### Fórmula

```typescript
const difficultyMultiplier = 1.0 + (avgHeroLevel / 10) - (heroDeaths * 0.05);

// Exemplo:
// Heróis nível médio: 5
// Mortes totais: 3
difficultyMultiplier = 1.0 + (5/10) - (3*0.05) = 1.35

// Todos monstros spawnam com:
monsterHP *= difficultyMultiplier; // +35% HP
monsterAttack *= difficultyMultiplier; // +35% Attack
```

### Feedback Visual

```
P3: ESTADO DO REINO
DIFICULDADE: [||||......] (Média-Alta)
              └─ Monstros 35% mais fortes
```

---

## 8.7 Mapas Procedurais: Cada Partida é Única

### Geração de Mundo

Cada nova partida gera um **mapa hexagonal aleatório** usando **Perlin Noise**.

#### Biomas Disponíveis

| Bioma        | Monstros Comuns       | Recurso     | Clima                |
| ------------ | --------------------- | ----------- | -------------------- |
| **Floresta** | Goblins, Lobos        | Madeira     | Chuva frequente      |
| **Montanha** | Ogros, Gigantes       | Pedra       | Avalanches           |
| **Pântano**  | Mortos-vivos, Aranhas | Ervas raras | Névoa densa          |
| **Deserto**  | Escorpiões, Bandidos  | Ouro        | Tempestades de areia |
| **Vulcão**   | Demônios, Elementais  | Minério     | Erupções             |

### Exemplo de Seed Aleatória

```typescript
const seed = Math.random().toString(36);
// Seed: "a7x9k2"

generateMap(seed) => {
  Vila Central: (0,0)
  Floresta Norte: (0,5)
  Montanha Leste: (5,0)
  Caverna Ogro: (3,3)
  Boss Lair: (10,10) // Sempre longe
}
```

**Resultado:** Cada jogador terá um layout diferente.

---

