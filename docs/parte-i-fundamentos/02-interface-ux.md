# 2. INTERFACE E EXPERIÊNCIA DO USUÁRIO (UI/UX)

## 2.1 O Conceito de Workspaces (TTY)

Inspirado em ferramentas de produtividade como **tmux** e sistemas Linux, o jogo agora opera através de **Workspaces (Áreas de Trabalho)** acessíveis via teclado. Não há menus arrastados; há **comando instantâneo**.

### Os 6 Workspaces

| Tecla    | Nome               | Descrição                                                      |
| -------- | ------------------ | -------------------------------------------------------------- |
| **[F1]** | **OPS CENTER**     | "The War Room" - Monitoramento em tempo real, combate tático   |
| **[F2]** | **ADMIN**          | "The Tycoon" - Gestão econômica, árvores de habilidades        |
| **[F3]** | **LIBRARY**        | "The Armanaves" - Lore, bestiário, análise psicológica         |
| **[F4]** | **WORLD MAP**      | "The Conquest" - Mapa visual com ícones, postos avançados      |
| **[F5]** | **THE AVIARY**     | "Royal Mail" - Sistema de correspondência via corvos           |
| **[F6]** | **THE CHRONICLES** | "The Chronicles" - História sendo gerada, narrativa generativa |

---

## 2.2 Regras Globais de Interação (System-Wide)

### Controles de Navegação

| Ação                         | Teclado (Primário)  | Teclado (Alternativo) | Mouse                   |
| ---------------------------- | ------------------- | --------------------- | ----------------------- |
| **Mudar Workspace**          | `Alt + [1-6]`       | `F1 - F6`             | Clicar na Barra de Abas |
| **Ciclar Painéis**           | `Tab` / `Shift+Tab` | -                     | Clicar dentro do painel |
| **Focar Painel Específico**  | `Ctrl + [1-7]`      | -                     | -                       |
| **Abrir Chat (Conselheiro)** | `/` (Barra)         | -                     | Clicar no Input         |
| **Pausa Tática**             | `Espaço`            | `Pause/Break`         | Clicar no Relógio       |
| **Menu Sistema**             | `Esc`               | `Alt + 0`             | Botão Engrenagem        |

### Princípios de UX

- **Navegação de Foco (Tab):** A tecla Tab cicla o foco ativo entre os Painéis (P1 → P2 → ...). O painel focado ganha um realce de borda (ex: verde neon ou branco brilhante)
- **Comando Rápido (/):** Pressionar `/` foca imediatamente o Input do Conselheiro (P7), independente de onde você esteja
- **Atalhos de Painel (Alt + Num):** Alt+1 foca P1, Alt+2 foca P2, etc.
- **Mouse UX:** Todo elemento listado tem estado `:hover`. O layout é responsivo ao clique, mas otimizado para teclado

---

## 2.3 [F1] COMMAND CENTER - "The War Room"

**Foco Principal:** Centro de Comando com Logs Regionais Dinâmicos

### Conceito: Logs Regionais Dinâmicos

O problema de heróis em múltiplas regiões gerando uma "sopa de logs" é resolvido através de **janelas dinâmicas**. O sistema automaticamente:

1.  **Cria** uma janela de log para cada região que contenha pelo menos 1 herói.
2.  **Destrói** a janela quando todos os heróis saem daquela região.
3.  **Preserva** o histórico de logs de cada região, retomando de onde parou quando um herói retorna.
4.  **Delimita** sessões antigas com um separador visual `═══ [Dia X - HH:MM] ═══` para evitar confusão.

### Descrição dos Painéis Fixos

| Painel     | Nome                              | Conteúdo                                                         |
| ---------- | --------------------------------- | ---------------------------------------------------------------- |
| **P1**     | **Mapa Visual (Grid)**            | Grade 10×10 com ícones representando áreas do mundo              |
| **P2**     | **Mapa Lógico (Textual)**         | Lista de POIs mostrando heróis, monstros e status detalhado      |
| **LR_VIS** | **Cena Dinâmica (Visual)**        | **(Novo)** Bloco gráfico inserido diretamente no fluxo do log.   |
| **P3**     | **Stats do Reino**                | Dashboard: Ouro, Dia, Ciclo, Recursos                            |
| **P8**     | **Status Temporários (Vertical)** | Lista de buffs/debuffs/condições ativas de TODOS heróis/monstros |

### Painéis Dinâmicos de Log (LR = Log Regional)

| Painel   | Nome (Dinâmico)           | Comportamento                                                       |
| -------- | ------------------------- | ------------------------------------------------------------------- |
| **LR1**  | **Log: [Nome Região]**    | Criado quando ≥1 herói entra na região. Scroll de eventos locais.   |
| **LR1v** | **Visual: [Nome Região]** | Bloco visual renderizado entre as mensagens de log (Eventos Ricos). |
| **LR2**  | **Log: [Nome Região]**    | Segunda região ativa (se houver).                                   |
| **LR3**  | **Log: [Nome Região]**    | Terceira região ativa (se houver).                                  |
| **LR4**  | **Log: [Nome Região]**    | Quarta região ativa (se houver).                                    |
| **LR5**  | **Log: [Nome Região]**    | Quinta região ativa (máximo com 5 heróis em locais diferentes).     |

### Regras de Layout Dinâmico

1.  **1 Região Ativa:** Log ocupa toda a largura inferior. Altura generosa (50% da tela).
2.  **2 Regiões:** Logs lado a lado (50% cada). Altura 40%.
3.  **3 Regiões:** Logs em grid (2 em cima, 1 embaixo centralizado). Altura 35%.
4.  **4-5 Regiões:** Grid 2x2 ou 2x3. Logs menores, mas ainda legíveis. Altura 30%.
5.  **Prioridade:** Se espaço for crítico, P1 e P2 reduzem (mínimo 20% cada). Logs nunca ficam menores que 25% de largura.

### Renderização de Log: UX e Ritmo

Para garantir legibilidade mesmo em layouts divididos, o sistema segue regras estritas de renderização:

1.  **Texto Fluido (Text Wrap):** Linhas longas de log quebram automaticamente para a próxima linha com indentação, garantindo que nenhum texto seja cortado horizontalmente.
2.  **Ritmo de Leitura (Cognitive Delay):** O jogo **NÃO** é um fluxo frenético de dados. Existe um **delay intencional** (500ms a 1.5s) entre cada ação de combate ou diálogo, permitindo que o jogador acompanhe o desenrolar da batalha confortavelmente.
3.  **Destaque para Banter (Diálogos):**
    - Diferente dos logs de combate (que usam colunas rígidas), o Banter é renderizado como um **bloco de destaque**.
    - Possui borda colorida (ex: amarelo) e ignora a formatação de colunas, ocupando toda a largura disponível da janela regional.
    - Isso garante que o "Drama" nunca se perca no meio dos números.

### Layout Visual: 1 Região Ativa (Todos heróis juntos)

```
┌───────────────────────────────────────────────────────────────────────────┐
│ P3: STATS DO REINO                                                        │
│ 💰 Ouro: 1,250g | 📅 Dia: 2 | 🌙 Ciclo: 1 (Primavera)                       │
├──────────────────────────────────────┬────────────────────────────────────┤
│   P1: MAPA VISUAL (Grid 10×10)       │ P2: MAPA LÓGICO (Textual)          │
│  [🏰][🌲][🌲][⚔️][ ][ ][ ][ ][ ][ ] │ ⚔️ FLORESTA SOMBRIA [3,3]          │
│  [🌲][🌲][🌲][🌲][ ][ ][ ][ ][ ][ ] │  ├─ Sir Kaelen (Guerreiro Lvl 8)   │
│                                      │  ├─ Lila (Ladina Lvl 9)            │
│  Legenda: 🏰=Vila ⚔️=Combate        │  ├─ Aria (Maga Lvl 7)              │
│                                      │  ├─ Elara (Paladina Lvl 6)         │
│                                      │  └─ Kenji (Monge Lvl 5)            │
├──────────────────────────────────────┴────────────────────────────────────┤
│ LR1: 📍 FLORESTA SOMBRIA (5 heróis)                               [SCROLL]│
├───────────────────────────────────────────────────────────────────────────┤
│ [14:30] ⚠️ Encontro Iniciado: Emboscada na Floresta                       │
│ ┌───────────────────────────────────────────────────────────────────────┐ │
│ │ [VISUAL SCENE: EMBOSCADA]                                   [REPLAY]  │ │
│ │                                                                       │ │
│ │ [ 🧙‍♂️Kaelen ]  (⚡ Combo Line)  [ 🧝‍♀️Lila ]   VS   [ 👹Ogro ]           │ │
│ │    "Agora, Lila!"                                                     │ │
│ └───────────────────────────────────────────────────────────────────────┘ │
│ [14:32] ⚔️ [Sir Kaelen] ataca Ogro (85 dano)                              │
│ [14:33] ⚔️ [Lila] usa [Apunhalar Crítico] → Ogro (142 dano!) CRÍTICO      │
│ [14:34] 🩹 [Elara] usa [Cura Sagrada] → Kaelen (+45 HP)                   │
│ [14:35] ⏱️ TIMELINE: Kenji age em 0.5s | Ogro age em 2.1s                 │
│ [14:36] 👊 [Kenji] [COMBO x3] → Ogro (60+80+120 = 260 dano)               │
│ [14:37] 💀 Ogro DERROTADO! Loot: 45g, Poção de Mana                       │
│ [14:38] 💬 [Kaelen]: "Bela luta, Lila! Aquele crítico foi incrível."      │
│ [14:39] ❤️ RELAÇÃO [Kaelen ↔ Lila] +5 (Elogio em combate)                 │
├───────────────────────────────────────────────────────────────────────────┤
│ P8: 🔀 STATUS TEMPORÁRIOS ATIVOS                                          │
│  ├─ Sir Kaelen [⚡ Fúria +50% ATK] ⏱️ 12s                                 │
│  ├─ Lila [☣️ Envenenada -2HP/s] ⏱️ 8s                                     │
│  └─ Elara [🛡️ Aura Sagrada +Cura] ⏱️ Permanente                          │
└───────────────────────────────────────────────────────────────────────────┘
```

### Layout Visual: 2 Regiões Ativas (Grupo dividido)

```
┌───────────────────────────────────────────────────────────────────────────┐
│ P3: STATS DO REINO                                                        │
│ 💰 1,250g | 📅 Dia 2 | 🌙 Ciclo 1                                         │
├────────────────────────────┬──────────────────────────────────────────────┤
│ P1: MAPA (Compacto)        │ P2: MAPA LÓGICO                              │
│ [🏰][🌲][⚔️][ ][ ]        │ ⚔️ FLORESTA: 3 heróis                        │
│ [🌲][🌲][🌲][🏔️][💀]      │ 💀 MASMORRA: 2 heróis                         │
├────────────────────────────┴──────────────────────────────────────────────┤
│ LR1: 📍 FLORESTA SOMBRIA (3)       │ LR2: 📍 MASMORRA PROFUNDA (2)        │
├────────────────────────────────────┼──────────────────────────────────────┤
│ [14:32] ⚔️ Kaelen ataca Lobo       │ [14:30] 🚪 Lila e Kenji entram       │
│ [14:33] ⚔️ Aria [Bola de Fogo]     │ [14:31] ⚔️ Lila vs Esqueleto         │
│ [14:34] 🩹 Elara cura Kaelen       │ [14:32] 👊 Kenji [Combo x2]          │
│ [14:35] 💀 Lobo MORTO               │ [14:33] 💀 Esqueleto MORTO           │
│ [14:36] 💬 Kaelen: "Próximo!"      │ [14:34] 🔍 Baú encontrado!           │
│ ...                                 │ [14:35] 💰 +120g, Anel de Agilidade  │
├────────────────────────────────────┴──────────────────────────────────────┤
│ P8: STATUS TEMPORÁRIOS                                                    │
│  Kaelen [⚡ Fúria] | Lila [🔇 Furtiva] | Kenji [🔥 Combo Ativo]            │
└───────────────────────────────────────────────────────────────────────────┘
```

### Layout Visual: 5 Regiões Ativas (Heróis totalmente dispersos)

```
┌───────────────────────────────────────────────────────────────────────────┐
│ P3: 💰 1,250g | 📅 2 | 🌙 C1                                              │
├───────────────────────────────────────────────────────────────────────────┤
│ P1+P2: MAPA COMPACTO (Mini)                                               │
│ [🏰][🌲:K][⚔️:L][🏔️:A][ ] │ K=Kaelen L=Lila A=Aria E=Elara J=Kenji      │
│ [ ][💀:E][ ][🌊:J][ ]    │ 5 regiões ativas                              │
├───────────────┬───────────────┬───────────────────────────────────────────┤
│ LR1: VILA     │ LR2: FLORESTA │ LR3: MASMORRA                             │
│ (Kaelen)      │ (Lila)        │ (Aria)                                    │
├───────────────┼───────────────┼───────────────────────────────────────────┤
│ [14:32] 🏠    │ [14:30] ⚔️    │ [14:31] ⚔️                                │
│ Kaelen descans│ Lila vs Lobo  │ Aria vs Lich                              │
│ [14:33] 🍺    │ [14:31] 💀    │ [14:32] 🔥                                │
│ Entrou Taverna│ Lobo morto    │ [Meteoro] AoE                             │
├───────────────┴───────────────┼───────────────────────────────────────────┤
│ LR4: MONTANHAS (Elara)        │ LR5: PÂNTANO (Kenji)                      │
├───────────────────────────────┼───────────────────────────────────────────┤
│ [14:30] 🏔️ Elara explora     │ [14:30] 🌊 Kenji nada                     │
│ [14:31] 🔍 Minério encontrado │ [14:31] ⚔️ Kenji vs Sapo                  │
│ [14:32] ⛏️ Coletou 15 Ferro   │ [14:32] 👊 [Combo x4] → MORTO             │
├───────────────────────────────┴───────────────────────────────────────────┤
│ P8: STATUS│ Kaelen[🍺] Lila[🐺] Aria[🔥Mana+] Elara[🛡️] Kenji[👊Combo]   │
└───────────────────────────────────────────────────────────────────────────┘
```

### Comportamento do Histórico Regional

Quando um herói **sai** de uma região e depois **retorna**, o log daquela região é restaurado com um delimitador temporal:

```
LR1: 📍 FLORESTA SOMBRIA (Lila retornou)
────────────────────────────────────────
│ ═══════════ Dia 1 - 10:30 ═══════════
│ [10:30] 💀 Lila matou 3 Lobos
│ [10:35] 🚶 Lila saiu para Vila
│ ═══════════ Dia 2 - 14:00 ═══════════
│ [14:00] 🚪 Lila retornou à Floresta
│ [14:01] ⚔️ Lila encontra Ogro Elite
│ [14:02] ⚔️ Lila ataca (95 dano)
────────────────────────────────────────
```

### Alertas de Eventos Críticos

Mesmo com logs separados, o sistema mostra **banners de alerta** no topo da tela quando algo crítico acontece em outra região:

```
┌─────────────────────────────────────────────────────────────────┐
│ ⚠️ ALERTA: [MASMORRA] Aria está com HP CRÍTICO (8%)! [PULAR]   │
└─────────────────────────────────────────────────────────────────┘
```

Pressionar `[PULAR]` ou `Tab` foca a câmera e os controles naquela região.

### Visualização de Cena Dinâmica (Eventos Ricos)

Para eventos de maior importância (narrativa emergente, encontros com bosses, diálogos cruciais), o sistema gera um **Bloco de Animação Visual** inserido diretamente na sequência do log.

**Conceito:**
A cena dinâmica não é uma janela separada, mas sim **parte do histórico**. Ela aparece cronologicamente entre as mensagens de texto. Isso garante que:

1.  **Contexto:** O jogador sabe exatamente a que eventos a animação se refere (está "sandwichada" pelos logs relevantes).
2.  **Histórico:** Como é um item do log, o jogador pode rolar para cima e ver animações passadas.
3.  **Replay:** Cada bloco de cena possui um botão `[REPLAY]` que permite assistir à sequência novamente a qualquer momento.

**Funcionamento:**
A LLM envia um payload JSON específico. O frontend renderiza este payload como um "Card Interativo" dentro da lista de logs (`<li>` ou equivalente). Ao invés de desaparecer quando a cena acaba, ela permanece lá como um registro visual do evento.

**Características da Janela:**

1.  **Cenário (Background):** Imagem ambiental correspondente ao bioma.
2.  **Slots de Personagens:**
    - **Side-View:** Time Esquerdo (Heróis) vs Time Direito (Inimigos).
    - **Destaque (Highlight):** O personagem agindo no momento "salta" para frente e brilha.
    - **Inativos:** Personagens aguardando ficam mais escuros e menores ao fundo.
3.  **Balões de Diálogo:** Pop-ups dinâmicos estilo HQ. O posicionamento se ajusta para não cobrir a arte (topo para inativos, laterais para ativos).
4.  **Estado de Morte:** Se um personagem morre na timeline, ele recebe um filtro grayscale e um "X" vermelho sobre o retrato.

**Estrutura do Payload (JSON):**

O sistema de animação é controlado por um objeto JSON contendo o estado inicial e uma `timeline` de eventos.

```json
{
  "title": "Título da Cena (ex: Emboscada na Floresta)",
  "centerIcon": true, // Exibe ícone de espadas cruzadas no centro
  "leftTeam": [
    // Lista de IDs e configs iniciais
    { "id": "c1", "color": "#0088ff" }
  ],
  "rightTeam": [{ "id": "m1", "color": "#aa0000", "flip": false }],
  "timeline": [
    // Sequência de Ações
    {
      "delay": 1000, // Pausa antes de executar
      "side": "left", // Qual time age
      "id": "c1", // Quem age
      "talkingTo": "m1", // Alvo (faz o ator virar/flipar para o alvo)
      "update": {
        "text": "Sua tirania acaba hoje!", // Gera balão de fala
        "highlight": true, // Traz para frente e ilumina
        "keepPrevious": false, // Se false, limpa falas anteriores
        "dead": false // Se true, marca como morto (X vermelho)
      }
    }
  ]
}
```

**Comportamento da Timeline:**
O cliente processa a lista `timeline` sequencialmente. Cada passo atualiza o estado visual dos "bonecos" (posição, brilho, texto). Isso permite que a LLM "dirija" uma pequena cutscene de batalha ou diálogo dramático sem precisar renderizar gráficos 3D pesados.

### Detalhamento do P8: Status Temporários

**Formato de Entrada:**

```
[Emoji Estado] [Nome do Estado] [Efeito] ⏱️ [Tempo Restante]
```

**Categorias:**

1. **🔼 BUFFS** (Efeitos Positivos):
   - Aumentam stats
   - Concedem habilidades temporárias
   - Proteções/escudos
   - Origem: Skills, itens, Bardo, Paladino, etc

2. **🔽 DEBUFFS** (Efeitos Negativos):
   - Reduzem stats
   - Dano contínuo (DoT)
   - Penalida des
   - Origem: Venenos, magias inimigas, etc

3. **⚠️ CONDIÇÕES ESPECIAIS**:
   - Controle de multidão (Stun, Freeze, Fear)
   - Estados extremos P.E.C.M.A. (Lobo Alfa, Guarda Leal, etc)
   - Estados emocionais (DRUNK, SCARED, INSPIRED)
   - Podem ser permanentes ou temporários

**Exemplos de Status:**

```
BUFFS:
⚡ Fúria Berserker +50% ATK (Guerreiro skill)
🛡️ Escudo Mágico 150 absorção (Mago skill)
🎵 Melodia de Ataque +20% ATK (Bardo canalização)
🙏 Benção em Massa +30% todos stats (Paladino)
✨ Inspirado +0.1 todos P.E.C.M.A. (evento)
⚡ Grito de Guerra +30% Speed (Bardo)

DEBUFFS:
☣️ Envenenado -X HP/s (Flecha/Lâmina venenosa)
❄️ Congelado -50% Speed (Magia de gelo)
🔥 Queimando -X HP/s (Magia de fogo)
⚫ Maldição de Fraqueza -40% ATK (Necromante)
🌑 Peste (contágio) -5 HP/s (Necromante)
😰 Exaustão -30% Speed (usar skills demais)

CONDIÇÕES:
😵 Atordoado - Zero ações (Stun)
🧊 Congelado - Zero ações (Freeze)
😵‍💫 Confuso - 50% atacar aliado
😱 Amedrontado - -30% ATK, pode fugir
🤐 Silenciado - Não usa skills mágicas
🐌 Lento - Reduz Speed
🐺 Lobo Alfa - Trait extremo (Cooperation ≤0.1)
🛡️ Guarda Leal - Trait extremo (Proactivity ≤0.1)
🍺 DRUNK - Modifica P.E.C.M.A. temporariamente
```

**Interação com Timeline:**

- Buffs/Debuffs de Speed modificam posição na fila de ação
- Condições de Controle (Stun/Freeze) param progresso na timeline
- Estados P.E.C.M.A. afetam tomada de decisão da IA

---

### P8 - Status Temporários Ativos (Detalhado)

#### Propósito

Painel dedicado para mostrar **todos os buffs, debuffs e condições especiais** ativas no momento, seja em heróis, monstros ou globais.

#### O Que Mostra

**3 Categorias:**

1. **🔼 BUFFS** (Verde) - Efeitos positivos
2. **🔽 DEBUFFS** (Vermelho) - Efeitos negativos
3. **⚠️ CONDIÇÕES** (Amarelo) - Estados especiais neutros

#### Formato de Entrada

```
[ÍCONE] [TIPO]: [Alvo] [Efeito] [Duração]

Exemplo:
🔼 BUFFS: Kaelen [⚔️ Fúria +20% ATK] 45s
```

#### Lista Completa de Status Temporários

**BUFFS (Positivos)**

| Ícone | Nome               | Efeito                   | Duração Típica | Fonte              |
| ----- | ------------------ | ------------------------ | -------------- | ------------------ |
| ⚔️    | **Fúria**          | +20-50% Attack           | 30-60s         | Skill de Guerreiro |
| 🛡️    | **Fortificado**    | +30% Defense             | 60s            | Poção/Buff         |
| ⚡    | **Acelerado**      | +50% Velocidade          | 30s            | Skill de Mago      |
| 💪    | **Força Titânica** | +100% Attack             | 15s            | Decreto Real       |
| ❤️    | **Regeneração**    | +10 HP/s                 | 120s           | Poção de Cura      |
| 🔥    | **Chama Interior** | +30% Dano Fogo           | 40s            | Buff de Mago       |
| 🧠    | **Concentração**   | +50% Crit Chance         | 20s            | Habilidade         |
| 🌟    | **Bênção Divina**  | Invulnerável             | 5s             | Skill Rara         |
| 👥    | **Grupo Unido**    | +15% Stats (se em grupo) | Passivo        | Social             |

**DEBUFFS (Negativos)**

| Ícone | Nome                | Efeito                 | Duração Típica | Fonte                  |
| ----- | ------------------- | ---------------------- | -------------- | ---------------------- |
| ☣️    | **Envenenado**      | -2 a -10 HP/s          | 30-60s         | Ataque de Aranha/Snake |
| 🔥    | **Queimando**       | -5 HP/s                | 10-20s         | Magia de Fogo          |
| ❄️    | **Congelado/Lento** | -50% Velocidade        | 15-30s         | Magia de Gelo          |
| 🩸    | **Sangrando**       | -3 HP/s + deixa rastro | 20-40s         | Corte Profundo         |
| 😨    | **Amedrontado**     | -30% Attack, foge      | 10-20s         | Grito/Roar             |
| 🤮    | **Doente**          | -25% todos stats       | 120s           | Pântano/Praga          |
| 👁️    | **Cego**            | Miss 50% ataques       | 15s            | Flash Bang             |
| 🧟    | **Amaldiçoado**     | XP -50%                | 300s           | Boss/Magia negra       |
| 😵    | **Confuso**         | Ataca aliados          | 10s            | Skill de Controle      |
| 🐌    | **Exausto**         | -75% Stamina regen     | 60s            | Cansaço/Sobrecarga     |

**CONDIÇÕES ESPECIAIS**

| Ícone | Nome                | Efeito                         | Duração      | Fonte        |
| ----- | ------------------- | ------------------------------ | ------------ | ------------ |
| ⚡    | **Atordoado**       | Não pode agir                  | 3-8s         | Stun/Bash    |
| 💤    | **Dormindo**        | Inconsciente (remove com dano) | Até acordar  | Skill Sleep  |
| 🪨    | **Petrificado**     | Imóvel + Invulnerável          | 10-30s       | Magia/Medusa |
| 👻    | **Invisível**       | Não pode ser atacado           | 20s          | Skill Ladino |
| 🔗    | **Preso/Enraizado** | Não pode mover                 | 15s          | Trap/Root    |
| 🌀    | **Levitando**       | Imune a dano terrestre         | 10s          | Magia        |
| 🍺    | **Bêbado**          | Stats aleatórios (-20 a +20)   | 180s         | Taverna      |
| 🚩    | **Marcado (PvP)**   | Pode ser atacado por aliados   | Até resolver | Sistema PvP  |
| 💀    | **Necromancia**     | Morto mas reanimado            | Até morrer   | Boss Lich    |

#### Layout Detalhado do P8

**Visão Normal:**

```
P8: STATUS TEMPORÁRIOS ATIVOS

🔼 BUFFS (3 ativos):
  Kaelen [⚔️ Fúria +20% ATK] 45s | Reino [👥 Banquete] 8m12s

🔽 DEBUFFS (2 ativos):
  Lila [☣️ Envenenada -2HP/s] 28s | Gandalf [❄️ Lento -50% Vel] 14s

⚠️ CONDIÇÕES (1 ativa):
  Ogro [🔥 Queimando -5HP/s] 11s
```

**Visão Expandida (ao clicar em P8):**

```
┌────────────────────────────────────────────────────────────────────┐
│ STATUS TEMPORÁRIOS ATIVOS - DETALHADO                              │
├────────────────────────────────────────────────────────────────────┤
│                                                                    │
│ 🔼 BUFFS (3)                                                       │
│ ┌──────────────────────────────────────────────────────────────┐ │
│ │ [1] ⚔️ Fúria (Kaelen)                                         │ │
│ │     Efeito: +20% Attack                                      │ │
│ │     Duração: 45s restantes (de 60s)                          │ │
│ │     Fonte: Skill "Grito de Guerra"                           │ │
│ │     Empilha?: Não                                            │ │
│ │     [X] Remover (custaria 10 IP)                             │ │
│ └──────────────────────────────────────────────────────────────┘ │
│ ┌──────────────────────────────────────────────────────────────┐ │
│ │ [2] 👥 Banquete Real (GLOBAL)                                 │ │
│ │     Efeito: +10% Stats para todos os heróis                  │ │
│ │     Duração: 8min 12s restantes                              │ │
│ │     Fonte: Decreto Real (custo: 30 IP)                       │ │
│ │     [✓] Ativo em 10 heróis                                   │ │
│ └──────────────────────────────────────────────────────────────┘ │
│                                                                    │
│ 🔽 DEBUFFS (2)                                                     │
│ ┌──────────────────────────────────────────────────────────────┐ │
│ │ [3] ☣️ Envenenada (Lila)                                      │ │
│ │     Efeito: -2 HP/s (já perdeu 40 HP)                        │ │
│ │     Duração: 28s restantes                                   │ │
│ │     Fonte: Mordida de Aranha Gigante                         │ │
│ │     CRÍTICO: HP atual 35% - RISCO DE MORTE!                  │ │
│ │     [!] Enviar antídoto? (Custo: 50g)                        │ │
│ └──────────────────────────────────────────────────────────────┘ │
│ ┌──────────────────────────────────────────────────────────────┐ │
│ │ [4] ❄️ Lento (Gandalf)                                        │ │
│ │     Efeito: -50% Velocidade de movimento                     │ │
│ │     Duração: 14s restantes                                   │ │
│ │     Fonte: Magia de Gelo (Mago Inimigo)                      │ │
│ │     Status: Moderado (não crítico)                           │ │
│ └──────────────────────────────────────────────────────────────┘ │
│                                                                    │
│ ⚠️ CONDIÇÕES (1)                                                   │
│ ┌──────────────────────────────────────────────────────────────┐ │
│ │ [5] 🔥 Queimando (Ogro - Inimigo)                             │ │
│ │     Efeito: -5 HP/s                                          │ │
│ │     Duração: 11s restantes                                   │ │
│ │     Fonte: Bola de Fogo de Gandalf                           │ │
│ │     [✓] Contribuindo para a vitória                          │ │
│ └──────────────────────────────────────────────────────────────┘ │
│                                                                    │
│ [ESC] Fechar | [R] Remover Status | [F] Filtrar por tipo          │
└────────────────────────────────────────────────────────────────────┘
```

#### Interatividade

**Clique em Status:**

- Abre modal com detalhes completos
- Opção de remover (se possível e se tiver recursos)
- Mostra histórico (quando foi aplicado, por quem)

**Filtros:**

- `[B]` - Mostrar só Buffs
- `[D]` - Mostrar só Debuffs
- `[C]` - Mostrar só Condições
- `[H]` - Filtrar por herói específico
- `[A]` - Mostrar tudo (padrão)

**Cores Dinâmicas:**

```css
.buff {
  color: #00ff00;
  background: rgba(0, 255, 0, 0.1);
}
.debuff {
  color: #ff0000;
  background: rgba(255, 0, 0, 0.1);
}
.condition {
  color: #ffff00;
  background: rgba(255, 255, 0, 0.1);
}
.critical {
  animation: pulse 1s infinite;
} /* Se HP < 20% */
```

#### Alertas Automáticos

O P8 emite **alertas visuais** quando:

1. **Debuff Crítico:** HP < 30% E debuff de dano continuo ativo

   ```
   ⚠️ ALERTA: Lila morrendo! Envenenada + HP crítico!
   ```

2. **Buff Expirando:** Buff importante termina em < 10s

   ```
   ⏰ Fúria de Kaelen expira em 8 segundos!
   ```

3. **Condição Permanente:** Status > 5 minutos
   ```
   🚩 Amaldiçoado há 6 minutos! Considere cura especial.
   ```

#### Ações Rápidas do P8

**[R] Remover Status:**

- Abre menu:

  ```
  Remover qual status?
  [1-9] Selecione pelo número

  Custo: Varia
  - Buff próprio: Grátis
  - Debuff em herói: 50-100g (poção/magia)
  - Condição: 10-30 IP (intervenção divina)
  ```

**[A] Aplicar Buff Global:**

- Lista de decretos:
  ```
  APLICAR BUFF GLOBAL:
  [1] Banquete (30 IP, 10min)
  [2] Fúria Coletiva (+15% ATK, 50 IP, 60s)
  [3] Escudo Divino (+20% DEF, 40 IP, 120s)
  ```

---

### Exemplos Práticos

**Exemplo 1: Detectando Perigo**

```
Jogador olha P8:
🔽 DEBUFFS (3):
  Lila [☣️ Envenenada] 55s
  Lila [🩸 Sangrando] 30s
  Lila [😨 Amedrontada] 15s

P8 pisca VERMELHO (3 debuffs simultâneos!)

Conselheiro (P7):
"MAJESTADE! Lila está em CRISE! 3 debuffs ativos.
Recomendo enviar poção AGORA ou ela morre em 40s!"
```

**Exemplo 2: Buff Stacking (Combos)**

```
P8 mostra:
🔼 BUFFS:
  Kaelen [⚔️ Fúria] 30s
  Kaelen [💪 Força Tit.] 10s
  Kaelen [🧠 Concentração] 15s

Conselheiro:
"Kaelen está com TRIPLO buff! Attack +120%!
Esse é o momento PERFEITO para atacar o boss!"

[Sistema sugere]:
"Enviar carta para Kaelen: 'ATAQUE O BOSS AGORA!'"
```

---

### Layout Visual Completo

```
+---------------------+------------------------------------------+---------------------+
| P1: LISTA DE HERÓIS |          P2: O MAPA LÓGICO               | P3: ESTADO DO REINO |
| [1] Sir Kaelen 📩   |                                          |                     |
|     HP: 80% | Lvl 3 |  > VILA REAL (Seguro)                    |  OURO: 1,250        |
|     Sts: LENDO      |    [N] Conselheiro                       |  MANA: 300          |
|                     |                                          |  INFL: [|||||.....] |
| [2] Lila Rogue      |  > FLORESTA SOMBRIA (Combate!)           |  (50/100 IP)        |
|     HP: 40% | Lvl 5 |    [H] Sir Kaelen 🪶 (Escrevendo...)     |                     |
|     Sts: LUTA       |    [H] Lila Rogue                        |  -- NOTIFICAÇÕES -- |
|                     |    [M] Ogro (HP: 10%)                    |  [!] Carta de Lila  |
| [3] Vazio           |                                          |      (Ler Agora [R])|
|     (Recrutar +)    |  > CAVERNA (Desconhecido)                |  [!] Estoque Baixo  |
|                     |    [?] Névoa de Guerra                   |                     |
+---------------------+------------------------------------------+---------------------+
| P4: INSPEÇÃO / CARTA|          P5: TIMELINE SOCIAL (LOGS)      | P6: AÇÕES RÁPIDAS   |
| Selecionado: [1]    | [12:03] 📩 MAIL [Majesty ➜ Kaelen] [-25 IP] Corvo enviado. | [A] Curar (100g)    |
| Sir Kaelen          | [12:03] 👣 MOVE [Kaelen] [Parou] Lendo carta... | [B] Buff Dano (300g)|
|                     | [12:04] 💬 CHAT [Kaelen] "Vou tentar, senhor!" | [C] Carta (-25 IP)  |
| [Status da Carta]   | [12:04] ⚔️ ATK [Kaelen ⚔️ Ogro] [CRÍTICO! -80 HP] Golpe devastador! |                     |
| > Enviada: 12:03    | [12:05] 📩 MAIL [Lila ➜ Majesty] [Resposta] Carta recebida. |                     |
| > Status: Lida      |                                          | (Use teclas)        |
| > Resposta: A caminho|                                         |                     |
+---------------------+------------------------------------------+---------------------+
|                 P8: STATUS TEMPORÁRIOS ATIVOS (BUFFS/DEBUFFS)                        |
| 🔼 BUFFS: Kaelen [Fúria +20% ATK] 45s | Reino [Banquete +10% Stats] 8min            |
| 🔽 DEBUFFS: Lila [☣️ Envenenada -2HP/s] 30s | Gandalf [❄️ Lento -50% Vel] 15s         |
| ⚠️ CONDIÇÕES: Elara [⚡ Atordoada] 5s | Ogro [🔥 Queimando -5HP/s] 12s                |
+--------------------------------------------------------------------------------------+
|                        P7: CONSELHEIRO REAL (CHAT)                                   |
| IA: "Majestade, a carta surtiu efeito. Kaelen parece motivado, mas Lila enviou uma   |
|      resposta malcriada pedindo aumento de salário."                                 |
|                                                                                      |
| > /_                                                                                 |
+--------------------------------------------------------------------------------------+
```

### Interação e UX (F1)

#### Seleção Rápida (P1)

- **Teclado:** Teclas numéricas `1` a `9` selecionam instantaneamente o herói correspondente e carregam seus dados no P4
- **Mouse:** Clique em um herói para selecionar

#### Filtro de Log (P2 → P5)

- **Teclado:** Setas Cima/Baixo navegam no mapa. Enter filtra o P5
- **Mouse:** Clicar em um local (ex: "Floresta Sombria") filtra o P5 (Timeline) para mostrar apenas eventos daquele local

#### Freeze Log (P5)

- **Mouse:** Clicar em um log "pausa" o texto (freeze) para leitura. Clicar novamente retoma o real-time

#### Ações Rápidas (P6)

- **Teclado:** As letras `[A]`, `[B]`, `[C]` são atalhos. Pressionar A abre um mini-input modal sobre o P6 perguntando: Alvo? (1-9)
- **Mouse:** Clique no botão da ação. Abre menu de contexto (dropdown simples) para selecionar o alvo

---

## 2.4 [F2] MANAGEMENT - "The Tycoon"

**Foco Principal:** Gestão Administrativa, Econômica e Treinamento de Heróis

### Descrição dos Painéis

| Painel | Nome                        | Conteúdo                                                            |
| ------ | --------------------------- | ------------------------------------------------------------------- |
| **P1** | **Build Menu**              | Lista de construções e guildas disponíveis para compra/upgrade      |
| **P2** | **Escola Estoica**          | Interface de treinamento para modificação de traits P.E.C.M.A.      |
| **P3** | **Stock & Inventário**      | Controle de poções, armas, armaduras e recursos básicos             |
| **P4** | **Detalhes Econômicos**     | Relatório de Fluxo de Caixa (Receitas vs Despesas)                  |
| **P5** | **Orçamento**               | Alocação de recursos por categoria (Manutenção, Salários, Obras)    |
| **P6** | **Preview de Edifício**     | Detalhes técnicos, buffs e requisitos do edifício selecionado em P1 |
| **P7** | **Ações Rápidas (Admin)**   | Comandos globais: Reparar Tudo, Reabastecer Stock, Pagar Salários   |
| **P8** | **Log de Ordem de Serviço** | Histórico de construções, upgrades e manutenções concluídas         |

### Layout Visual Completo

```
┌───────────────────────────────────────────────────────────────────────────┐
│ P1: BUILD MENU                 │ P2: ESCOLA ESTOICA                       │
│ [1] Guilda Guerreiros (Lvl 2)  │ Herói Selecionado: Sir Kaelen (Lvl 8)    │
│ [2] Guilda Magos (Lvl 1)       │ Trait Atual: Mind (0.4)                  │
│ [3] Guilda Paladinos (Bloq.)   │ Objetivo: Elevar para 0.55               │
│ [4] Torre de Vigia (Lvl 3)     │ Custo Estimado: 950g | Tempo: 180s       │
│ [5] Escola Estoica (Lvl 1)     │ [T] Iniciar Treinamento                  │
│ [6] Mercado (Lvl 2)            │ [ESC] Cancelar Seleção                   │
├────────────────────────────────┼──────────────────────────────────────────┤
│ P3: STOCK & INVENTÁRIO         │ P4: ECONOMIA (Resumo Diário)             │
│ Poções HP: [████░░░░░░] 45/100 │ Receita: +450g (Taxas: 120g, Loot: 330g) │
│ Poções MP: [███░░░░░░░] 32/100 │ Despesa: -320g (Manut: 220g, Salários:100g)│
│ Espadas:   [████████░░] 12/15  │ Lucro Líquido: +130g                     │
│ Armaduras: [██████░░░░] 8/15   │ Projeção Próx. Dia: +145g                │
├────────────────────────────────┼──────────────────────────────────────────┤
│ P5: ORÇAMENTO                  │ P6: PREVIEW EDIFÍCIO                     │
│ [A] Obras: 500g (Pendente)     │ [Escola Estoica - Lvl 1]                 │
│ [B] Manutenção: 150g (OK)      │ Permite treinar 1 herói por vez.         │
│ [C] Salários: 100g (ATRASO!)   │ Aumenta traits P.E.C.M.A. através de     │
│ [D] Emergência: 50g            │ disciplina e estudo.                     │
├────────────────────────────────┴──────────────────────────────────────────┤
│ P7: ⚡ AÇÕES RÁPIDAS (ADMINISTRATIVAS)                                    │
│ [R] Reparar Tudo (50g) | [S] Reabastecer Stock (400g)                     │
│ [P] Pagar Salários (100g) | [U] Upgrade Prédio (Selecionado em P1)        │
├───────────────────────────────────────────────────────────────────────────┤
│ P8: 🏗️ LOG DE ORDEM DE SERVIÇO                                           │
│ [14:30] 🏗️ Guilda Magos concluída (300g, 60s)                            │
│ [14:32] 🔨 Taverna Lvl 2 em construção (45s restantes)                   │
│ [14:35] ⚙️ Manutenção de rotina em torres concluída (-30g)               │
│ [14:40] 🏛️ Escola Estoica iniciou treinamento: Sir Kaelen                │
└───────────────────────────────────────────────────────────────────────────┘
```

### Interação e UX (F2)

#### P1 (Infraestrutura)

- **Teclado:** Setas Cima/Baixo percorrem a lista. Enter seleciona e mostra dados no P4. Espaço inicia upgrade (se tiver ouro)
- **Mouse:** Clique seleciona. Duplo-clique inicia upgrade

#### P2 (Skill Tree)

- **Teclado:** Navegação hierárquica. Setas para mover entre nós, Enter para comprar a skill selecionada
- **Mouse:** Hover sobre a skill mostra Tooltip flutuante com descrição completa. Clique compra

#### P3 (Logística)

- **Compra Rápida:** Ao selecionar um item (ex: Poção [A]) e pressionar Enter (ou clicar), o foco vai para o P7 (Input) pré-preenmanado com `/buy A [quantidade]`

#### P6 (Ações Rápidas)

- **Contexto:** Funciona como um menu de contexto para o item selecionado no P1 ou P3. Se "Guilda" estiver selecionada em P1, pressionar U (Upgrade) tenta evoluir o prédio

---

### Casa Central do Majesty: "A Coroa do Reino"

#### Descrição

A **Casa Central** (Crown Keep) é o edifício mais importante do reino. É onde o Majesty reside e governa.

#### Características

| Atributo          | Valor                | Descrição                     |
| ----------------- | -------------------- | ----------------------------- |
| **HP**            | 5,000                | O dobro de outras construções |
| **Defense**       | 100                  | Alta resistência              |
| **Regeneração**   | 250 HP/dia           | Auto-reparo natural           |
| **Tipo**          | Edifício Especial    | Único no reino                |
| **Posição no P1** | [0] (sempre no topo) | Prioridade visual             |

#### Condição de Derrota (GAME OVER)

**Regra Crítica:** Se a Casa Central ativa chegar a HP = 0 → **GAME OVER IMEDIATO**

**Exceção:** Se o jogador já moveu a capital para um Posto Avançado:

- Casa Central antiga vira "Casa Secundária"
- Destruição dela NÃO causa game over
- Nova Casa Central está no Posto Avançado

#### Sistema de Proteção Especial

**Imunidades:**

- ✅ **Imune a Eventos Globais** (terremotos, tempestades NÃO causam dano)
- ✅ **Imune a Fendas Mágicas** (portais não spawnam perto)
- ❌ **Vulnerável a Invasões de Monstros** (ataques diretos funcionam)

**Buffs Defensivos:**

- Torres adjacentes (raio 5 hexágonos) ganham +50% range
- Heróis defendendo Casa Central ganham +20% stats
- Alertas de invasão acontecem 2 minutos antes (vs 30s normal)

#### Estados Visuais (P1)

```
P1: INFRAESTRUTURA

[0] 👑 Casa Central "Coroa do Reino"
    HP: ████████░░ (80%)
    Status: Intacta
    Proteção: 3 Torres, 5 Heróis

--- ou quando danificada ---

[0] ⚠️ Casa Central "Coroa do Reino"
    HP: ███░░░░░░░ (30%) [CRÍTICO!]
    Status: Ruínas Parciais
    [!] AMEAÇA DE GAME OVER
```

| HP          | Ícone | Status Visual | Descrição no P4                                |
| ----------- | ----- | ------------- | ---------------------------------------------- |
| **100-80%** | 👑    | Intacta       | Bandeiras tremulando, muros dourados           |
| **79-50%**  | ⚠️    | Danificada    | Rachaduras, bandeira rasgada                   |
| **49-25%**  | 🔥    | Crítica       | Chamas parciais, torres desabando              |
| **24-1%**   | 💀    | Ruínas        | Prestes a colapsar, **alarme vermelho global** |

#### Detalhes no P4 (Quando Casa Central Selecionada)

```
P4: DETALHE DA CONSTRUÇÃO
Selecionado: [0] Casa Central

[STATUS ATUAL]
HP: 4,200 / 5,000 (84%)
Defense: 100
Regeneração: 50 HP/dia

[FUNÇÕES ATIVAS]
> Sede do Governo
> Respawn de Heróis habilitado

[PROTEÇÃO ATUAL]
Torres adjacentes: 2
Heróis defendendo: 3 (Kaelen, Lila, Gandalf)
Último ataque: Há 2 dias (Goblin, repelido)

[AÇÕES DISPONÍVEIS]
[R] Reparar (50g = +500 HP)
[F] Fortificar (+1,000 HP max, Custo: 2,000g)
[E] Evacuar (Mover capital, Custo: 5,000g)
```

---

### Mecânica de Construção de Edifícios (P1)

#### Como Construir Novos Edifícios

**Opção 1: Via Menu Numérico (P1)**

1.  Pressionar `[N]` (New Building) no P1
2.  Menu modal abre:

    ```
    +--------------------------------------+
    |   ESCOLHA O QUE CONSTRUIR            |
    +--------------------------------------+
    | [1] Guilda Guerreiros    (300g)      |
    | [2] Guilda Magos         (350g)      |
    | [3] Guilda Ladinos       (280g)      |
    | [4] Guilda Arqueiros     (300g)      |
    | [5] Guilda Druidas       (320g)      |
    | [6] Guilda Elfos         (330g)      |
    | [7] Guilda Paladinos     (400g)      |
    | [8] Guilda Necromantes   (420g)      |
    | [9] Guilda Bardos        (350g)      |
    | [10] Guilda Monges       (320g)      |
    | [11] Torre de Vigia      (200g)      |
    | [12] Loja de Poções      (250g)      |
    | [13] Ferreiro            (400g)      |
    | [14] Taverna             (300g)      |
    | [ESC] Cancelar                       |
    +--------------------------------------+
    ```

3.  Jogador digita número (ex: `1`)
4.  Confirmação:

    ```
    Construir Guilda Guerreiros?
    Custo: 300g | Tempo: 60s
    Saldo após: 700g

    [ENTER] Confirmar | [ESC] Cancelar
    ```

**Opção 2: Via Comando (P7)**

```
Jogador: /build warrior_guild

Conselheiro: "Iniciando construção da Guilda Guerreiros.
Custo: 300g. Tempo estimado: 60 segundos."
```

#### Estados de Construção (P1)

```
P1: INFRAESTRUTURA

[1] Guilda Guerreiros
    Lvl: 2 | Vagas: 3/5
    Status: ✅ Ativa

[2] Guilda Magos
    Progresso: [||||||||░░] 80%
    Status: 🔨 Construindo... (12s restantes)

[3] Torre de Vigia
    Lvl: 1
    Status: ⚠️ Danificada (HP: 40%)

[4] Loja de Poções
    Status: 💀 Destruída
    [Ver Detalhes: Log de Destruição]
```

---

### Edifícios Destruídos: Logs e Visual

#### P1 - Listagem de Ruínas

Quando um edifício é destruído, ele **permanece** na lista do P1 mas com visual em **cinza**:

```
P1: INFRAESTRUTURA

[2] 💀 Guilda Magos [DESTRUÍDA]
    Último status: Lvl 2, 3 Magos
    Destruída: Dia 7, 14:35
    [R] Reconstruir (300g)
```

#### P4 - Log Completo de Destruição

Ao selecionar edifício destruído:

```
P4: DETALHE DA CONSTRUÇÃO
Selecionado: [2] Guilda Magos
Status: ⚠️ DESTRUÍDA

+--------------------------------------+
|  HISTÓRICO DE DESTRUIÇÃO             |
+--------------------------------------+
| Dia: 7                               |
| Hora: 14:35:22                       |
| Causa: [INVASÃO] Horda de Ogros      |
| Atacantes: 15 Ogros (Lvl 8-12)       |
| Dano Total: 800 (de 500 HP)          |
| Heróis defendendo: 0 (todos longe)   |
| Tempo de queda: 2 minutos            |
+--------------------------------------+

[ÚLTIMO STATUS ANTES DA DESTRUIÇÃO]
> Nível: 2
> Heróis treinados: 3 (Gandalf, Merlin, Zara)
> Skills ativas: 5
> Vagas: 2/5
> Ouro investido total: 850g

[CONSEQUÊNCIAS]
> Magos perderam acesso a skills avançadas
> -10% Poder Mágico Global
> Gandalf ficou "Sem Lar" por 5 minutos

[AÇÕES DISPONÍVEIS]
[R] Reconstruir (Custo: 300g, Tempo: 2 min)
[D] Demolir ruínas (Libera espaço, +50g recuperado)
[V] Ver log detalhado (timeline)
```

---

### Identificadores de Logs do F2 ADMIN

#### Lista Completa de Tags de Logs (P5)

Todos os eventos econômicos e administrativos usam **identificadores coloridos** para facilitar a leitura no P5 (Ordem de Serviço).

| Identificador  | Cor (Terminal)            | Categoria       | Uso                                 | Exemplo                                          |
| -------------- | ------------------------- | --------------- | ----------------------------------- | ------------------------------------------------ |
| **[ADMIN]**    | Ciano (#00FFFF)           | Administração   | Construções, upgrades, demolições   | `[ADMIN] Torre de Vigia construída`              |
| **[ECO]**      | Verde (#00FF00)           | Economia        | Vendas, compras, transações         | `[ECO] Venda: Poção Vida → Kaelen (+50g)`        |
| **[ALERTA]**   | Vermelho (#FF0000)        | Avisos Críticos | Problemas urgentes                  | `[ALERTA] Ouro insuficiente para salários!`      |
| **[SKILL]**    | Amarelo (#FFFF00)         | Habilidades     | Skills desbloqueadas ou ativas      | `[SKILL] "Golpe Giratório" desbloqueado`         |
| **[MAINT]**    | Laranja (#FFA500)         | Manutenção      | Reparos, salários, manutenções      | `[MAINT] Salários pagos (-100g/dia)`             |
| **[DESTRUCT]** | Vermelho Escuro (#8B0000) | Destruição      | Edifícios danificados ou destruídos | `[DESTRUCT] Guilda Mago destruída por Ogros`     |
| **[BUILD]**    | Azul (#0080FF)            | Construção      | Progresso de obras                  | `[BUILD] Guilda Arqueiros 75% concluída`         |
| **[STOCK]**    | Magenta (#FF00FF)         | Estoque         | Alertas de inventário               | `[STOCK] Poções de Mana reabastecidas (+20)`     |
| **[DEBT]**     | Vermelho Piscante         | Dívida/Falência | Falta de recursos                   | `[DEBT] Dia 2 sem pagar salários! Risco CRÍTICO` |
| **[PROFIT]**   | Verde Brilhante           | Lucro/Ganho     | Grandes ganhos                      | `[PROFIT] Boss derrotado: +2,000g em loot`       |

#### Exemplo de Log Real (P5)

```
P5: ORDEM DE SERVIÇO (LOGS)

[14:02] 💰 LOOT [Kaelen] [Poção Vida] Comprou por 50g.
[14:02] 💰 ECO [Tesouro] [+25g] Imposto 50% arrecadado.
[14:05] 🏭 BUILD [Guilda Magos] [45%] 27s restantes.
[14:10] 💰 ECO [Guilda Guerreiros] [-5g] Manutenção diária paga.
[14:15] 💰 LOOT [Tesouro] [+200g] Loot de Ogro depositado.
[14:20] ✨ CAST [Sistema] [Tempestade de Lâminas] Skill ativa para Guerreiros.
[14:25] ⚠️ ALERT [Estoque] [CRÍTICO: 3/50] Poção Vida BAIXO!
[14:30] 💰 LOOT [Estoque] [+20 Poções] Compra automática -1,000g.
[14:35] 🏭 BUILD [Torre Vigia Leste] [HP: 60%] Sob ataque!
```

---

### P3 - Relatório Financeiro Detalhado

#### Visão Expandida de Logística e Finanças

O **P3** não mostra apenas estoques, mas um **relatório completo** de entradas e saídas de ouro.

#### Layout Completo do P3

```
P3: LOGÍSTICA & FINANÇAS

+========================================+
|  RESUMO DO DIA (Dia 4)                 |
+========================================+
| Saldo Inicial:      1,000g             |
| (+) Entradas:        +450g             |
| (-) Saídas:          -320g             |
| Saldo Final:        1,130g [+13%]      |
+========================================+

> DETALHAMENTO DE ENTRADAS ▼
+----------------------------------------+
| Hora  | Fonte              | Valor    |
+----------------------------------------+
| 14:02 | Imposto: Poção     | +50g     |
| 14:15 | Loot: Ogro         | +200g    |
| 14:30 | Imposto: Upgrade   | +80g     |
| 15:00 | Tributo: Posto N.  | +120g    |
+----------------------------------------+
| TOTAL ENTRADAS                  +450g  |
+----------------------------------------+

> DETALHAMENTO DE SAÍDAS ▼
+----------------------------------------+
| Hora  | Destino            | Valor    |
+----------------------------------------+
| 14:05 | Poções Mana (x3)   | -150g    |
| 14:20 | Salários: Torres   | -100g    |
| 14:45 | Manutenção: Guildas| -70g     |
+----------------------------------------+
| TOTAL SAÍDAS                    -320g  |
+----------------------------------------+

> PROJEÇÃO (Próximas 24h)
+----------------------------------------+
| Entradas estimadas:        +400g       |
| Saídas fixas:              -250g       |
| Saldo projetado:          1,280g       |
+----------------------------------------+

> ESTOQUES CRÍTICOS
+----------------------------------------+
| [!] Poção Vida: 12/50      BAIXO       |
| [!] Poção Mana: 8/30       CRÍTICO     |
| [✓] Armas: 25/40           OK          |
+----------------------------------------+
```

#### Interatividade do P3

**Ações disponíveis:**

- **Setas Cima/Baixo:** Rolar lista de entradas/saídas
- **[E]:** Expandir detalhes de entrada específica
- **[S]:** Expandir detalhes de saída específica
- **[P]:** Ver projeção de 7 dias (gráfico de tendência)
- **[A]:** Abrir menu de compra rápida de estoque

**Exemplo de expansão:**

Jogador seleciona entrada "Loot: Ogro" e pressiona `[E]`:

```
DETALHES DA ENTRADA
+----------------------------------------+
| Hora: 14:15:33                         |
| Fonte: Loot de Monstro                 |
| Tipo: Ogro "Grok, O Brutal"            |
| Derrotado por: Grupo (Kaelen, Lila)    |
| Loot total: 400g                       |
| Dividido: 200g/herói                   |
| Imposto (50%): 200g → Tesouro          |
| Items dropados:                        |
|   - Machado Pesado +15                 |
|   - Pele de Ogro (x3)                  |
+----------------------------------------+
```

---

### Menu de Compra Rápida (P3 → P6 Integrado)

Quando jogador pressiona `[C]` (Comprar) no P3:

```
+----------------------------------------+
|  COMPRA RÁPIDA DE ESTOQUES             |
+----------------------------------------+
| [1] Poção Vida x10      (500g)         |
| [2] Poção Mana x10      (800g)         |
| [3] Poção Vida x30      (1,500g) [-10%]|
| [4] Poção Mana x30      (2,400g) [-10%]|
| [5] Kit Completo        (3,000g) [-20%]|
|     (30 Vida + 20 Mana + 10 Stamina)   |
| [ESC] Cancelar                         |
+----------------------------------------+
Saldo atual: 1,130g
```

**Desconto por volume:**

- 10-29 unidades: -5%
- 30-49 unidades: -10%
- 50+ unidades: -20%

---

## 2.5 [F3] LIBRARY - "The Armanaves"

**Foco Principal:** Lore, Psicologia Profunda, Bestiário e Estatísticas (Pausa Tática)

![F3 LIBRARY - The Armanaves](<../anexos/[F3]%20LIBRARY%20(_The%20Armanaves_).png>)

### Descrição dos Painéis

| Painel | Nome                     | Conteúdo                                                            |
| ------ | ------------------------ | ------------------------------------------------------------------- |
| **P1** | Índice de Dados          | Navegação tipo explorador entre Heróis, Monstros e História         |
| **P2** | Leitor de Dados (Reader) | Área larga de texto para biografias, sussurros, crônicas            |
| **P3** | Estatísticas             | **Gráficos com componentes UI** (barras, pizza, linhas) + números   |
| **P4** | Metadados                | Dados técnicos imutáveis da entidade selecionada                    |
| **P5** | Registo do Historiador   | Log histórico filtrado apenas para "Grandes Feitos"                 |
| **P6** | Filtros de Visualização  | Botões para alternar conteúdo de P2 (Heróis/Monstros/Lore/Gráficos) |
| **P7** | Pesquisa & Consulta      | Input para busca semântica ou por palavra-chave                     |

### Layout Visual Completo

```

+---------------------+------------------------------------------+---------------------+
| P1: ÍNDICE DE DADOS |    P2: LEITOR DE DADOS (READER)          | P3: ESTATÍSTICAS    |
| > HERÓIS ATIVOS     | DOSSIÊ: SIR KAELEN (Guerreiro)           | -- OURO / DIA --    |
| [1] Sir Kaelen      |                                          | Dia 2: ####         |
| [2] Lila Rogue      | [SUSSURROS RECENTES]                     | Dia 3: ######       |
|                     | "Aquele Ogro parecia ter medo de fogo... | Dia 4: ##           |
| > MEMORIAL (MORTOS) | Devia ter comprado uma tocha."           |                     |
| [3] Gandalf (Mago)  |                                          | -- KILLS / TIPO --  |
|                     | [TRAÇOS DE PERSONALIDADE]                | Ogros: 12 [|||..]   |
| > BESTIÁRIO         | Coragem: [||||||||..] (Alta)             | Goblins: 45 [||||]  |
| [4] Ogro das Cvs.   | Ganância: [||........] (Baixa)           | Dragões: 0 [.....]  |
| [5] Dragão Sombra   | Lealdade: "Pelo Rei!"                    |                     |
|                     |                                          | -- PARTIDA --       |
| > HISTÓRICO         | [BIOGRAFIA GERADA]                       | Tempo: 02:14:00     |
| [6] Crônica Atual   | Nascido nas montanhas do norte, Kaelen   | Score: B+           |
|                     | jurou proteger os fracos após...         |                     |
+---------------------+------------------------------------------+---------------------+
| P4: METADADOS | P5: REGISTO DO HISTORIADOR | P6: FILTROS |
| ID: Hero*001 | [Dia 1] Kaelen salvou Lila na floresta. | [H] Ver Heróis |
| Status: Vivo | [Dia 2] Kaelen recusou suborno. | [M] Ver Monstros |
| Kills: 42 | [Dia 3] Adquiriu título "O Bravo". | [L] Ver Lore |
| Mortes: 0 | [Dia 4] Atualmente a dormir na Vila. | [G] Ver Gráficos |
| | | |
| "A lenda viva." | | (Use teclas) |
+---------------------+------------------------------------------+---------------------+
| P7: PESQUISA & CONSULTA (MODO ARQUIVO) |
| IA: "Aqui estão os registos mentais de Sir Kaelen. A sua lealdade é inabalável, mas |
| notei que ele tem uma fobia secreta de aranhas baseada na biografia." |
| |
| > /search "fobia"* |
+--------------------------------------------------------------------------------------+

```

### Interação e UX (F3)

#### P1 (Índice)

- **Teclado:** Setas navegam na árvore de arquivos. Direita expande categoria, Esquerda recolhe. Enter carrega o conteúdo no P2
- **Mouse:** Clique simples carrega conteúdo

#### P2 (Leitor)

- **Scroll (Global):** Teclas PageUp e PageDown rolam o conteúdo deste painel independentemente de qual painel está focado
- **Seleção:** Mouse pode selecionar texto para Copy/Paste

#### P6 (Filtros)

- **Teclado:** Pressionar a tecla de filtro (ex: G) alterna o P2 para exibir os gráficos correspondentes

#### P7 (Pesquisa)

- **Comando:** `/search [termo]` filtra o P1 e destaca ocorrências no texto do P2

---

### P1 - Índice de Dados: Estrutura Completa

#### Árvore de Navegação

O **P1** funciona como um explorador de arquivos hierárquico. Todas as categorias são expandíveis/recolhíveis.

```
P1: ÍNDICE DE DADOS

▼ HERÓIS ATIVOS (10/12)
  ├─ [1] 👑 Sir Kaelen (Guerreiro, Lvl 9)
  ├─ [2] 🗡️ Lila Rogue (Ladina, Lvl 7)
  ├─ [3] 🔮 Gandalf (Mago, Lvl 6)
  └─ [+] Ver todos (10)

▼ MEMORIAL DOS CAÍDOS (3)
  ├─ [M1] 💀 Elara (Arqueira) - Dia 4
  ├─ [M2] 💀 Thorgrim (Guerreiro) - Dia 3
  └─ [M3] 💀 Zara (Maga) - Dia 2

▶ BESTIÁRIO (Expandir)
  └─ (23 espécies catalogadas)

▶ FACÇÕES DE MONSTROS
  └─ (5 facções ativas)

▶ HISTÓRICO DA PARTIDA
  ├─ Crônica Atual (Dia 1-4)
  ├─ Grandes Feitos (45 eventos)
  └─ Eventos Memoráveis (120)

▶ LORE DO MUNDO
  ├─ Reinos Antigos
  ├─ Mitologia
  └─ Artefatos Lendários

[AÇÕES]
[E] Expandir Tudo | [C] Recolher Tudo
[F] Filtrar por... | [S] Ordenar por...
```

#### Usabilidade do P1

**Navegação por Teclado:**

1.  **Setas Cima/Baixo:** Navegar entre itens
2.  **Seta Direita:** Expandir categoria fechada
3.  **Seta Esquerda:** Recolher categoria aberta
4.  **Enter:** Selecionar item e carregar no P2
5.  **Backspace:** Voltar para categoria pai
6.  **Home/End:** Ir para primeiro/último item da lista

**Atalhos Rápidos:**

- **[H]:** Ir direto para "Heróis Ativos"
- **[M]:** Ir direto para "Memorial"
- **[B]:** Ir direto para "Bestiário"
- **[L]:** Ir direto para "Lore"

**Estados Visuais:**

```
▼ Categoria Expandida (cor: ciano brilhante)
▶ Categoria Recolhida (cor: cinza)
> Item Selecionado (fundo: azul escuro)
  Item Normal (cor: branco)
💀 Item Morto (cor: vermelho escuro)
👑 Item Especial (cor: dourado)
```

---

### P2 - Leitor de Dados & P6 - Filtros (Integração)

#### O Que o P2 Mostra (Baseado no Filtro P6)

O conteúdo do **P2** muda completamente dependendo do **filtro ativo no P6**:

**[H] Ver Heróis** (Padrão)

```
P2: LEITOR DE DADOS

╔════════════════════════════════════════╗
║  DOSSIÊ: SIR KAELEN (Guerreiro)        ║
╚════════════════════════════════════════╝

[SUSSURROS RECENTES]
💭 "Aquele Ogro parecia ter medo de fogo...
    Devia ter comprado uma tocha."
💭 "Lila me salvou hoje. Talvez eu a julguei
    mal. Ela não é tão egoísta quanto pensei."

[TRAÇOS DE PERSONALIDADE - P.E.C.M.A.]
⚔️ Coragem (Power):   [████████░░] 0.8 (Alta)
⚖️ Ética (Ethics):    [██████░░░░] 0.6 (Média)
💰 Ganância (Resource): [██░░░░░░░░] 0.2 (Baixa)
🧠 Intelecto (Mind):  [████░░░░░░] 0.4 (Média)
😊 Humor (Affect):    [██████████] 1.0 (Estoico)

[BIOGRAFIA GERADA POR IA]
Nascido nas montanhas gélidas do norte, Sir Kaelen
jurou proteger os fracos após presenciar a destruição
de sua aldeia por bandidos quando tinha apenas 12 anos.
Seu pai, um ferreiro, forjou para ele a espada que
carrega até hoje. Kaelen vê o Majesty como um líder
justo e fará qualquer sacrifício para defender o reino.

[RELACIONAMENTOS]
👥 Lila Rogue: +45 (Companheiros)
👥 Gandalf: +80 (Inseparáveis)
👥 Elara: +20 (Conhecidos)
```

**[M] Ver Monstros**

```
P2: LEITOR DE DADOS

╔════════════════════════════════════════╗
║  BESTIÁRIO: OGRO DAS CAVERNAS          ║
╚════════════════════════════════════════╝

[CLASSIFICAÇÃO]
Tipo: Humanóide Maior
Tier: 2 (Médio)
Periculosidade: ⚠️⚠️⚠️ (Alta)

[ESTATÍSTICAS]
HP: 800-1,200 (varia por nível)
Ataque: 80-150
Defense: 40-60
Velocidade: Lenta (3 hex/turno)

[COMPORTAMENTO - P.A.I.N.]
🛡️ Preservation: 0.2 (Luta até quase morrer)
⚔️ Aggression: 0.9 (Extremamente agressivo)
🧠 Intellect: 0.2 (Tático: Burro)
🌿 Nature: 0.1 (Solitário)

[PADRÕES DE ATAQUE]
> Foca no herói mais forte (ignora fracos)
> Não foge (só com HP < 10%)
> Destrói edifícios se não há heróis
> Ruído alto (heróis ouvem de longe)

[FRAQUEZAS]
🔥 Fogo: +50% dano recebido
⚡ Raios: +30% dano recebido
❌ Veneno: Imune

[LOOT COMUM]
💰 Ouro: 150-300g
⚔️ Machado Pesado +10 (30% chance)
🧴 Pele de Ogro x3 (sempre)
```

**[L] Ver Lore**

```
P2: LEITOR DE DADOS

╔════════════════════════════════════════╗
║  LORE: OS REINOS ANTIGOS               ║
╚════════════════════════════════════════╝

Antes da era dos heróis, cinco reinos governavam
as terras conhecidas. Cada um guardava um artefato
de poder inimaginável...

[REINO DO NORTE - "Gelo Eterno"]
Governante: Rei Thorvald, O Gélido
Artefato: "Coração do Inverno"
Destino: Dizimado pela Praga das Sombras (Ano 342)

[REINO DO LESTE - "Aurora Dourada"]
Governante: Rainha Elyndra, A Radiante
Artefato: "Coroa do Amanhecer"
Destino: Traição interna, colapsou em guerra civil

(...mais lore...)
```

**[G] Ver Gráficos**

```
P2: LEITOR DE DADOS

╔════════════════════════════════════════╗
║  ESTATÍSTICAS DA PARTIDA               ║
╚════════════════════════════════════════╝

[Aqui aparecerão os componentes UI do P3]
(Ver seção P3 abaixo)
```

---

### P3 - Estatísticas com Componentes UI

**IMPORTANTE:** Os gráficos serão **componentes visuais** feitos em Angular.

#### Tipos de Gráficos Disponíveis

**1. Gráfico de Barras (Ouro por Dia)**

```typescript
// Componente: BarChartComponent
<bar-chart
  [data]="goldPerDay"
  [labels]="['Dia 2', 'Dia 3', 'Dia 4']"
  [color]="'#FFD700'"
></bar-chart>
```

**Visual:**

```
+------------------------------------+
|  OURO ACUMULADO (Últimos 7 Dias)   |
+------------------------------------+
Dia 2  ████████░░ 850g
Dia 3  ██████████ 1,200g
Dia 4  ████░░░░░░ 450g
Dia 5  ███████░░░ 920g
Dia 6  ████████░░ 1,100g
Dia 7  ██░░░░░░░░ 300g (BAIXO!)
Dia 8  ███████████ 1,450g
+------------------------------------+
Média: 896g/dia | Total: 6,270g
```

**2. Gráfico de Pizza (Kills por Tipo)**

```typescript
<pie-chart
  [data]="[
    {label: 'Goblins', value: 45, color: '#00FF00'},
    {label: 'Ogros', value: 12, color: '#FF5500'},
    {label: 'Lobos', value: 23, color: '#888888'}
  ]"
></pie-chart>
```

**3. Gráfico de Linha (Progressão de Poder)**

```typescript
<line-chart
  [data]="heroPowerOverTime"
  [xAxis]="'Dias'"
  [yAxis]="'Nível Médio'"
></line-chart>
```

**4. Barras de Progresso Simples**

```
Kills Totais
████████████████░░░░ 245 / 300 (82%)

Edifícios Construídos
██████████░░░░░░░░░░ 8 / 15 (53%)

Grandes Feitos
████████░░░░░░░░░░░░ 12 / 30 (40%)
```

---

### P5 - Grandes Feitos: Lista Completa

#### O Que é um "Grande Feito"?

Eventos **épicos e raros** que merecem destaque no histórico. São filtrados automaticamente para o P5.

#### Categorias de Grandes Feitos

**1. COMBATE ÉPICO**

- Derrotar boss solo
- Sobreviver com HP < 5%
- Crítico que mata de um hit
- Matar 10+ inimigos em 1 minuto
- Vingança: Matar Nêmesis

**2. SOCIAL DRAMÁTICO**

- Primeira amizade (+80 Affinity)
- Primeira traição (herói corrupto)
- PvP que resulta em morte
- Salvamento heroico (< 10% HP)
- Formação de grupo lendário (3 heróis +90 Affinity)

**3. ECONÔMICO**

- Primeiro 1,000 ouro acumulado
- Falência evitada por pouco
- Loot lendário (valor > 1,000g)
- Completar tech tree de uma classe

**4. EXPANSÃO**

- Fundar primeiro Posto Avançado
- Mover capital
- Perder Posto por traição
- Reconquistar Posto perdido

**5. EVENTOS GLOBAIS**

- Sobreviver Lua de Sangue
- Derrotar Boss Global
- Repelir invasão de 50+ monstros
- Casa Central com HP < 10% (quase Game Over)

**6. NARRATIVA**

- Primeiro herói morto
- Primeiro herói redimido (Guarda → Aventureiro)
- Título lendário adquirido
- Nêmesis criado

#### Exemplo de Log no P5

```
P5: REGISTO DO HISTORIADOR (GRANDES FEITOS)

[Dia 1] 🏆 PRIMEIRO SANGUE
        Sir Kaelen derrotou seu primeiro inimigo solo.
        (Goblin "Krax, O Fedido")

[Dia 2] 💖 LAÇOS FORTES
        Kaelen salvou Lila de morte certa.
        Affinity: -10 → +25 (Primeira amizade)

[Dia 3] 💀 MORTE HEROICA
        Gandalf caiu defendendo a Casa Central.
        Último HP do edifício: 8% (salvou o reino)

[Dia 4] ⚔️ VINGANÇA CUMPRIDA
        Kaelen derrotou "Ogro Matador de Gandalf".
        XP dobrado. Título: "Vingador de Gandalf"

[Dia 5] 🏰 EXPANSÃO DO REINO
        Posto Avançado fundado na Floresta Norte.
        Capitão: Lila Rogue

[Dia 6] 🌙 SOBREVIVÊNCIA
        Reino resistiu à Lua de Sangue.
        73 monstros eliminados. 2 heróis caídos.

[Dia 7] 👑 STATUS ATUAL
        Partida em andamento...
        Próximo grande feito: Derrotar Rei Vilão
```

#### Condições Técnicas (Para Implementação)

```typescript
interface GrandeFeito {
  id: string;
  dia: number;
  categoria:
    | "COMBATE"
    | "SOCIAL"
    | "ECONOMICO"
    | "EXPANSAO"
    | "GLOBAL"
    | "NARRATIVA";
  titulo: string;
  descricao: string;
  icone: string;
  raridade: "COMUM" | "RARO" | "EPICO" | "LENDARIO";
  pontosLegado: number; // Para meta-progressão
}

// Exemplo de trigger
function checkGrandeFeito(event: GameEvent) {
  if (event.type === "HERO_KILL" && event.heroHP < 0.05 && event.survived) {
    createGrandeFeito({
      categoria: "COMBATE",
      titulo: "POR UM FIO",
      descricao: `${event.hero.name} sobreviveu com ${event.heroHP * 100}% HP`,
      raridade: "EPICO",
      pontosLegado: 50,
    });
  }
}
```

---

## 2.6 [F4] WORLD MAP - "The Conquest"

**Foco Principal:** Macro-estratégia, Expansão Territorial e Eventos Globais

![F4 WORLD MAP - The Conquest](<../anexos/[F4]%20WORLD%20MAP%20(_The%20Conquest_)%202.png>)

### Descrição dos Painéis

| Painel | Nome                  | Conteúdo                                                       |
| ------ | --------------------- | -------------------------------------------------------------- |
| **P1** | Domínios Reais        | Lista da Capital e dos Postos Avançados com status de lealdade |
| **P2** | Mapa Visual (Tiles)   | **Imagens quadradas** representando biomas com ícones visuais  |
| **P3** | Previsão Global       | Ciclos de tempo atuais, previsão de eventos e clima global     |
| **P4** | Detalhe do Nó/Setor   | Informações detalhadas sobre a célula selecionada no mapa      |
| **P5** | Log de Expedição      | Logs de eventos que ocorrem longe da capital                   |
| **P6** | Comandos de Expedição | Ações de alto nível estratégico (Fundar Posto, Mover Capital)  |
| **P7** | Estratégia Global     | Sistema de comandos intuitivo (menu numérico) para ações       |

### Layout Visual Completo

```

+---------------------+------------------------------------------+---------------------+
| P1: DOMÍNIOS REAIS  |        P2: MAPA VISUAL (ÍCONES)          | P3: PREVISÃO GLOBAL |
| > CAPITAL (Sede)    |                                          |                     |
| Regente: Você       | [~] [~] [M] [M] [F] [F] [C]              | -- CICLO ATUAL --   |
| Pop: 12/12          | [~] [P] [.] [.] [F] [T] [C]              | Ciclo: 2 de 4       |
| Ouro: 100% Taxa     | [~] [.] [V] [.] [.] [.] [M]              | Tipo: "Verão"       |
|                     | [~] [.] [.] [R] [R] [.] [M]              | Monstros: T2 (Médio)|
| > POSTO NORTE       | [M] [M] [F] [R] [?] [?] [?]              |                     |
| Capitão: Rurik      | [M] [C] [F] [?] [?] [?] [?]              | -- TEMPO --         |
| Status: AUTÓNOMO    |                                          | Próx. Evento:       |
| Lealdade: 80%       | Legenda:                                 | "Lua de Sangue"     |
| (Vassalo)           | [V]ila [.]Campo [F]loresta               | Em: 05:00 min       |
|                     | [M]ont [~]Água [C]averna                 |                     |
| > POSTO LESTE       | [T]orre [P]osto [R]uínas                 | -- AMEAÇAS --       |
| (Destruído)         | [?]Névoa                                 | [!] Invasão Norte   |
|                     |                                          | [!] Peste na Vila   |
+---------------------+------------------------------------------+---------------------+
| P4: DETALHE DO NÓ | P5: LOG DE EXPEDIÇÃO | P6: COMANDOS EXP. |
| Coords: X:5 Y:8 | [GLOBAL] Novo ciclo iniciado: Chuvas. | [N] Novo Posto |
| Bioma: Floresta | [POSTO] Rurik solicita reforços (Ouro). | [M] Mover Capital |
| Dono: Neutro | [EVENTO] Terramoto abriu passagem em C4. | [E] Enviar Espião |
| Recurso: Madeira | [EXPLOR] Lila descobriu "Ruínas Antigas".| [D] Diplomacia |
| | [ALERTA] Movimento inimigo no setor Norte| |
| Ameaça: Alta (ursus)| | (Use teclas) |
+---------------------+------------------------------------------+---------------------+
| P7: ESTRATÉGIA GLOBAL (MODO CONQUISTA) |
| IA: "Majestade, o Capitão Rurik está a pedir ouro. Se recusarmos, a lealdade dele |
| cairá. Além disso, a Lua de Sangue aproxima-se. Devemos recuar os batedores?" |
| |
| > /send gold 500 posto*norte* |
+--------------------------------------------------------------------------------------+

```

### Interação e UX (F4)

#### P2 (Mapa Visual)

- **Teclado:** WASD ou Setas movem um cursor piscante sobre os tiles. O painel P4 atualiza instantaneamente com os dados da célula sob o cursor
- **Mouse:** Hover sobre um tile mostra tooltip rápido (ex: "Floresta - Madeira"). Clique seleciona e atualiza P4 com detalhes completos

#### P1 (Domínios)

- **Atalho:** Clicar/Selecionar um Posto na lista centra o cursor do mapa (P2) na localização daquele posto

#### P6 (Comandos de Expedição)

- **Menu Numérico Intuitivo:** Ao invés de comandos de texto, usa **menu contextual** baseado na seleção do mapa
- **Contextual:** As opções mudam baseadas no cursor do mapa (P2)
  - Se cursor em Espaço Vazio: Opção `[1] Fundar Novo Posto`
  - Se cursor em Posto: Opção `[2] Diplomacia` ou `[3] Enviar Suprimentos`

---

### P2 - Mapa Visual com Tiles e Ícones

**IMPORTANTE:** O mapa será composto de **imagens quadradas** (tiles) representando cada tipo de terreno.

#### Sistema de Tiles

**Cada célula do mapa** é uma imagem 64x64px que representa o bioma:

```typescript
// Exemplo de estrutura
interface MapTile {
  coord: { x: number; y: number };
  biome: "FLORESTA" | "MONTANHA" | "PLANICIE" | "AGUA" | "CAVERNA";
  imageUrl: string; // 'assets/tiles/floresta.png'
  owner: "PLAYER" | "NEUTRAL" | "ENEMY";
  resource: "MADEIRA" | "PEDRA" | "OURO" | null;
  poi: PointOfInterest | null; // Ponto de interesse
}
```

#### Tiles Disponíveis

| Bioma        | Imagem         | Cor Base      | Ícone Sobreposto |
| ------------ | -------------- | ------------- | ---------------- |
| **Floresta** | `floresta.png` | Verde escuro  | 🌲 (madeira)     |
| **Montanha** | `montanha.png` | Cinza         | ⛰️ (pedra)       |
| **Planície** | `planicie.png` | Verde claro   | 🌾 (fazenda)     |
| **Água**     | `agua.png`     | Azul          | 💧               |
| **Caverna**  | `caverna.png`  | Marrom escuro | ⛏️ (minério)     |
| **Pântano**  | `pantano.png`  | Verde lama    | 🌿 (ervas)       |
| **Deserto**  | `deserto.png`  | Amarelo       | 🏜️ (ouro)        |
| **Névoa**    | `nevoa.png`    | Cinza escuro  | ❓               |

#### Ícones de Pontos de Interesse (POI)

Além do tile base, **ícones são sobrepostos** para indicar estruturas:

```html
<!-- Exemplo de tile com ícone -->
<div
  class="map-tile"
  [style.background-image]="'url(assets/tiles/floresta.png)'"
>
  <img class="poi-icon" src="assets/icons/tower.png" alt="Torre" />
</div>
```

| POI                | Ícone            | Descrição                         |
| ------------------ | ---------------- | --------------------------------- |
| **Vila (Capital)** | 🏰 `castle.png`  | Casa Central (dourado)            |
| **Posto Avançado** | 🏕️ `outpost.png` | Posto (prata)                     |
| **Torre de Vigia** | 🗼 `tower.png`   | Torre (vermelho)                  |
| **Boss Lair**      | 💀 `skull.png`   | Covil de Boss (vermelho pulsante) |
| **Ruínas**         | 🏛️ `ruins.png`   | Ruínas antigas (cinza)            |
| **Monstros**       | 👾 `monster.png` | Grupo de monstros (animado)       |
| **Heróis**         | ⚔️ `hero.png`    | Heróis explorando (azul)          |
| **Evento Ativo**   | ⚡ `event.png`   | Evento global (amarelo piscante)  |

#### Exemplo Visual do Mapa

```
P2: MAPA DO MUNDO (7x7 Grid)

+-------------------------------------------+
| [🌊] [🌊] [⛰️] [⛰️] [🌲] [🌲🗼] [⛏️] |
| [🌊] [🌲🏕️] [🌾] [🌾] [🌲] [🌲] [⛏️] |
| [🌊] [🌾] [🏰] [🌾] [🌾] [🌾] [⛰️] | ← Cursor aqui
| [🌊] [🌾] [🌾] [🏛️] [🏛️] [🌾] [⛰️] |
| [⛰️] [⛰️] [🌲] [🏛️] [❓] [❓] [❓] |
| [⛰️] [⛏️] [🌲] [❓] [❓] [❓] [❓] |
| [🌲] [🌲] [🌲] [❓] [❓] [❓] [❓] |
+-------------------------------------------+

Legenda:
🏰 = Vila (Capital)
🏕️ = Posto Avançado
🗼 = Torre de Vigia
🏛️ = Ruínas Antigas
❓ = Névoa de Guerra (inexplorado)
```

#### Estados Visuais dos Tiles

**1. Normal**

```css
.map-tile {
  opacity: 1;
  filter: brightness(1);
}
```

**2. Selecionado (Cursor)**

```css
.map-tile.selected {
  border: 3px solid #00ffff;
  box-shadow: 0 0 10px #00ffff;
  transform: scale(1.1);
}
```

**3. Névoa de Guerra**

```css
.map-tile.fog {
  opacity: 0.3;
  filter: grayscale(100%);
}
```

**4. Ameaça Ativa**

```css
.map-tile.threat {
  border: 2px solid #ff0000;
  animation: pulse 1s infinite;
}
```

---

### P3 - Previsão Global: Eventos e Clima

#### Layout Expandido

```
P3: PREVISÃO GLOBAL

+--------------------------------------+
|  CICLO ATUAL (1/3)                   |
+--------------------------------------+
| Nome: "Primavera"                    |
| Dias: 1-50 (Dia atual: 23)           |
| Monstros: Tier 1 (Goblins, Lobos)    |
| Clima: Neutro                        |
+--------------------------------------+

▼ PRÓXIMOS EVENTOS AGENDADOS
+--------------------------------------+
| [EM 04:32] 🌙 Lua de Sangue          |
|            (Evento Global Maior)     |
|                                      |
| [EM 12:00] 🌧️ Tempestade              |
|            (Dura 5 min)              |
|                                      |
| [EM 1 DIA] 🌋 Terremoto                |
|            (Abre novas passagens)    |
+--------------------------------------+

▼ CLIMA ATIVO
+--------------------------------------+
| Atual: ☀️ Ensolarado                  |
| Duração: Permanente                  |
| Efeitos: Normal                      |
+--------------------------------------+

▼ AMEAÇAS ATIVAS
+--------------------------------------+
| [!] Invasão: Horda Goblin (Norte)    |
|     ETA: 02:15                       |
|     Força: 25 Goblins                 |
|                                      |
| [!] Boss: Ogro Rei (Caverna X:5 Y:8)|
|     Status: Patrulhando              |
|     Risco: EXTREMO                   |
+--------------------------------------+
```

---

### Lista Completa de Eventos Globais

#### Categorias de Eventos

**1. EVENTOS CLIMÁTICOS**

| Evento             | Frequência     | Duração       | Efeitos                                                   |
| ------------------ | -------------- | ------------- | --------------------------------------------------------- |
| **☀️ Sol Intenso** | Aleatório      | 10 min        | +20% Stamina heróis, -10% HP monstros noturnos            |
| **🌧️ Tempestade**  | A cada 10 dias | 5 min         | Magos +50% poder, Arqueiros -30% acurácia, Torres offline |
| **❄️ Nevasca**     | Ciclo 3        | 8 min         | -20% velocidade todos, Monstros gelo +50% stats           |
| **🌪️ Tornado**     | Raro (5%)      | 3 min         | Destrói construções aleatórias (exceto Casa Central)      |
| **🌫️ Névoa Densa** | Noturno        | Até amanhecer | Visibilidade -70%, Heróis perdem direção                  |

**2. EVENTOS GEOLÓGICOS**

| Evento                 | Frequência     | Duração     | Efeitos                                            |
| ---------------------- | -------------- | ----------- | -------------------------------------------------- |
| **🌋 Terremoto**       | A cada 15 dias | Instantâneo | Abre novas passagens, 5% chance destruir prédio    |
| **🌋 Terremoto Maior** | Raro           | Instantâneo | Muda geografia (novos biomas), 20% destruir prédio |
| **🌋 Fenda no Chão**   | Após terremoto | Permanente  | Cria barren intransponível no mapa                 |
| **🌋 Erupção Vulcão**  | Se há vulcão   | 10 min      | Spawna Elementais de Fogo, +50% dano fogo global   |

**3. EVENTOS MÁGICOS**

| Evento                   | Frequência         | Duração | Efeitos                                            |
| ------------------------ | ------------------ | ------- | -------------------------------------------------- |
| **🔮 Fenda Mágica**      | 5%/dia (Ciclo 2+)  | 10 min  | Portal spawna 10-20 monstros elite                 |
| **🌙 Lua de Sangue**     | Dias 100, 125, 150 | 15 min  | Todos monstros +100% HP/Attack, Boss Global spawna |
| **✨ Chuva de Estrelas** | Raro (3%)          | 5 min   | +50% XP global, Chance loot lendário dobra         |
| **🕯️ Eclipse**           | Ciclo 3            | 8 min   | Mortos-vivos +200% poder, Sol = Noite              |

**4. EVENTOS DE INVASÃO**

| Evento                       | Frequência         | Duração     | Efeitos                               |
| ---------------------------- | ------------------ | ----------- | ------------------------------------- |
| **👾 Horda Goblin**          | A cada 20 dias     | Até repelir | 30-50 Goblins atacam capital          |
| **👹 Invasão Ogro**          | Ciclo 2            | Até repelir | 15-25 Ogros cerco à vila              |
| **💉 Praga de Mortos-Vivos** | Após muitas mortes | Permanente  | Heróis mortos reanimam como inimigos  |
| **🐉 Ataque de Dragão**      | Ciclo 3            | Boss fight  | Dragão ataca diretamente Casa Central |

**5. EVENTOS ECONÔMICOS/SOCIAIS**

| Evento                   | Frequência      | Duração      | Efeitos                                 |
| ------------------------ | --------------- | ------------ | --------------------------------------- |
| **💰 Caravana Mercante** | Aleatório       | 5 min        | Desconto -30% em todos os itens da loja |
| **🎭 Festival da Vila**  | A cada 30 dias  | 10 min       | +20 Moral, Heróis não lutam (descansam) |
| **⚖️ Motim**             | Se Moral < 30%  | Até resolver | Guardas desertam, Heróis podem trair    |
| **🎖️ Lenda Nasce**       | Herói 50+ kills | Permanente   | +10% Recrutamento, -20% custo skills    |

**6. EVENTOS DE BOSS**

| Evento                     | Frequência         | Duração      | Efeitos                                  |
| -------------------------- | ------------------ | ------------ | ---------------------------------------- |
| **💀 Castelo Amaldiçoado** | Dia 5 (Ciclo 3)    | Até derrotar | Herói caído vira Rei Vilão + exército    |
| **🐊 Leviatã Desperta**    | Se há água         | Boss fight   | Boss aquático gigante bloqueia navegação |
| **🧛 Nêmesis Ressurge**    | Após matar Nêmesis | Boss fight   | Nêmesis volta 2x mais forte              |

#### Sistema de Agendamento

```typescript
interface EventoGlobal {
  id: string;
  tipo: "CLIMATICO" | "GEOLOGICO" | "MAGICO" | "INVASAO" | "ECONOMICO" | "BOSS";
  nome: string;
  diaInicio: number; // Ou null se aleatório
  duracao: number; // Em minutos
  efeitos: Efeito[];
  cancelavel: boolean;
  prioridade: 1 | 2 | 3; // 3 = mais importante
}

// Exemplo de evento agendado
const luaDeSangue: EventoGlobal = {
  id: "blood_moon_1",
  tipo: "MAGICO",
  nome: "Lua de Sangue",
  diaInicio: 100,
  duracao: 15,
  efeitos: [
    { tipo: "MONSTER_BUFF", valor: 2.0 }, // +100%
    { tipo: "SPAWN_BOSS", bossId: "cursed_king" },
  ],
  cancelavel: false,
  prioridade: 3,
};
```

---

### P4 - Detalhe do Nó/Setor (Completo)

#### Informações Mostradas ao Selecionar Tile

```
P4: DETALHE DO NÓ
Coordenadas: X:5, Y:8

+--------------------------------------+
|  BIOMA: FLORESTA 🌲                 |
+--------------------------------------+
| Tipo: Terreno natural                |
| Acessibilidade: Normal (caminhado por heróis) |
| Exploração: 100% (já visitado)         |
+--------------------------------------+

▼ PROPRIEDADE
+--------------------------------------+
| Dono: NEUTRO                         |
| Controle: Ninguém                    |
| Disputado: Não                       |
+--------------------------------------+

▼ RECURSOS DISPONÍVEIS
+--------------------------------------+
| Primário: 🌲 Madeira (Abundante)     |
| Secundário: 🌿 Ervas Medicinais      |
| Extração: Automática (heróis coletam) |
+--------------------------------------+

▼ AMEAÇAS PRESENTES
+--------------------------------------+
| [!] 3x Lobos (Lvl 5-7)               |
|     Status: Patrulhando              |
|     Risco: MÉDIO                     |
|                                      |
| [!] 1x Urso Pálido (Lvl 10 - Elite) |
|     Status: Dormindo (covil próximo)|
|     Risco: ALTO                      |
+--------------------------------------+

▼ PONTOS DE INTERESSE
+--------------------------------------+
| [🏛️] Ruínas Antigas (inexploradas)  |
|     Loot estimado: Médio-Alto       |
|     Guardado por: Lobos              |
+--------------------------------------+

▼ HERÓIS NESTA ÁREA
+--------------------------------------+
| Lila Rogue (Explorando)              |
| Status: Saudável | HP: 85%          |
| Ação: Procurando recursos           |
+--------------------------------------+

▼ AÇÕES DISPONÍVEIS
+--------------------------------------+
| [E]  Enviar heróis para cá (scout) |
| [C]  Construir Torre de Vigia        |
| [M]  Marcar como ponto de interesse  |
| [ESC] Voltar                         |
+--------------------------------------+
```

#### Tipos de Nós Especiais

**Nó com Boss:**

```
▼ BOSS DETECTADO!
+--------------------------------------+
| 💀 OGRO REI "Grok, O Devorador"     |
+--------------------------------------+
| Nível: 15 (Elite Maior)              |
| HP: 5,000                            |
| Attack: 200                          |
| Guarda: "Baú Lendário"             |
| Risco: EXTREMO 🔴🔴🔴                |
+--------------------------------------+
| RECOMPENSA ESTIMADA:                 |
| 💰 2,000-3,000 Ouro                  |
| ⚔️ Item Lendário (95% chance)       |
+--------------------------------------+
```

**Nó com Posto Avançado:**

```
▼ POSTO AVANÇADO: "Bastilha Norte"
+--------------------------------------+
| Capitão: Rurik, O Leal              |
| Heróis: 3/5 (Rurik, Elara, Thorgrim)|
| Lealdade: 80% (Vassalo)              |
| Tributo: 20% ouro                    |
+--------------------------------------+
| PRODUÇÃO DIÁRIA:                      |
| +150g Ouro                           |
| +30g Tributo enviado à capital       |
+--------------------------------------+
| PEDIDOS ATIVOS:                      |
| [!] Rurik pediu 500g para upgrade    |
|     Prazo: 2 dias                    |
+--------------------------------------+
```

---

### P5 - Identificadores de Logs de Expedição

#### Lista Completa de Tags

| Identificador    | Cor                       | Categoria        | Uso                             | Exemplo                                    |
| ---------------- | ------------------------- | ---------------- | ------------------------------- | ------------------------------------------ |
| **[GLOBAL]**     | Roxo (#AA00FF)            | Eventos Globais  | Eventos que afetam todo o mundo | `[GLOBAL] Lua de Sangue iniciada!`         |
| **[POSTO]**      | Azul (#0080FF)            | Postos Avançados | Ações e pedidos de postos       | `[POSTO] Rurik solicita reforços`          |
| **[EVENTO]**     | Amarelo (#FFFF00)         | Eventos Locais   | Eventos específicos em áreas    | `[EVENTO] Terremoto abriu passagem C4`     |
| **[EXPLOR]**     | Verde (#00FF00)           | Exploração       | Heróis descobrindo coisas       | `[EXPLOR] Lila descobriu Ruínas Antigas`   |
| **[ALERTA]**     | Vermelho (#FF0000)        | Alertas          | Ameaças e perigos               | `[ALERTA] Movimento inimigo setor Norte`   |
| **[COMBATE]**    | Laranja (#FFA500)         | Combate Remoto   | Lutas longe da capital          | `[COMBATE] Kaelen vs 5 Goblins (vitória)`  |
| **[DIPLOMACIA]** | Ciano (#00FFFF)           | Política         | Negociações e acordos           | `[DIPLOMACIA] Posto Norte agora é Vassalo` |
| **[MORTE]**      | Vermelho Escuro (#8B0000) | Heroes caídos    | Mortes longe da capital         | `[MORTE] Gandalf morreu em exploração`     |
| **[BOSS]**       | Magenta (#FF00FF)         | Boss Detectado   | Boss avistado ou derrotado      | `[BOSS] Dragão detectado em X:10 Y:15!`    |
| **[CONQUISTA]**  | Dourado (#FFD700)         | Vitórias         | Território conquistado          | `[CONQUISTA] Caverna agora é sua!`         |

#### Exemplo de Log Real (P5)

```
P5: LOG DE EXPEDIÇÃO

[14:02] 👣 MOVE [Lila] [X:5 Y:8] Reconhecimento iniciado.
[14:05] 🌅 SYS [Global] [☄️ Meteoros] Dura 5min.
[14:07] 👣 MOVE [Lila] [Ruínas Antigas] Descoberta!
[14:10] ⚔️ ATK [Lila ⚔️ 3 Lobos Pálidos] [Em andamento] Combate remoto.
[14:12] 💀 KILL [Lila] [Vitória!] +300 XP, +150g.
[14:15] ⚠️ ALERT [Global] [💀 Boss] Ogro Rei detectado X:5 Y:8!
[14:20] 📩 MAIL [Rurik ➜ Majesty] Detectei horda Goblin. Pedindo 500g.
[14:25] 🌅 SYS [Global] [Terremoto] Passagem C4-D5 aberta.
[14:30] 💀 KILL [Heróis ⚔️ Ogro Rei] [Iniciado] Ataque ao boss.
[14:35] 💀 KILL [Ogro Rei ⚔️ Elara] [☼️] Elara caiu em combate.
[14:40] 💀 KILL [Heróis] [Boss Derrotado!] +2,500g + Machado Lendário.
```

---

### P6 - Comandos de Expedição: Lista Completa

#### Todos os Comandos Disponíveis

**COMANDOS BÁSICOS:**

| Tecla/Número     | Comando             | Descrição                       | Requisitos                      |
| ---------------- | ------------------- | ------------------------------- | ------------------------------- |
| **[1] ou [N]**   | Novo Posto          | Fundar Posto Avançado           | 3 heróis + 1,000g + tile válido |
| **[2] ou [M]**   | Mover Capital       | Transferir capital para Posto   | Posto Lealdade 100% + 5 heróis  |
| **[3] ou [E]**   | Enviar Espião       | Scout invisível para área       | 1 Ladino + 100g                 |
| **[4] ou [D]**   | Diplomacia          | Negociar com Posto/Facção       | Posto ou facção neutra          |
| **[5] ou [S]**   | Enviar Suprimentos  | Mandar ouro/itens para Posto    | Posto ativo                     |
| **[6] ou [A]**   | Atacar Nó           | Enviar heróis para limpar área  | Heróis disponíveis              |
| **[7] ou [C]**   | Construir Torre     | Torre de Vigia remota           | 300g + tile controlado          |
| **[8] ou [R]**   | Reclamar Território | Assumir controle de tile neutro | Tile limpo de monstros          |
| **[9] ou [I]**   | Investigar          | Revelar tile com Névoa          | 50g                             |
| **[0] ou [ESC]** | Cancelar            | Fechar menu                     | Sempre                          |

**COMANDOS AVANÇADOS:**

| Comando                         | Descrição                           | Custo IP | Requisitos             |
| ------------------------------- | ----------------------------------- | -------- | ---------------------- |
| **/teleport_hero [nome] [X,Y]** | Teleportar herói para tile          | 50 IP    | Tile explorado         |
| **/recall_all**                 | Chamar todos heróis de volta        | 30 IP    | Sempre                 |
| **/fortify [X,Y]**              | Fortificar tile com defesas         | 500g     | Tile controlado        |
| **/sabotage [posto]**           | Enviar sabotador para posto inimigo | 1,000g   | Ladino + Posto inimigo |

#### Exemplo de Uso: Fundar Posto

**Método 1: Menu Numérico (Recomendado)**

1.  Jogador seleciona tile vazio no P2 (ex: X:10 Y:5)
2.  Menu contextual aparece automaticamente no P6:

    ```
    +--------------------------------------+
    |  AÇÕES DISPONÍVEIS (X:10 Y:5)         |
    +--------------------------------------+
    | [1] Fundar Novo Posto                |
    |     Custo: 1,000g                    |
    |     Requer: 3 heróis                 |
    |                                      |
    | [2] Construir Torre de Vigia         |
    |     Custo: 300g                      |
    |                                      |
    | [3] Marcar como Objetivo             |
    |     Custo: Gratis                    |
    |                                      |
    | [ESC] Cancelar                       |
    +--------------------------------------+
    Digite o número: _
    ```

3.  Jogador digita `1`
4.  Submenu abre:

    ```
    +--------------------------------------+
    |  FUNDAR POSTO AVANÇADO               |
    +--------------------------------------+
    | Localização: X:10 Y:5 (Floresta)     |
    | Custo: 1,000g                        |
    |                                      |
    | Escolha 3 heróis:                   |
    | [1] Sir Kaelen (Lvl 9)               |
    | [2] Lila Rogue (Lvl 7)               |
    | [3] Gandalf (Lvl 6)                  |
    | [4] Elara (Lvl 5)                    |
    | ...                                  |
    |                                      |
    | Digite 3 números separados por vírgula: |
    | Ex: 1,2,3_                           |
    +--------------------------------------+
    ```

5.  Jogador digita `1,2,3`
6.  Confirmação final:

    ```
    +--------------------------------------+
    |  CONFIRMAR FUNDAÇÃO?                  |
    +--------------------------------------+
    | Heróis escolhidos:                   |
    | - Sir Kaelen (Capitão)              |
    | - Lila Rogue                         |
    | - Gandalf                            |
    |                                      |
    | Custo: 1,000g                        |
    | Saldo após: 500g                    |
    |                                      |
    | [ENTER] Confirmar | [ESC] Cancelar   |
    +--------------------------------------+
    ```

**Método 2: Comando de Texto (Avançado)**

```
Jogador (P7): /found_outpost X:10 Y:5 heroes:kaelen,lila,gandalf

Conselheiro: "Iniciando fundação do Posto Avançado em X:10 Y:5.
Custo: 1,000g. Heróis: Kaelen (Capitão), Lila, Gandalf.
Tempo de construção: 60 segundos."
```

---

### P7 - Sistema de Comandos Intuitivo

#### Filosofia: Menu Numérico > Comandos de Texto

**Problema com comandos de texto:**

- Exige memorização
- Sintaxe complexa (`/send gold 500 posto_norte`)
- Propenso a erros de digitação

**Solução: Menu Contextual**

- Todas as ações disponíveis mostradas visualmente
- Jogador escolhe número ou tecla de atalho
- Submenus guiam o processo

#### Exemplo Completo: Enviar Ouro para Posto

**Passo 1:** Jogador seleciona Posto no mapa (P2) ou na lista (P1)

**Passo 2:** Menu aparecer no P7:

```
+--------------------------------------+
|  POSTO NORTE - AÇÕES                 |
+--------------------------------------+
| [1] Enviar Ouro                      |
| [2] Enviar Suprimentos (Poções)      |
| [3] Enviar Herói (Reforço)          |
| [4] Diplomacia (Negociar)            |
| [5] Recall (Trazer de volta)         |
| [ESC] Cancelar                       |
+--------------------------------------+
Escolha: _
```

**Passo 3:** Jogador digita `1`

**Passo 4:** Submenu:

```
+--------------------------------------+
|  ENVIAR OURO PARA POSTO NORTE        |
+--------------------------------------+
| Saldo atual: 1,500g                  |
|                                      |
| Quanto enviar?                       |
| [1] 100g   (Mínimo)                  |
| [2] 500g   (Recomendado)             |
| [3] 1,000g (Muito)                   |
| [4] Custom (Digite valor)            |
| [ESC] Cancelar                       |
+--------------------------------------+
Escolha: _
```

**Passo 5:** Jogador escolhe `2` (500g)

**Passo 6:** Confirmação:

```
+--------------------------------------+
|  CONFIRMAR ENVIO?                    |
+--------------------------------------+
| Destino: Posto Norte                 |
| Valor: 500g                          |
| Saldo após: 1,000g                  |
|                                      |
| Efeito esperado:                     |
| Lealdade: 80% → 90% (+10%)          |
|                                      |
| [ENTER] Confirmar | [ESC] Cancelar   |
+--------------------------------------+
```

**Passo 7:** Jogador pressiona ENTER

**Passo 8:** Feedback:

```
[P5 LOG]
[14:35] [POSTO] Ouro enviado: 500g → Posto Norte
[14:35] [DIPLOMACIA] Lealdade do Posto Norte: 80% → 90%

[P7 Conselheiro]
"Ouro enviado com sucesso. Capitão Rurik agradece.
Lealdade aumentou para 90%. Eles estão satisfeitos."
```

#### Comandos de Texto (Opcional para Experts)

Jogadores avançados ainda podem usar comandos de texto no P7:

```
Jogador: /send gold 500 posto_norte

(Sistema interpreta e executa diretamente sem menus)
```

**Autocomplete:**

- Ao digitar `/send`, mostra sugestões
- Tab completa automaticamente
- Histórico de comandos (Seta Cima)

---

---

## 2.7 [F5] THE AVIARY - "Royal Mail"

**Foco:** Histórico de Cartas, Gestão de Relacionamento e Arquivo de Mensagens

**Metáfora:** Um cliente de e-mail retro-futurista misturado com um pombal medieval

![F5 THE AVIARY - Royal Mail](<../anexos/[F5]%20THE%20AVIARY%20(_Royal%20Mail_).png>)

### Descrição dos Painéis

| Painel | Nome                     | Conteúdo                                                    |
| ------ | ------------------------ | ----------------------------------------------------------- |
| **P1** | Caixa de Correio         | Pastas (Inbox, Sent, Drafts). Lista de mensagens com status |
| **P2** | Leitura de Mensagem      | Visualiza o conteúdo da carta e a thread anterior           |
| **P3** | Perfil do Alvo           | Avatar do remetente/destinatário, humor atual e Custo de IP |
| **P4** | Lista de Contatos        | Lista rápida de Heróis e NPCs para iniciar nova mensagem    |
| **P5** | Rascunho Atual (Editor)  | Área de texto livre para compor mensagem                    |
| **P6** | Ações de Envio           | Enter=Enviar, S=Salvar, T=Anexar Ouro                       |
| **P7** | Status da Rede de Corvos | Feedback sobre corvos em voo e tempo estimado de resposta   |

### Layout Visual Completo

```

+---------------------+------------------------------------------+---------------------+
| P1: CAIXA DE CORREIO|     P2: LEITURA DE MENSAGEM              | P3: PERFIL DO ALVO  |
| > CAIXA DE ENTRADA  | DE: Sir Kaelen (Guerreiro)               | [IMG] Kaelen        |
| [1] Sir Kaelen (N)  | PARA: Vossa Majestade                    | (Avatar)            |
|     "Sobre o Ouro"  | DATA: Dia 4 - 14:02                      | Status: EM COMBATE  |
|     14:02           | ASSUNTO: Re: Covardia                    | Humor: Irritado     |
|                     |                                          | Lealdade: 45% (Baixa|
| [2] Lila Rogue      | "Majestade, com todo o respeito, chamar  | Última Carta:       |
|     "Pedido..."     | retirada estratégica de 'covardia' é     | Há 2 dias (Ignorada)|
|     Ontem           | fácil para quem está sentado no trono.   |                     |
|                     | O Ogro tinha vantagem de terreno!"       | Custo Envio:        |
| > ENVIADOS          |                                          | 25 IP (Influência)  |
| [3] P/ Conselheiro  | [ANEXO: Relatório de Danos.log]          |                     |
|                     |                                          |                     |
| > RASCUNHOS         | ---------------------------------------- |                     |
| (Vazio)             | > [R] RESPONDER  > [A] ARQUIVAR          |                     |
+---------------------+------------------------------------------+---------------------+
| P4: LISTA CONTATOS  |     P5: RASCUNHO ATUAL (EDITOR)          | P6: AÇÕES DE ENVIO  |
| [H] Sir Kaelen      | PARA: Sir Kaelen                         | [Enter] Enviar      |
| [H] Lila Rogue      |                                          | [S] Salvar Rascunho |
| [H] Gandalf         | "Entendo seu ponto, Kaelen. Mas preciso  | [D] Descartar       |
| [N] Conselheiro     | que você volte lá. Vou enviar poções."_  | [T] Anexar Ouro     |
| [E] Guilda Mercante |                                          |                     |
|                     | (Digite sua mensagem aqui...)            |                     |
+---------------------+------------------------------------------+---------------------+
| P7: STATUS DA REDE DE CORVOS |
| STATUS: 2 Pássaros em voo. |
| NOTIF: A resposta de Lila deve chegar em 30 segundos. |
| > /send_ |
+--------------------------------------------------------------------------------------+

```

### UX & Interação (F5)

#### P1 (Inbox)

- **Teclado:** Setas Cima/Baixo navegam. Enter abre a mensagem no P2
- **(N)** indica Não Lida

#### P2 (Leitura)

- Mostra a thread (conversa) anterior em scroll

#### P5 (Editor)

- Área de texto livre para composição

#### P6 (Ações)

- **T** abre um modal numérico para anexar Ouro à carta (suborno/ajuda)

---

### P3 - Perfil do Alvo (Detalhado)

#### O Que é Mostrado no P3

Quando o jogador seleciona um herói para enviar uma carta (seja no P4 ou após ler uma mensagem no P2), o **P3** mostra um **perfil completo** daquele herói.

#### Layout Completo do P3

```
P3: PERFIL DO ALVO

+--------------------------------------+
|  [AVATAR] SIR KAELEN                 |
|  Guerreiro | Nível 9                 |
+--------------------------------------+

▼ STATUS ATUAL (TEMPO REAL)
+--------------------------------------+
| Estado: ⚠️ EM COMBATE                 |
| Localização: Floresta Norte (X:5 Y:8) |
| HP: 65% (Ferido)                     |
| Atividade: Lutando vs Ogro Rei       |
| Última atualização: Há 5 segundos       |
+--------------------------------------+

▼ ESTADO EMOCIONAL
+--------------------------------------+
| Humor: 😠 IRRITADO                   |
| Moral: 45/100 (Baixo)                |
| Lealdade: 65/100 (Média)             |
|                                      |
| Razão: "Você o chamou de covarde     |
|          na última carta"             |
+--------------------------------------+

▼ RELACIONAMENTO COM VOCÊ
+--------------------------------------+
| Affinity: +45 (Companheiro)          |
| Confiança: Média                      |
| Respeito: Alto                       |
| Medo: Nenhum                         |
|                                      |
| Tendência de resposta: 60%           |
| (Se enviar carta agora)              |
+--------------------------------------+

▼ HISTÓRICO DE CORRESPONDÊNCIA
+--------------------------------------+
| Total de cartas trocadas: 8          |
| Enviadas por você: 5                |
| Recebidas dele: 3                    |
|                                      |
| Última carta:                        |
| Data: Há 2 dias (Dia 2)              |
| Assunto: "Sobre o Ouro"              |
| Resposta: Ignorada por ele           |
| Tom: Neutro                          |
+--------------------------------------+

▼ CONTEXTO DA SITUAÇÃO ATUAL
+--------------------------------------+
| Kaelen está em maus lençóis:        |
| > Lutando contra boss sozinho        |
| > HP crítico (65%)                   |
| > Sem poções no inventário          |
|                                      |
| Se enviar carta AGORA:               |
| Chance de ele ler: 30% (em combate)  |
| Melhor esperar? Sim (após combate)  |
+--------------------------------------+

▼ CUSTO DE ENVIO
+--------------------------------------+
| Influence Points: 25 IP              |
| Saldo atual: 75/100 IP               |
| Saldo após envio: 50/100 IP         |
|                                      |
| Tempo estimado de entrega: 15s       |
| Distância: 8 hexágonos da capital    |
+--------------------------------------+

▼ SUGESTÕES DO CONSELHEIRO
+--------------------------------------+
| 🧠 Conselheiro sugere:               |
| "Kaelen está irritado com você.      |
|  Evite críticas diretas. Elogie      |
|  sua bravura primeiro, depois peça   |
|  que continue lutando. Considere     |
|  anexar 100g como gestão de boa fé." |
+--------------------------------------+

[AÇÕES]
[ENTER] Começar a escrever (P5)
[ESC] Voltar
```

#### Breakdown de Cada Seção do P3

**1. AVATAR E IDENTIFICAÇÃO**

- **Avatar:** Imagem pixel art 64x64 do herói (varia por classe)
- **Nome:** Nome completo do herói
- **Classe e Nível:** Informação básica

**2. STATUS ATUAL (Tempo Real)**

| Campo                  | Descrição                        | Valores Possíveis                                                                   |
| ---------------------- | -------------------------------- | ----------------------------------------------------------------------------------- |
| **Estado**             | O que o herói está fazendo AGORA | ⚔️ EM COMBATE, 🛏️ DESCANSANDO, 🚶 EXPLORANDO, 🛡️ DEFENDENDO, 🛒 COMPRANDO, 💀 MORTO |
| **Localização**        | Onde ele está no mapa            | Nome do bioma + coordenadas (X, Y)                                                  |
| **HP**                 | Saúde atual                      | Percentual (cor: verde >70%, amarelo 30-70%, vermelho <30%)                         |
| **Atividade**          | Descrição do que ele faz         | "Lutando vs Ogro Rei", "Salvando Lila", "Bebendo na taverna"                        |
| **Última atualização** | Quão recente é essa info         | "Há 5 segundos", "Há 1 minuto" (atualiza em tempo real)                             |

**3. ESTADO EMOCIONAL**

| Campo        | Descrição                    | Valores                                                               |
| ------------ | ---------------------------- | --------------------------------------------------------------------- |
| **Humor**    | Emoção atual do herói        | 😄 FELIZ, 😐 NEUTRO, 😠 IRRITADO, 😨 ASSUSTADO, 😔 TRISTE, 😈 FURIOSO |
| **Moral**    | Motivação geral (0-100)      | Valor numérico + etiqueta (Baixo/Médio/Alto)                          |
| **Lealdade** | Lealdade ao reino (0-100)    | Valor numérico + cor (verde >70, amarelo 40-70, vermelho <40)         |
| **Razão**    | Por que ele está nesse humor | Texto explicativo gerado pela IA                                      |

**Exemplos de Razões:**

- "Acabou de matar um boss (orgulhoso)"
- "Lila tomou seu kill (irritado)"
- "Você enviou ouro (agradecido)"
- "Ignorou pedido de ajuda (ressentido)"

**4. RELACIONAMENTO COM VOCÊ**

| Campo                     | Descrição                            | Range                                       |
| ------------------------- | ------------------------------------ | ------------------------------------------- |
| **Affinity**              | Gosto pessoal pelo Majesty           | -100 a +100 (Inimigo ↔ Inseparável)         |
| **Confiança**             | Acredita nas suas decisões           | Nenhuma / Baixa / Média / Alta / Absoluta   |
| **Respeito**              | Te vê como líder                     | Nenhum / Baixo / Médio / Alto / Reverencial |
| **Medo**                  | Tem medo de você                     | Nenhum / Leve / Moderado / Terror           |
| **Tendência de resposta** | Probabilidade de ele LER e RESPONDER | 0-100%                                      |

**Fórmula da Tendência:**

```typescript
const tendencia =
  (affinity / 100) * 40 + // 40% baseado em affinity
  (lealdade / 100) * 30 + // 30% baseado em lealdade
  (estadoAtual === "LIVRE" ? 30 : 0); // 30% se não ocupado

// Exemplo: Affinity +50, Lealdade 80, em combate
// = (0.5 * 40) + (0.8 * 30) + 0 = 20 + 24 = 44%
```

**5. HISTÓRICO DE CORRESPONDÊNCIA**

| Campo                        | Descrição                                |
| ---------------------------- | ---------------------------------------- |
| **Total de cartas trocadas** | Contador de toda a conversação           |
| **Enviadas por você**        | Quantas você mandou                      |
| **Recebidas dele**           | Quantas ele respondeu (taxa de resposta) |
| **Última carta**             | Resumo da última interação               |
| **Assunto**                  | Título ou resumo do conteúdo             |
| **Resposta**                 | Ele respondeu? Ignorou? Reagiu mal?      |
| **Tom**                      | Friendly / Neutro / Hostil / Sarcastico  |

**Exemplo de Histórico:**

```
Carta #1 (Dia 1): Você pediu para atacar Goblins
  Resposta: "Com prazer, Majestade!" (Feliz)

Carta #2 (Dia 2): Você elogiou a vitória dele
  Resposta: "Obrigado!" (+10 Lealdade)

Carta #3 (Dia 3): Você o chamou de covarde
  Resposta: "QUE?! Como ousa!" (-20 Lealdade)

Carta #4 (Dia 4): Pediu desculpas
  Resposta: [IGNORADA] (ainda irritado)
```

**6. CONTEXTO DA SITUAÇÃO ATUAL**

Seção dinâmica que muda baseada no que está acontecendo:

**Cenário 1: Herói em Perigo**

```
▼ CONTEXTO DA SITUAÇÃO ATUAL
+--------------------------------------+
| Lila está em PERIGO EXTREMO:         |
| > HP: 12% (CRÍTICO!)                 |
| > Cercada por 5 Goblins              |
| > Sem aliados próximos               |
|                                      |
| Se enviar carta pedindo para RECUAR:|
| Chance de obedecer: 85% (medo alto)  |
+--------------------------------------+
```

**Cenário 2: Herói Feliz**

```
▼ CONTEXTO DA SITUAÇÃO ATUAL
+--------------------------------------+
| Kaelen está em ótimo momento:        |
| > Acabou de derrotar boss sozinho    |
| > Ganhou item lendário               |
| > Moral no máximo                    |
|                                      |
| Ótima hora para:                    |
| > Elogiar e aumentar Lealdade        |
| > Pedir missão difícil                |
+--------------------------------------+
```

**Cenário 3: Herói Ocupado**

```
▼ CONTEXTO DA SITUAÇÃO ATUAL
+--------------------------------------+
| Gandalf está MUITO OCUPADO:          |
| > Lendo outra carta (de Lila)        |
| > Fila: 2 cartas não lidas           |
|                                      |
| Recomendação:                        |
| Aguardar 1-2 minutos antes de enviar |
| outra carta (evite spam)             |
+--------------------------------------+
```

**7. CUSTO DE ENVIO**

| Campo                         | Descrição                                      |
| ----------------------------- | ---------------------------------------------- |
| **Influence Points**          | Custo fixo (sempre 25 IP por carta)            |
| **Saldo atual**               | Quanto IP você tem agora                       |
| **Saldo após envio**          | Quanto sobrará                                 |
| **Tempo estimado de entrega** | Baseado na distância no mapa (1s por hexágono) |
| **Distância**                 | Hexágonos entre capital e herói                |

**Cálculo de Tempo:**

```typescript
const distancia = calculateDistance(hero.position, capital.position);
const tempoEntrega = distancia * 2; // 2 segundos por hexágono

// Exemplo: Herói a 10 hexágonos = 20 segundos de entrega
```

**8. SUGESTÕES DO CONSELHEIRO**

Baseado na personalidade do Conselheiro (Cético/Otimista/Burocrático) e no contexto:

**Conselheiro Cético:**

```
🧠 Conselheiro sugere:
"Francamente, Kaelen está com razão de estar irritado.
Você realmente o chamou de covarde sem motivo.
Sugiro um pedido de desculpas SINCERO, não essa
diplomacia falsa que você costuma usar."
```

**Conselheiro Otimista:**

```
🧠 Conselheiro sugere:
"Majestade, Kaelen é um guerreiro leal! Tenho CERTEZA
que ele entenderá se você explicar que foi um mal-entendido.
Ele admira sua liderança! Basta elogiar sua bravura e
tudo voltará ao normal!"
```

**Conselheiro Burocrático:**

```
🧠 Conselheiro sugere:
"Dados da situação:
- Lealdade: 65% (abaixo da média de 75%)
- Humor: Irritado (duração estimada: 1 dia)
- Recomendação: Anexar 100-200g como compensação.
- Taxa de sucesso estimada: 73%."
```

---

### Exemplo Completo: Enviando Carta em Situação Crítica

**Passo 1:** Jogador seleciona Lila no P4 (ela está com HP crítico)

**P3 atualiza:**

```
P3: PERFIL DO ALVO

[AVATAR] LILA ROGUE (Ladina, Lvl 7)

▼ STATUS ATUAL
Estado: ⚠️ EM COMBATE CRÍTICO!
Localização: Caverna Sombria (X:12 Y:3)
HP: 8% (🔴 MORRENDO!)
Atividade: Fugindo de 5 Goblins

▼ ESTADO EMOCIONAL
Humor: 😨 ATERRORIZADA
Moral: 25/100 (PÂNICO)
Lealdade: 55/100
Razão: "Está prestes a morrer sozinha"

▼ RELACIONAMENTO
Affinity: +30 (Conhecidos)
Tendência de resposta: 95% (DESESPERADA)

▼ CONTEXTO
🚨 EMERGÊNCIA!
Se ela morrer AGORA:
> Perde herói lvl 7
> -20 Moral global (era popular)
> Memorial criado

Ação urgente: Pedir para RECUAR
Chance dela obedecer: 90% (medo alto)

▼ SUGESTÃO DO CONSELHEIRO
"MAJESTADE! Lila VAI MORRER! Envie carta
ORDENANDO retirada IMEDIATA! Anexe 50g para
poções se ela sobreviver!"

[!] CUSTO: 25 IP | Entrega: 5s (próxima)
```

**Passo 2:** Jogador começa a escrever no P5:

```
P5: RASCUNHO
PARA: Lila Rogue

"Lila, RECUE AGORA! Isso é uma ordem!
Volte à vila imediatamente!

Anexo: 50g (compre poções)"
```

**Passo 3:** Jogador pressiona ENTER

**Feedback:**

```
P7: STATUS DA REDE
🐦 Corvo partiu! (Custo: -25 IP)
Tempo estimado: 5 segundos...

[5s depois]
📩 Carta entregue!
Lila leu a mensagem.

[P2 - Resposta instantânea]:
"OBRIGADA! Estou saindo daqui!"

[Log de jogo]:
Lila iniciou retirada estratégica.
Lealdade: 55% → 65% (+10, você salvou ela)
```

---

### Sistema de Correspondência via Corvos

#### O Conceito: "Corvos não têm WhatsApp"

A comunicação é **Assíncrona**. Você não está num chat ao vivo com o herói. Você envia uma carta e precisa esperar:

1. O **tempo de viagem do pássaro**
2. O tempo do **herói resolver responder**

#### Fluxo da Mecânica

1. **A Escrita (Input):**
   - No Painel P4 (Inspetor) ou F5, ao selecionar um herói, você tem a opção `[C] Enviar Carta`
   - Isso abre um modal simples de texto
   - Você escreve: _"Sir Kaelen, pare de ser covarde e ataque o Ogro! O reino depende de você."_

2. **O Envio (Animação):**
   - Gasta **25 IP** (Influência)
   - **Visual:** Um ícone de Pássaro (Pixel Art) sai da sua barra de ferramentas e "voa" para dentro da lista de heróis ou para o mapa

3. **O Trânsito (Delay):**
   - O pássaro leva tempo para chegar (ex: **10 a 30 segundos**, dependendo da distância no mapa)
   - No P1 (Lista), aparece um ícone de **"Envelope Fechado" 📩** piscando ao lado do herói

4. **A Reação do Herói (IA de Utilidade):**
   - Quando o pássaro chega, o herói faz um check de prioridade
   - Se estiver em **Combate Crítico:** Ele ignora a carta temporariamente (Status: "Ocupado"). O pássaro fica rodando sobre ele
   - Se estiver **Livre:** Ele para (State: `READING_LETTER`)

5. **A Resposta (O "Ouro" Narrativo):**
   - A LLM gera uma **resposta curta** baseada na **Personalidade + Status Atual + Sua Mensagem**
   - O pássaro volta. Uma notificação **[!] Nova Carta de Kaelen** aparece

#### Exemplos de Respostas (Geradas pela IA)

**Cenário:** Você chamou Kaelen de covarde

- **Kaelen (Se estiver com Vida Cheia):** _"Covarde? Eu chamo isso de estratégia! Mas já que insiste, Majestade..."_ (Ganha buff de Coragem temporário)
- **Kaelen (Se estiver Morrendo):** _"Falar do trono é fácil! Mande cura, não cartas!"_ (Perde Lealdade)

---

## 2.8 [F6] THE CHRONICLES - "The Living Book"

**Foco:** Narrativa Emergente em Tempo Real, Geração de História e Exportação para PDF

**Metáfora:** Um livro mágico que se escreve sozinho conforme o reino vive suas aventuras

![Imagem conceitual: Livro antigo com páginas se escrevendo magicamente]

### O Conceito

O **F6 THE CHRONICLES** é onde a **história da partida é contada em tempo real**. Diferente do log de eventos (P5 do F1), que é técnico e imediato, as Crônicas são uma **narrativa literária** gerada por IA.

**Características únicas:**

- Atualiza **a cada 5 minutos de jogo real**
- Gera **parágrafo narrativo** resumindo eventos daquele período
- Cria **banner visual (imagem IA)** para cada parágrafo
- **No final da partida:** exporta tudo como **PDF ilustrado**

---

### Descrição dos Painéis

| Painel | Nome                     | Conteúdo                                                    |
| ------ | ------------------------ | ----------------------------------------------------------- |
| **P1** | Índice de Capítulos      | Lista cronológica de todos os períodos (5 em 5 min)         |
| **P2** | Leitor Principal         | Visualização do parágrafo + banner da seção selecionada     |
| **P3** | Timeline Visual          | Linha do tempo com miniaturas dos banners                   |
| **P4** | Estatísticas do Capítulo | Dados numéricos do período (kills, ouro, eventos)           |
| **P5** | Eventos-Chave            | Lista dos 3 eventos mais importantes daquele período        |
| **P6** | Controles de Exportação  | Opções de PDF, compartilhamento, edição                     |
| **P7** | Prompt do Cronista       | Sistema de IA que gera a narrativa (visível para depuração) |

---

### Layout Visual Completo

```
+----------------------+--------------------------------------------------+------------------+
| P1: ÍNDICE CAPÍTULOS |         P2: LEITOR PRINCIPAL                      | P3: TIMELINE     |
|                      |                                                  |                  |
| 📖 CRÔNICAS DO REINO | ┌─────────────────────────────────────────────┐  | [Dia 1-2]        |
|                      | │  CAPÍTULO 1: Os Primeiros Passos            │  | [Banner Mini]    |
| > Prólogo (D1)       | │  Dias 1-2 | 5 minutos reais                  │  |                  |
| > Cap 1 (D1-2)   ✓   | └─────────────────────────────────────────────┘  | [Dia 3-4]        |
| > Cap 2 (D3-4)   ✓   |                                                  | [Banner Mini]    |
| > Cap 3 (D5-6)   ✓   | [BANNER GERADO POR IA]                           |                  |
| > Cap 4 (D7-8)   ⏳   | ╔════════════════════════════════════════════╗  | [Dia 5-6]        |
|   (Gerando...)       | ║ Imagem: Vila ao amanhecer, 3 heróis saindo ║  | [Banner Mini]    |
|                      | ║ da taverna, floresta ao fundo, estilo      ║  |                  |
| > Cap 5 (D9+)    🔒   | ║ medieval fantasy art                       ║  | ... (40 total)   |
|   (Aguardando)       | ╚════════════════════════════════════════════╝  |                  |
|                      |                                                  |                  |
| Total: 40 caps       | O reino despertou sob o sol da primavera. Três   |                  |
| Tempo: 2h00min       | almas corajosas responderam ao chamado do        |                  |
|                      | Majesty: Sir Kaelen, um guerreiro de honra       |                  |
|                      | inabalável; Lila, uma ladina astuta demais para  |                  |
|                      | seu próprio bem; e Gandalf, cujo cajado brilhava |                  |
|                      | com promessas arcanas.                           |                  |
|                      |                                                  |                  |
|                      | A primeira missão foi humilde: exterminar        |                  |
|                      | goblins que infestavam a Floresta Sombria. Mas   |                  |
|                      | mesmo nessa tarefa simples, os deuses viram a    |                  |
|                      | semente do drama: Lila tomou o último golpe de   |                  |
|                      | um goblin ferido por Kaelen. O guerreiro jurou   |                  |
|                      | silenciosamente que não esqueceria.              |                  |
|                      |                                                  |                  |
|                      | [Gerado por IA em: 18/01 14:32]                  |                  |
+----------------------+--------------------------------------------------+------------------+
| P4: ESTATÍSTICAS     |      P5: EVENTOS-CHAVE DO CAPÍTULO               | P6: EXPORTAÇÃO   |
|                      |                                                  |                  |
| Período: Dias 1-2    | 🏆 MAIS IMPORTANTE:                              | [📄] Exportar PDF|
| Tempo real: 5min     | > Primeiro Kill Steal (Lila vs Kaelen)           | [🔗] Compartilhar|
|                      |   Affinity: +40 → +25                            | [✏️] Editar Texto|
| Kills: 15            |                                                  | [🎨] Regerar Img |
| Ouro ganho: +450g    | ⚔️ COMBATE ÉPICO:                                |                  |
| Heróis ativos: 3     | > Gandalf derrotou 8 goblins com Bola de Fogo    | Status: ✅ Salvo |
| Mortes: 0            |                                                  |                  |
| XP total: +1,200     | 💬 MOMENTO SOCIAL:                               |                  |
|                      | > Kaelen enviou carta hostil para Lila           |                  |
+----------------------+--------------------------------------------------+------------------+
|                      P7: PROMPT DO CRONISTA (IA)                                          |
| Sistema: "Resuma os eventos dos últimos 5 minutos em um parágrafo estilo narrativa épica  |
|          medieval. Tom: Neutro, observador. Foco: Drama social e combate. Limite: 150     |
|          palavras. Contexto: Dia 1-2, Ciclo Primavera, 3 heróis novos."                    |
|                                                                                             |
| IA Cronista: [Gerando...] 🤖                                                               |
+---------------------------------------------------------------------------------------------+
```

---

### Sistema de Geração a Cada 5 Minutos

#### Fluxo Automático

```typescript
setInterval(() => {
  // A cada 5 minutos de jogo real
  const ultimosPeriodo = getEventosUltimos5Min();

  // 1. Filtrar eventos importantes
  const eventosChave = filterKeyEvents(ultimosPeriodo);

  // 2. Gerar prompt para LLM
  const prompt = gerarPromptCronista(eventosChave);

  // 3. Chamar IA para gerar parágrafo
  const paragrafo = await LLM.generateNarrative(prompt);

  // 4. Chamar IA para gerar banner
  const promptImagem = gerarPromptImagem(paragrafo, eventosChave);
  const bannerUrl = await ImageAI.generate(promptImagem);

  // 5. Salvar capítulo
  saveChapter({
    numero: currentChapter++,
    dias: [diaAtual - 4, diaAtual],
    timestamp: Date.now(),
    paragrafo: paragrafo,
    banner: bannerUrl,
    estatisticas: getStats(ultimosPeriodo),
    eventosChave: eventosChave.slice(0, 3),
  });

  // 6. Notificar jogador
  showNotification("📖 Novo capítulo das Crônicas disponível!");
}, 300000); // 5 minutos = 300,000ms
```

---

### Prompt Template para IA Cronista

#### Template Base

```
Você é o Cronista Real do jogo "Heroes of Majesty".
Sua tarefa é narrar a história do reino em estilo épico medieval.

CONTEXTO DA PARTIDA:
- Nome do Reino: {kingdomName}
- Dia atual: {currentDay} de 200
- Ciclo: {currentCycle} ({cycleName})
- Heróis vivos: {heroCount}
- Moral do reino: {morale}

EVENTOS DOS ÚLTIMOS 5 MINUTOS:
{eventList}

INSTRUÇÕES:
1. Escreva 1 parágrafo de 100-150 palavras
2. Tom: Narrativo, épico, mas neutro (como um historiador)
3. Foco: Drama social > Combate > Economia
4. Mencione NOMES dos heróis envolvidos
5. Use linguagem literária ("Sob o sol carmesim", "jurou vingança")
6. NÃO use termos de jogo ("XP", "stats", "buff")
7. Termine com gancho para próximo capítulo (se possível)

FORMATO DE SAÍDA:
Apenas o parágrafo narrativo, sem títulos ou metadados.
```

#### Exemplo de Eventos Passados

```json
{
  "eventList": [
    "Kaelen matou 5 Goblins (XP: +500)",
    "Lila tomou último golpe de Kaelen (Kill Steal)",
    "Affinity Kaelen ↔ Lila: +40 → +25",
    "Kaelen enviou carta hostil para Lila",
    "Gandalf usou Bola de Fogo (8 kills)",
    "Tesouro: +450 ouro",
    "Primeiro edifício construído: Guilda Guerreiros"
  ]
}
```

#### Exemplo de Parágrafo Gerado

```
O reino despertou sob o sol da primavera. Três almas corajosas
responderam ao chamado do Majesty: Sir Kaelen, um guerreiro de
honra inabalável; Lila, uma ladina astuta demais para seu próprio
bem; e Gandalf, cujo cajado brilhava com promessas arcanas.

A primeira missão foi humilde: exterminar goblins que infestavam
a Floresta Sombria. Mas mesmo nessa tarefa simples, os deuses
viram a semente do drama: Lila tomou o último golpe de um goblin
ferido por Kaelen. O guerreiro jurou silenciosamente que não
esqueceria. Enquanto isso, Gandalf incinerou hordas com seu fogo
arcano, indiferente às tensões mortais ao seu redor.

As primeiras moedas encheram o tesouro real, e a Guilda dos
Guerreiros ergueu-se como um monumento à ambição nascente do reino.
```

---

### Prompt Template para Banner (Imagem IA)

#### Template Stable Diffusion / DALL-E

```
medieval fantasy illustration, {sceneDescription},
detailed background with {location},
{characterDescriptions},
epic atmosphere, painterly style,
trending on artstation, 4k quality,
dramatic lighting, cinematic composition

Negative prompt: modern, anime, cartoon, low quality
```

#### Exemplo Concreto

**Input:**

- Parágrafo fala de: "3 heróis saindo para matar goblins na floresta"
- Personagens: Kaelen (guerreiro), Lila (ladina), Gandalf (mago)
- Local: Vila → Floresta

**Prompt gerado:**

```
medieval fantasy illustration, three adventurers leaving a small
village at dawn heading towards a dark forest,
a noble knight in plate armor (Kaelen),
a hooded rogue with daggers (Lila),
an old wizard with glowing staff (Gandalf),
detailed medieval village background with wooden houses and smoke,
epic atmosphere, painterly style, trending on artstation,
4k quality, dramatic lighting, cinematic composition,
golden hour sunlight

Negative prompt: modern, anime, cartoon, low quality, blurry
```

**Resultado esperado:**

- Banner 1920x400px (formato largo)
- Estilo: Fantasy art realista
- Composição: 3 heróis em primeiro plano, vila ao fundo, floresta no horizonte

---

### Categorização de Capítulos

Os capítulos são agrupados em **Arcos Narrativos** baseados nos ciclos:

#### Arco 1: "A Primavera dos Heróis" (Dias 1-2)

- 10 capítulos (5min cada = 50min real)
- Tom: Esperançoso, introdutório
- Eventos típicos: Primeiros combates, formação de amizades, construção inicial

#### Arco 2: "O Verão Vermelho" (Dias 3-4)

- 10 capítulos
- Tom: Conflitos aumentam, guerras intensas
- Eventos típicos: Invasões, Kill Steals, primeira morte de herói

#### Arco 3: "O Inverno do Desespero" (Dias 5-6)

- 10 capítulos
- Tom: Sombrio, tenso, sobrevivência
- Eventos típicos: Fome, traições, Lua de Sangue

#### Arco 4: "O Apocalipse Final" (Dias 7-8+)

- 10 capítulos (ou mais, indefinido)
- Tom: Épico, climático, resolução
- Eventos típicos: Boss final, redenções, vitória ou derrota

**Total:** ~40 capítulos para uma partida completa de 8 dias (2h de jogo real)

---

### Exportação para PDF

#### Estrutura do PDF Final

```
┌─────────────────────────────────────────────┐
│                                             │
│    CRÔNICAS DO REINO DE {Nome}              │
│                                             │
│    Uma História de Heroes of Majesty        │
│    Partida iniciada em: 18/01/2026          │
│    Duração: 8 dias (2h 00min)               │
│                                             │
└─────────────────────────────────────────────┘

[CAPA com banner mais épico da partida]

---

PRÓLOGO

O Majesty {nome_jogador} ascendeu ao trono no dia
X de YYY. O reino estava em ruínas, mas a esperança
ainda pulsava nos corações dos bravos...

---

ARCO I: A PRIMAVERA DOS HERÓIS
Dias 1-2

---

CAPÍTULO 1: Os Primeiros Passos
Dias 1-2

[BANNER 1]

{Parágrafo do cap 1}

Estatísticas do Capítulo:
- Heróis recrutados: 3
- Kills: 15 Goblins
- Ouro acumulado: 450g
- Eventos épicos: Primeiro Kill Steal

---

CAPÍTULO 2: {Título gerado por IA}
Dias 3-4

[BANNER 2]

{Parágrafo do cap 2}

...

(Repetir para todos os 40 capítulos)

---

EPÍLOGO

{Resumo final gerado por IA sobre como terminou a partida}

O reino de {Nome} {venceu/caiu}. Os heróis que sobreviveram...

---

ESTATÍSTICAS FINAIS

Duração total: X dias (Yh Zmin)
Heróis recrutados: X
Heróis vivos ao final: X
Heróis mortos: X
Kills totais: X
Ouro total movimentado: X
Grandes feitos: X

---

MEMORIAL DOS CAÍDOS

[Lista de todos os heróis que morreram com causa da morte]

---

FIM DA CRÔNICA
```

#### Botão de Exportação (P6)

```typescript
async function exportarPDF() {
  showLoading("Gerando PDF... Isso pode levar 2-3 minutos.");

  // 1. Compilar todos os capítulos
  const chapters = getAllChapters();

  // 2. Gerar prólogo e epílogo com IA
  const prologo = await LLM.generatePrologo(gameStats);
  const epilogo = await LLM.generateEpilogo(gameStats, finalOutcome);

  // 3. Montar documento
  const pdfDoc = new PDFDocument();

  // Capa
  pdfDoc.addPage(gerarCapa());

  // Prólogo
  pdfDoc.addPage(prologo);

  // Capítulos (40 páginas)
  chapters.forEach((cap) => {
    pdfDoc.addPage(cap.banner); // Imagem
    pdfDoc.addText(cap.paragrafo); // Texto
    pdfDoc.addText(cap.stats); // Estatísticas
  });

  // Epílogo
  pdfDoc.addPage(epilogo);

  // Estatísticas finais
  pdfDoc.addPage(gerarEstatisticas());

  // Memorial
  pdfDoc.addPage(gerarMemorial());

  // 4. Salvar
  const filename = `Chronicles_${kingdomName}_${Date.now()}.pdf`;
  pdfDoc.save(filename);

  showSuccess(`PDF gerado! ${filename} (${pdfDoc.pageCount} páginas)`);

  // 5. Oferecer compartilhamento
  showShareOptions(filename);
}
```

---

### Funcionalidades Extras do F6

#### 1. Edição Manual (P6 - Botão [✏️])

```
Jogador pode editar parágrafo antes de finalizar:

┌─────────────────────────────────────────┐
│ EDITAR CAPÍTULO 5                       │
├─────────────────────────────────────────┤
│                                         │
│ [Texto do parágrafo]                    │
│                                         │
│ O reino despertou sob o sol...          │
│ (editável)                              │
│                                         │
│ [Salvar] [Cancelar] [Regenerar com IA]  │
└─────────────────────────────────────────┘
```

#### 2. Regerar Banner (P6 - Botão [🎨])

```
Não gostou do banner?

[Opções]:
1. Regenerar com mesmo prompt
2. Editar prompt manualmente
3. Escolher de 3 variações

Custo: 1 crédito de imagem (ou $0.02)
```

#### 3. Compartilhamento Social (P6 - Botão [🔗])

```
Compartilhar Crônicas:

[📱] Twitter/X
    "Acabei de completar minha partida de
     Heroes of Majesty! Veja as crônicas:"
    + link para PDF

[💬] Discord
    Enviar para servidor/canal

[📧] Email
    Enviar PDF por email

[🌐] Link Público
    Gerar link temporário (7 dias)
```

---

### Custo e Otimizações

#### Custo por Partida Completa

**Geração de texto (LLM):**

- 40 capítulos × ~200 tokens cada = 8,000 tokens
- Custo: ~$0.02 (GPT-4) ou $0.002 (Gemini)

**Geração de imagens (DALL-E / SD):**

- 40 banners × $0.02/imagem = $0.80
- **OU** Stable Diffusion local = grátis (lento)

**Total por partida:** ~$0.82 (se usar serviços pagos)

#### Otimizações

1. **Cache de imagens:** Reaproveitar para eventos similares
2. **Geração sob demanda:** Só gerar quando jogador abrir F6
3. **Batch processing:** Gerar 5 capítulos de vez (mais barato)
4. **Tier grátis:** Primeiros 10 capítulos grátis, depois paga

---

### Integração com Sistema de Flavor Texts

O F6 **reaproveita** o sistema de flavor texts já existente:

```typescript
async function gerarCapitulo(eventos) {
  // Pega flavor texts dos eventos
  const flavors = eventos.map((e) => getFlavorText(e));

  // Monta contexto rico
  const contexto = {
    flavors: flavors,
    stats: getStats(),
    mood: calculateMood(),
  };

  // IA usa flavors como "inspiração"
  const prompt = `
    Baseado nestes eventos em linguagem de jogo:
    ${flavors.join("\n")}
    
    Transforme em um parágrafo narrativo épico...
  `;

  return await LLM.generate(prompt);
}
```

---

## 2.9 Padrão de Sintaxe Visual 2.0 - Sistema de Logs

### O Problema da Escaneabilidade

Em jogos baseados em texto, o **log é tudo**. Se o jogador não consegue ler rapidamente os eventos, ele **cansa em 10 minutos**.

**Problema anterior:**

```
"O Goblin acertou o Kaelen por 20 de dano"
```

❌ Player precisa ler a frase inteira para achar o número "20"

**Solução:**

```
[14:32] ⚔️ ATK [Goblin ⚔️ Kaelen] [-20 HP] O golpe acertou exposto.
```

✅ Player scanner visual: HORA → TIPO → ALVO → DANO → (opcional: ler narrativa)

---

### Anatomia do Novo Log

#### Estrutura Rígida (5 Colunas)

```
[HORA] [ÍCONE TIPO] [CONTEXTO/ALVOS] [RESULTADO/MATH] NARRATIVA & SKILLS

│      │            │                  │                 │
│      │            │                  │                 └─ Texto descritivo (opcional)
│      │            │                  └─ Número/efeito em destaque
│      │            └─ Quem vs Quem ou Status mudado
│      └─ Identificador visual (ícone + 4 letras)
└─ Timestamp simples
```

#### Exemplo Anotado

```
[14:32] ⚔️ ATK [Kaelen ⚔️ Goblin] [-45 HP] Golpe certeiro no flanco.
   │      │       │                 │         │
   │      │       │                 │         └─ Narrativa
   │      │       │                 └─ Resultado (vermelho)
   │      │       └─ Combate (Kaelen atacando Goblin)
   │      └─ Tipo: Ataque físico
   └─ Hora do evento
```

---

### Dicionário de Identificadores

#### Combate e Ações

| Ícone | Código   | Tipo          | Uso                            | Cor             |
| ----- | -------- | ------------- | ------------------------------ | --------------- |
| ⚔️    | **ATK**  | Ataque Físico | Golpe normal, arma             | Branco          |
| ✨    | **CAST** | Magia/Skill   | Conjuração, habilidade         | Azul            |
| 🛡️    | **DEF**  | Defesa        | Bloqueio, esquiva, absorção    | Verde           |
| 💀    | **KILL** | Morte         | Unidade morreu                 | Vermelho Escuro |
| 🩸    | **STAT** | Status Effect | Buff, debuff, condição         | Amarelo         |
| 🧠    | **MIND** | Psicológico   | Decisão IA, emoção, quirk      | Roxo            |
| 👣    | **MOVE** | Movimento     | Entrar/sair de área, teleporte | Ciano           |
| 💰    | **LOOT** | Item/Ouro     | Pegar loot, ganhar gold        | Dourado         |
| 💬    | **CHAT** | Social        | Diálogo, carta, banter         | Branco          |

#### Sistemas e Mundo

| Ícone | Código    | Tipo            | Uso                               | Cor        |
| ----- | --------- | --------------- | --------------------------------- | ---------- |
| 🌅    | **SYS**   | Sistema         | Dia/noite, ciclo, eventos globais | Cinza      |
| 🏗️    | **BUILD** | Construção      | Edifício construído/destruído     | Marrom     |
| 📈    | **ECO**   | Economia        | Transação, imposto, salário       | Verde $$$  |
| ⚠️    | **ALERT** | Alerta          | Perigo, warning crítico           | Laranja    |
| 📩    | **MAIL**  | Correspondência | Carta enviada/recebida            | Azul claro |

---

### Formatação de Elementos

#### 1. Contexto de Combate

```
[Atacante ⚔️ Defensor]

Exemplos:
[Kaelen ⚔️ Goblin]     - Herói vs Monstro
[Lila ⚔️ Kaelen]       - PvP (herói vs herói)
[Dragão ⚔️ Torre]      - Monstro vs Estrutura
```

#### 2. Skills e Habilidades

```
Ícone + Nome

Exemplos:
🔥 Bola de Fogo
🗡️ Estocada Mortal
❄️ Raio Congelante
💨 Bomba de Fumaça
```

#### 3. Resultados Numéricos

```
[Valor Tipo]

Exemplos:
[-45 HP]           - Dano (vermelho)
[+100 XP]          - Ganho (verde)
[-25 IP]           - Gasto (amarelo)
[CRÍTICO!]         - Texto especial (vermelho piscante)
[35 Físico]        - Dano tipado (cinza)
```

#### 4. Quirks e Traços P.E.C.M.A.

```
[⚠️ Nome do Traço]

Exemplos:
[⚠️ Burro]         - Quirk negativo
[⚠️ Arachnophobia] - Fobia
[⚠️ Ganância]      - Traço de personalidade
```

---

### Paleta de Cores

> **Nota:** Markdown puro não suporta renderização de cores. As cores abaixo são referências hexadecimais para implementação em CSS/HTML.

#### Identificadores de Ações

| Classe  | Cor             | Hexadecimal | Uso                          |
| ------- | --------------- | ----------- | ---------------------------- |
| `.atk`  | Branco          | `#FFFFFF`   | Ataques físicos gerais       |
| `.cast` | Azul            | `#00BFFF`   | Conjuração de magias         |
| `.def`  | Verde           | `#00FF00`   | Ações defensivas/bloqueio    |
| `.kill` | Vermelho Escuro | `#8B0000`   | Morte/execução               |
| `.stat` | Dourado         | `#FFD700`   | Mudanças de status/atributos |
| `.mind` | Roxo            | `#9370DB`   | Ações mentais/psíquicas      |
| `.move` | Ciano           | `#00FFFF`   | Movimento/deslocamento       |
| `.loot` | Dourado         | `#FFD700`   | Itens/ouro obtidos           |
| `.chat` | Cinza Claro     | `#D3D3D3`   | Diálogos e comunicação       |

#### Resultados Numéricos

| Classe      | Cor             | Hexadecimal | Uso               | Efeito Visual                    |
| ----------- | --------------- | ----------- | ----------------- | -------------------------------- |
| `.damage`   | Vermelho        | `#FF4444`   | Dano causado      | `font-weight: bold`              |
| `.heal`     | Verde Brilhante | `#44FF44`   | Cura recebida     | `font-weight: bold`              |
| `.gain`     | Verde           | `#44FF44`   | Ganhos (XP/stats) | Normal                           |
| `.loss`     | Amarelo         | `#FFAA00`   | Perdas (debuffs)  | Normal                           |
| `.critical` | Vermelho Puro   | `#FF0000`   | Acerto crítico    | `animation: pulse 0.5s infinite` |

#### Contexto de Entidades

| Classe     | Cor            | Hexadecimal | Uso               |
| ---------- | -------------- | ----------- | ----------------- |
| `.hero`    | Azul           | `#00BFFF`   | Nomes de heróis   |
| `.monster` | Vermelho Claro | `#FF6B6B`   | Nomes de monstros |
| `.neutral` | Cinza          | `#CCCCCC`   | NPCs/mercadores   |

**Implementação CSS:**

```css
/* Identificadores */
.atk {
  color: #ffffff;
}
.cast {
  color: #00bfff;
}
.def {
  color: #00ff00;
}
.kill {
  color: #8b0000;
}
.stat {
  color: #ffd700;
}
.mind {
  color: #9370db;
}
.move {
  color: #00ffff;
}
.loot {
  color: #ffd700;
}
.chat {
  color: #d3d3d3;
}

/* Resultados Numéricos */
.damage {
  color: #ff4444;
  font-weight: bold;
}
.heal {
  color: #44ff44;
  font-weight: bold;
}
.gain {
  color: #44ff44;
}
.loss {
  color: #ffaa00;
}
.critical {
  color: #ff0000;
  font-weight: bold;
  animation: pulse 0.5s infinite;
}

/* Contexto */
.hero {
  color: #00bfff;
}
.monster {
  color: #ff6b6b;
}
.neutral {
  color: #cccccc;
}
```

---

### Exemplos Completos por Categoria

#### COMBATE BÁSICO

```
[14:32] ⚔️ ATK [Kaelen ⚔️ Goblin] [-15 HP] Golpe certeiro.
[14:33] 🛡️ DEF [Goblin] [5 BLK] Escudo absorveu o impacto.
[14:34] ⚔️ ATK [Kaelen ⚔️ Goblin] [CRÍTICO! -30 HP] Decapitação!
[14:35] 💀 KILL [Kaelen] [+50 XP] Goblin morto.
```

#### MAGIA E SKILLS

```
[14:40] ✨ CAST [Gandalf ➜ Ogro] [-30 MP] Conjura 🔥 Bola de Fogo.
[14:41] ⚔️ HIT [Magia ⚔️ Ogro] [45 DMG] Fogo incinerou o alvo.
[14:42] 🩸 STAT [Ogro] [🔥 Queimando] -5 HP/s por 10s.
```

#### SOCIAL E PSICOLÓGICO

```
[15:10] 💬 CHAT [Lila] "Kaelen, divida o ouro!"
[15:11] 🧠 MIND [Kaelen] [⚠️ Ganância] Ignorou o pedido.
[15:12] 💰 LOOT [Kaelen] [+200g] Pegou todo o tesouro sozinho.
[15:13] 🧠 MIND [Lila] [😠 -15 Aff] Relacionamento piorou.
```

#### KILL STEAL (Exemplo Clássico)

```
[15:20] ⚔️ ATK [Kaelen ⚔️ Boss] [Iniciou] Kaelen causou 90% dano.
[15:25] ⚔️ ATK [Boss] [HP: 8%] Quase morto...
[15:26] ⚔️ ATK [Lila ⚔️ Boss] [-10 HP] Último golpe!
[15:27] 💀 KILL [Lila] [Last Hit] Finalizou o alvo com estilo!
[15:28] 💰 LOOT [Boss] Dropou [Espada Lendária]!
[15:29] 🤝 PARTY [Kaelen] "Bela finalização, Lila!"
```

#### MOVIMENTO E EXPLORAÇÃO

```
[16:00] 👣 MOVE [Party] [Floresta] Grupo entrou na zona de perigo.
[16:05] ⚠️ ALERT [Sistema] Monstros detectados à frente!
[16:06] 👣 MOVE [Lila] [Stealth] Invisível por 20s.
```

#### STATUS EFFECTS COMPLEXOS

```
[16:10] 🩸 STAT [Kaelen] [☣️ Envenenado] -2 HP/s por 30s.
[16:15] 🩸 STAT [Kaelen] [🩸 Sangrando] -3 HP/s (acumula!).
[16:20] ⚠️ ALERT [Sistema] Kaelen HP CRÍTICO: 15%!
[16:22] ✨ CAST [Gandalf ➜ Kaelen] [-40 MP] Lança ❤️ Cura Maior.
[16:23] 🧠 MIND [Kaelen] [+10 Aff] "Obrigado, amigo!"
```

#### CONSTRUÇÃO E ECONOMIA

```
[17:00] 🏗️ BUILD [Vila] [Guilda Guerreiros] -500g, 60s construção.
[17:01] 📈 ECO [Tesouro] [-500g] Saldo: 1,200g restantes.
[17:60] 🏗️ BUILD [Sistema] Guilda Guerreiros PRONTA!
[18:00] 💰 LOOT [Heróis] [+150g/dia] Receita passiva ativa.
```

#### EVENTOS GLOBAIS

```
[18:00] 🌅 SYS [Mundo] [Noite] Sol se põe. Penalidade ativa.
[18:05] 🌅 SYS [Ciclo] [Verão] Tempestade se aproxima (ETA: 5min).
[18:10] ⚠️ ALERT [Global] 🌪️ TEMPESTADE ATIVA!
[18:11] 🩸 STAT [Todos] [-30% Vel] Dura 10 minutos.
```

#### COVARDIA E TRAUMA (Seção 5.8 Exemplo)

```
[19:00] ⚔️ ATK [5 Ogros ⚔️ Party] Cerco iniciado!
[19:02] 🧠 MIND [Kaelen] [😨 HP<30%] Audácia caiu.
[19:03] 👣 FLEE [Kaelen] [Fuga] Largou Lila sozinha!
[19:05] 💀 KILL [Ogro ⚔️ Lila] Lila morreu abandonada.
[19:06] 🧠 MIND [Lila] [💀 Último] "Kaelen... covarde..."
[19:07] 🩸 STAT [Kaelen] [😔 Culpa] Trauma permanente.
[19:08] 🧠 MIND [Todos] [-10 Aff] Perderam respeito por Kaelen.
```

---

### Caixa de Efeito Especial

Para eventos MUITO importantes, usar caixa destacada:

```
[19:10] ⚔️ ATK [Kaelen ⚔️ Aranha] [Iniciou] Combate crítico.
[19:12] 🧠 MIND [Kaelen] [⚠️ Arachnophobia] GATILHO ATIVADO!
+-----------------------------------------------------------------------+
| 📉 EFEITO CRÍTICO: Audácia de Kaelen = 0.0 (PÂNICO TOTAL)             |
| > Kaelen não pode atacar por 30 segundos                              |
| > Chance de fuga: 95%                                                 |
+-----------------------------------------------------------------------+
[19:13] 👣 FLEE [Kaelen] [Terror] Largou escudo e fugiu!
```

---

### Comparação: Antes vs Depois

#### ANTES (Log Antigo)

```
[12:03] Corvo enviado para Kaelen.
[12:03] Kaelen parou para ler a carta.
[12:04] Kaelen: "Vou tentar, senhor!"
[12:04] Kaelen atacou Ogro. CRÍTICO!
[12:05] Resposta de Lila chegou.
```

❌ Problemas:

- Difícil escanear visualmente
- Sem contexto numérico
- Não prioriza informação

#### DEPOIS (Log Novo)

```
[12:03] 📩 MAIL [Majesty ➜ Kaelen] [-25 IP] Corvo enviado.
[12:03] 👣 MOVE [Kaelen] [Parou] Lendo carta...
[12:04] 💬 CHAT [Kaelen] "Vou tentar, senhor!"
[12:04] ⚔️ ATK [Kaelen ⚔️ Ogro] [CRÍTICO! -80 HP] Golpe devastador!
[12:05] 📩 MAIL [Lila ➜ Majesty] [Resposta] Carta recebida.
```

✅ Melhorias:

- Scanner rápido por ícones
- Números destacados
- Contexto claro (quem → quem)

---

### Regras de Implementação

#### 1. Sempre use a estrutura completa

```typescript
function logEvent(type, context, result, narrative) {
  const time = getCurrentTime();
  const icon = EVENT_ICONS[type];
  const code = EVENT_CODES[type];

  return `[${time}] ${icon} ${code} ${context} ${result} ${narrative}`;
}

// Exemplo de uso:
logEvent("ATK", "[Kaelen ⚔️ Goblin]", "[-20 HP]", "Golpe certeiro.");
// Output: [14:32] ⚔️ ATK [Kaelen ⚔️ Goblin] [-20 HP] Golpe certeiro.
```

#### 2. Cores dinâmicas no terminal

```typescript
const COLORS = {
  ATK: "\x1b[37m", // Branco
  CAST: "\x1b[36m", // Ciano
  DMG: "\x1b[31m", // Vermelho
  HEAL: "\x1b[32m", // Verde
  RESET: "\x1b[0m",
};

console.log(
  `${COLORS.ATK}⚔️ ATK${COLORS.RESET} [Kaelen ⚔️ Goblin] ${COLORS.DMG}[-20 HP]${COLORS.RESET} Golpe certeiro.`,
);
```

#### 3. Narrativa é opcional

```
Modo conciso (apenas dados):
[14:32] ⚔️ ATK [Kaelen ⚔️ Goblin] [-20 HP]

Modo narrativo (com texto):
[14:32] ⚔️ ATK [Kaelen ⚔️ Goblin] [-20 HP] A espada cortou profundo.

Player escolhe qual prefere (opção no menu)
```

---

### Filtros e Busca

Com o novo padrão, jogador pode filtrar logs facilmente:

```
Filtrar por:
- Tipo: Mostrar só ⚔️ ATK
- Personagem: Mostrar só logs com "Kaelen"
- Resultado: Mostrar só CRÍTICO
- Período: Últimos 5 minutos

Exemplo de filtro:
grep "⚔️ ATK.*Kaelen" log.txt
```

---
