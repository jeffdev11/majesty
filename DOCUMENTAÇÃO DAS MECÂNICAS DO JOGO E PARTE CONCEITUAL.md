# 📜 DOCUMENTAÇÃO OFICIAL - HEROES OF MAJESTY: CONSOLE EDITION

> **Documento Oficial de Mecânicas do Jogo e Parte Conceitual**
>
> Este documento define todas as regras funcionais, mecânicas de funcionamento, explicações de diversão, sistemas e tudo relacionado ao gameplay.

---

## 📑 ÍNDICE COMPLETO

### PARTE I: FUNDAMENTOS

1. [Visão Geral e Filosofia do Jogo](#1-visão-geral-e-filosofia-do-jogo)
   - 1.1 O Monarca Indireto
   - 1.2 O Efeito Aquário
   - 1.3 Pilares de Diversão
   - 1.4 A Nova Direção (RTS → Terminal)
   - 1.5 Viabilidade Técnica

2. [Interface e Experiência do Usuário (UI/UX)](#2-interface-e-experiência-do-usuário-uiux)
   - 2.1 Conceito de Workspaces
   - 2.2 Regras Globais de Interação
   - 2.3 [F1] OPS CENTER - "The War Room"
   - 2.4 [F2] ADMIN - "The Tycoon"
   - 2.5 [F3] LIBRARY - "The Archives"
   - 2.6 [F4] WORLD MAP - "The Conquest"
   - 2.7 [F5] THE AVIARY - "Royal Mail"

### PARTE II: SISTEMAS DE IA

3. [Arquitetura de IA Híbrida](#3-arquitetura-de-ia-híbrida)
   - 3.1 Visão Geral
   - 3.2 Utility AI
   - 3.3 Behavior Trees
   - 3.4 FSM (Máquinas de Estados)
   - 3.5 NLP (Conselheiro)

4. [Os Heróis: Agentes Autônomos](#4-os-heróis-agentes-autônomos)
   - 4.1 Estrutura de Dados
   - 4.2 Sistema P.E.R.M.A.
   - 4.3 Estados e Peculiaridades
   - 4.4 Classes de Heróis
   - 4.5 Ciclo de Vida (Morte/Redenção)
   - 4.6 Limitação de 12 Heróis

### PARTE III: SISTEMAS SOCIAIS E ECONÔMICOS

5. [Dinâmica Social](#5-dinâmica-social-o-drama-emergente)
   - 5.1 Formação de Grupos
   - 5.2 Kill Stealing (KS)
   - 5.3 Combate PvP
   - 5.4 Amizades e Lealdade
   - 5.5 Mercado Ambulante
   - 5.6 Sistema de Banter
   - 5.7 Matriz de Relacionamento

6. [O Conselheiro Real de IA](#6-o-conselheiro-real-de-ia)
   - 6.1 O NPC Mais Importante
   - 6.2 Chat Interativo via NLP
   - 6.3 Personalidades do Conselheiro
   - 6.4 Cronista e Analista
   - 6.5 Sussurros e Lore
   - 6.6 Espionagem
   - 6.7 Influence Points (IP)

7. [Economia e Gestão do Reino](#7-economia-e-gestão-do-reino)
   - 7.1 Tesouro Real
   - 7.2 Curadoria de Habilidades
   - 7.3 Gestão de Estoques
   - 7.4 Decretos Reais
   - 7.5 Influence Points
   - 7.6 Manutenção de Edifícios

### PARTE IV: MUNDO E PROGRESSÃO

8. [Mundo Procedural e Ciclos](#8-mundo-procedural-e-ciclos-temporais)
   - 8.1 Névoa de Guerra
   - 8.2 Os 3 Ciclos de 50 Dias
   - 8.3 Ciclo Dia/Noite
   - 8.4 Eventos Globais
   - 8.5 Boss Global
   - 8.6 Escalonamento Dinâmico
   - 8.7 Mapas Procedurais

9. [Mecânicas Avançadas de Expansão](#9-mecânicas-avançadas-de-expansão)
   - 9.1 Postos Avançados
   - 9.2 Fundando Postos
   - 9.3 Gestão Autônoma
   - 9.4 Lealdade do Posto
   - 9.5 Morte do Capitão
   - 9.6 Mudança de Capital
   - 9.7 Traição Individual
   - 9.8 Colônia Rebelde

10. [Narrativa Emergente e Legado](#10-narrativa-emergente-e-legado)
    - 10.1 Crônicas do Reino (PDF)
    - 10.2 Sonhos e Sussurros
    - 10.3 Títulos Dinâmicos
    - 10.4 Modo Historiador
    - 10.5 Ecos do Passado
    - 10.6 Memorial dos Mortos
    - 10.7 Achievements Narrativos
    - 10.8 Compartilhamento Social

### PARTE V: MULTIPLAYER E INIMIGOS

11. [Multiplayer (Visão Futura)](#11-multiplayer-visão-futura)
    - 11.1 Por Que Foi Desprioritizado
    - 11.2 Co-op Assíncrono
    - 11.3 PvP Indireto
    - 11.4 Leaderboards e Seasons
    - 11.5 Desafios de Amigos

12. [Sistema de Monstros: IA P.A.I.N.](#12-sistema-de-monstros-ia-pain)
    - 12.1 Visão Geral
    - 12.2 Perfis de Monstros
    - 12.3 Sistema de Nêmesis
    - 12.4 Facções
    - 12.5 Patrulhas
    - 12.6 Ondas de Invasão
    - 12.7 Bosses Dinâmicos
    - 12.8 Escalonamento por Ciclo
    - 12.9 Anti-Padrões
    - 12.10 Loot Dinâmico

### PARTE VI: COMBATE E APRESENTAÇÃO

13. [Sistema de Combate e Flavor Texts](#13-sistema-de-combate-e-flavor-texts)
    - 13.1 Mecânica de Combate
    - 13.2 Flavor Texts
    - 13.3 Contextos de Eventos
    - 13.4 Geração de Logs
    - 13.5 Prompt para LLM
    - 13.6 Cache e Performance

14. [Estética e "Juice" Visual/Sonoro](#14-estética-e-juice-visualsonoro)
    - 14.1 Cyber-Fantasy Terminal
    - 14.2 Portraits Dinâmicos
    - 14.3 Ícones Vivos
    - 14.4 Sonoplastia Imersiva
    - 14.5 Audio Manager
    - 14.6 Variação de Pitch
    - 14.7 Efeitos de Partículas

15. [Análise Crítica e Justificativas](#15-análise-crítica-e-justificativas-de-design)
    - 15.1 Por Que Controle Indireto?
    - 15.2 Por Que Terminal?
    - 15.3 Limite de 12 Heróis
    - 15.4 Progressão Lenta
    - 15.5 IA Determinística vs Generativa
    - 15.6 Multiplayer: Por Que Não Agora?
    - 15.7 Influence Points
    - 15.8 Crônicas em PDF
    - 15.9 Features Cortadas
    - 15.10 Visão Final
    - 15.11 Métricas de Sucesso
    - 15.12 Roadmap Pós-Lançamento

### ANEXOS

- [Tabela de Flavor Texts](#132-flavor-texts-o-coração-da-narrativa)
- [Sistema P.E.R.M.A. Completo](#42-sistema-perma-os-5-vetores-de-personalidade)
- [Sistema P.A.I.N. Completo](#121-visão-geral-os-inimigos-autônomos)
- [Comandos do Conselheiro](#62-chat-interativo-via-nlp)
- [Lista de Eventos Globais](#84-eventos-globais-o-caos-controlado)

---

# 1. VISÃO GERAL E FILOSOFIA DO JOGO

## 1.1 O Monarca Indireto: A Filosofia de "Observar mais do que Comandar"

A essência do jogo reside no **controle indireto**. O jogador não é um general microgerenciando unidades, mas sim um **monarca que atua como o "jardineiro de um ecossistema vivo"**. Você planta as sementes e fertiliza o solo, mas as flores (os heróis) crescem e agem por conta própria.

### Influência, não Comando

O jogador molda o destino do reino através de **decisões estratégicas** e não por cliques diretos em unidades.

### Ferramentas de Poder

A soberania é exercida através de:

- **Recrutamento seletivo:** Escolher quais classes e personalidades atrair para o reino
- **Infraestrutura:** Construir guildas, lojas e torres para prover suporte e guiar o comportamento dos heróis
- **Recompensas (Bounties):** Colocar ouro em alvos ou áreas para incentivar a ação autônoma dos heróis
- **Conselheiro de IA:** Interagir via chat em linguagem natural para delegar ordens e pedidos sociais

---

## 1.2 O Efeito Aquário: Criando uma Simulação Viva e Reativa em Tempo Real

O mundo de Heroes of Majesty funciona como um **organismo pulsante** onde o tempo não para. Este "Efeito Aquário" garante que a vida no reino continue acontecendo simultaneamente, mesmo em áreas fora da visão do jogador.

### Características do Efeito Aquário

- **Fluxo Contínuo:** O jogo roda em tempo real assistível, onde cada evento gera uma cadeia de causa e efeito imediata
- **Reatividade Orgânica:** Se um herói derrota um monstro perto de uma vila, a segurança aumenta e outros heróis mudam suas rotas de patrulha
- **Cérebro Autônomo:** Cada entidade é regida por uma Máquina de Estados Finitos (FSM), garantindo que estejam sempre focadas em uma tarefa lógica (explorar, atacar, fugir, descansar) sem necessidade de input manual
- **Ciclos Temporais:** A progressão é marcada por 3 grandes ciclos de 50 dias, onde biomas, estações e a dificuldade dos monstros são drasticamente alterados

---

## 1.3 Pilares de Diversão: Imprevisibilidade, Agência Indireta e Narrativa Emergente

A diversão do jogo não vem da execução motora rápida, mas sim da **satisfação intelectual** de guiar um sistema complexo e imperfeito.

### Os Três Pilares

1. **Imprevisibilidade (O Tempero da IA)**
   - Traços de personalidade como ganância, coragem e ética fazem com que os heróis tomem decisões inesperadas
   - Um ladino pode ignorar um combate para saquear um baú
   - Um guerreiro covarde pode fugir cedo demais

2. **Narrativa Emergente**
   - Histórias épicas, cômicas ou dramáticas surgem naturalmente das interações sociais
   - Kill Stealing (KS), rivalidades por títulos e resgates heroicos entre amigos
   - Cada partida gera sua própria saga única

3. **Legado Tangível**
   - Ao final de cada partida, os logs de eventos são transformados em uma "Crônica do Reino" ilustrada (PDF)
   - Eterniza a saga única daquela sessão
   - **Pausa Tática:** O jogador pode congelar o tempo (Pausa Ativa) para analisar logs, dossiês de heróis e emitir decretos

---

## 1.4 A Nova Direção: Do RTS Visual para a Simulação Profunda

### A Metamorfose Completa

O projeto passou por uma **transformação radical**. Deixamos para trás a ideia de um jogo 3D/2D feito em Godot para abraçar algo mais cru, mais complexo e, ironicamente, **muito mais imersivo**.

**Apresentamos:** Heroes of Majesty - **Console Edition**

### A Filosofia: "O Sistema Operacional do Reino"

A proposta original focava em ver bonequinhos andando na tela. Percebemos que isso **limitava a profundidade da simulação**. Ao remover a complexidade gráfica (física, pathfinding visual, animações de esqueleto), liberamos recursos para focar no que realmente importa:

- **O cérebro dos heróis**
- **A narrativa emergente**

### A Nova Estética: Cyber-Fantasy Terminal

Imagine que você não está flutuando sobre o castelo, mas **sentado na sala de guerra**, operando um sistema mágico de monitoramento via texto, logs e mapas ASCII.

- **Você é o Operador**
- **O Reino é o Sistema**

---

## 1.5 Por que a Mudança? Viabilidade Técnica

Como um **Solopreneur e Senior Web Developer**, essa mudança alinha o desenvolvimento com minhas maiores forças técnicas.

### Stack Tecnológica

- **Backend Robusto:** Deno
- **Frontend:** Angular + CSS
- **Banco de Dados:** PostgreSQL

### Vantagens

- **Performance:** A simulação roda num servidor Deno real, permitindo milhares de cálculos de IA sem travar
- **Acessibilidade:** Roda no navegador, leve, rápido
- **Jogabilidade:** 100% via teclado (para os amantes de atalhos) ou mouse
- **Foco no que Importa:** Em vez de animações, foco total na complexidade da IA e narrativa

> _Heroes of Majesty deixou de ser um jogo que você assiste para ser um sistema que você opera._

---

# 2. INTERFACE E EXPERIÊNCIA DO USUÁRIO (UI/UX)

## 2.1 O Conceito de Workspaces (TTY)

Inspirado em ferramentas de produtividade como **tmux** e sistemas Linux, o jogo agora opera através de **Workspaces (Áreas de Trabalho)** acessíveis via teclado. Não há menus arrastados; há **comando instantâneo**.

### Os 5 Workspaces

| Tecla    | Nome           | Descrição                                                    |
| -------- | -------------- | ------------------------------------------------------------ |
| **[F1]** | **OPS CENTER** | "The War Room" - Monitoramento em tempo real, combate tático |
| **[F2]** | **ADMIN**      | "The Tycoon" - Gestão econômica, árvores de habilidades      |
| **[F3]** | **LIBRARY**    | "The Archives" - Lore, bestiário, análise psicológica        |
| **[F4]** | **WORLD MAP**  | "The Conquest" - Mapa ASCII global, postos avançados         |
| **[F5]** | **THE AVIARY** | "Royal Mail" - Sistema de correspondência via corvos         |

---

## 2.2 Regras Globais de Interação (System-Wide)

### Controles de Navegação

| Ação                         | Teclado (Primário)  | Teclado (Alternativo) | Mouse                   |
| ---------------------------- | ------------------- | --------------------- | ----------------------- |
| **Mudar Workspace**          | `Alt + [1-5]`       | `F1 - F5`             | Clicar na Barra de Abas |
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

## 2.3 [F1] OPS CENTER - "The War Room"

**Foco Principal:** Monitoramento em Tempo Real (O "Aquário") e Combate Tático

### Descrição dos Painéis

| Painel | Nome                   | Conteúdo                                                                |
| ------ | ---------------------- | ----------------------------------------------------------------------- |
| **P1** | Lista de Heróis        | Roster rápido mostrando HP, nível e status atual (dormindo, lutando)    |
| **P2** | Mapa Lógico            | Lista de nós (locais) mostrando onde cada entidade está fisicamente     |
| **P3** | Estado do Reino        | Dashboard financeiro e ambiental (Ouro, Mana, **Influência IP**, Ciclo) |
| **P4** | Inspetor (Detalhes)    | Metadados do herói ou inimigo selecionado em P1 ou P2                   |
| **P5** | Timeline Social (Logs) | Feed de eventos em tempo real (combate, diálogos, loot)                 |
| **P6** | Decretos/Loja          | Menu de ações táticas rápidas (curar, buffs, recrutamento)              |
| **P7** | Conselheiro Real       | Chat para input de comandos e feedback da IA sobre o combate            |

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
|                     |    [?] Névoa de Guerra                   |  [!] KS Detectado   |
+---------------------+------------------------------------------+---------------------+
| P4: INSPEÇÃO / CARTA|          P5: TIMELINE SOCIAL (LOGS)      | P6: AÇÕES RÁPIDAS   |
| Selecionado: [1]    | [12:03] 🐦 Corvo enviado para Kaelen.    | [A] Curar (100g)    |
| Sir Kaelen          | [12:03] Kaelen parou para ler a carta.   | [B] Buff Dano (300g)|
|                     | [12:04] Kaelen: "Vou tentar, senhor!"    | [C] Carta (-25 IP)  |
| [Status da Carta]   | [12:04] Kaelen atacou Ogro (CRÍTICO!)    |                     |
| > Enviada: 12:03    | [12:05] 📩 Resposta de Lila chegou.      |                     |
| > Status: Lida      |                                          | (Use teclas)        |
| > Resposta: A caminho|                                         |                     |
+---------------------+------------------------------------------+---------------------+
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

## 2.4 [F2] ADMIN - "The Tycoon"

**Foco Principal:** Gestão de Recursos, Construção e Curadoria de Habilidades

![F2 ADMIN - The Tycoon](<docs/[F2]%20ADMIN%20(_The%20Tycoon_).png>)

### Descrição dos Painéis

| Painel | Nome                         | Conteúdo                                                                            |
| ------ | ---------------------------- | ----------------------------------------------------------------------------------- |
| **P1** | Infraestrutura               | Lista das guildas e edifícios com nível atual, vagas disponíveis e custo de upgrade |
| **P2** | Árvore de Skills (Tech Tree) | Visualização hierárquica das habilidades que podem ser compradas/liberadas          |
| **P3** | Logística e Stocks           | Monitoramento de estoques (poções, armas) e fluxo financeiro                        |
| **P4** | Detalhe da Construção        | Informações sobre custos, manutenção diária e buffs passivos                        |
| **P5** | Ordem de Serviço (Logs)      | Logs filtrados focados em economia (vendas, construções, alertas)                   |
| **P6** | Ações de Manutenção          | Atalhos para reabastecer estoques, reparar prédios e pagar salários                 |
| **P7** | Conselheiro Real (Gestão)    | Contexto focado em sugerir compras e avisar sobre riscos                            |

### Layout Visual Completo

```
+---------------------+------------------------------------------+---------------------+
| P1: INFRAESTRUTURA  |        P2: CURADORIA DE SKILLS           | P3: LOGÍSTICA/STOCK |
| [1] Guilda Guerreiro|                                          |                     |
|     Lvl: 2 (Max 5)  |  CLASSE: GUERREIRO (Pontos: 5)           |  > MERCADORIAS      |
|     Vagas: 3/5      |                                          |  [A] Poção Vida (S) |
|     Custo Up: 500g  |  [Raiz] Ataque Básico (Desbloqueado)     |      Qtd: 12        |
|                     |   |                                      |      Preço: 50g     |
| [2] Guilda Mago     |   +-- [1] Golpe Giratório (Custo: 200g)  |      Status: BAIXO! |
|     Lvl: 1          |   |    |-- Requer: Força Lvl 2           |                     |
|     Vagas: 1/3      |   |                                      |  [B] Poção Mana (M) |
|     (Construindo...)|   +-- [2] Grito Provocação (BLOQUEADO)   |      Qtd: 45        |
|                     |        |-- Requer: Guilda Lvl 3          |      Preço: 80g     |
| [3] Torre de Vigia  |                                          |                     |
|     Alcance: +2     |  CLASSE: LADINO                          |  > FINANÇAS         |
|     Estado: OK      |   +-- [3] Adaga Envenenada (500g)        |  Salários: -20g/min |
|                     |                                          |  Lucro: +150g/min   |
+---------------------+------------------------------------------+---------------------+
| P4: DETALHE CONSTRU |          P5: ORDEM DE SERVIÇO (LOGS)     | P6: AÇÕES RÁPIDAS   |
| Selecionado: [1]    | [ADMIN] Guilda Mago iniciou construção.  | [R] Reparar Tudo    |
| Guilda Guerreiros   | [ECO]   Venda: Poção Vida (-1) p/ Lila.  | [S] Reabastecer (A) |
| Buff: +10% XP       | [ECO]   Lucro: +200g (Loot de Ogro).     | [T] Pagar Salários  |
| Manut: 5g/dia       | [ALERTA] Estoque de Poção Vida CRÍTICO.  | [U] Upgrade Prédio  |
| "Treina os bravos"  | [ADMIN] Skill "Golpe Giratório" Ativa.   |                     |
|                     |                                          | (Use teclas)        |
+---------------------+------------------------------------------+---------------------+
|                        P7: CONSELHEIRO REAL (MODO GESTÃO)                            |
| IA: "Meu Senhor, estamos perigosamente sem poções de vida no stock [A]. Se houver um |
|      ataque agora, os heróis morrerão. Recomendo comprar o lote imediatamente."      |
|                                                                                      |
| > /buy A 20_                                                                         |
+--------------------------------------------------------------------------------------+
```

### Interação e UX (F2)

#### P1 (Infraestrutura)

- **Teclado:** Setas Cima/Baixo percorrem a lista. Enter seleciona e mostra dados no P4. Espaço inicia upgrade (se tiver ouro)
- **Mouse:** Clique seleciona. Duplo-clique inicia upgrade

#### P2 (Skill Tree)

- **Teclado:** Navegação hierárquica. Setas para mover entre nós, Enter para comprar a skill selecionada
- **Mouse:** Hover sobre a skill mostra Tooltip flutuante com descrição completa. Clique compra

#### P3 (Logística)

- **Compra Rápida:** Ao selecionar um item (ex: Poção [A]) e pressionar Enter (ou clicar), o foco vai para o P7 (Input) pré-preenchido com `/buy A [quantidade]`

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
| **Regeneração**   | 50 HP/dia            | Auto-reparo natural           |
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
> +20% Moral Global
> -10% Custo de Recrutamento
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

1. Pressionar `[N]` (New Building) no P1
2. Menu modal abre:

```
+--------------------------------------+
|   ESCOLHA O QUE CONSTRUIR            |
+--------------------------------------+
| [1] Guilda Guerreiros    (300g)      |
| [2] Guilda Magos         (350g)      |
| [3] Guilda Ladinos       (280g)      |
| [4] Guilda Arqueiros     (300g)      |
| [5] Torre de Vigia       (200g)      |
| [6] Loja de Poções       (250g)      |
| [7] Ferreiro             (400g)      |
| [8] Taverna              (300g)      |
| [ESC] Cancelar                       |
+--------------------------------------+
```

3. Jogador digita número (ex: `1`)
4. Confirmação:

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
    Destruída: Dia 73, 14:35
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
| Dia: 73                              |
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

[14:02] [ECO]    Venda: Poção Vida (-1 estoque) → Kaelen
[14:02] [ECO]    Receita: +25g (imposto 50%)
[14:05] [BUILD]  Guilda Magos: 45% concluída (27s restantes)
[14:10] [MAINT]  Manutenção diária: Guilda Guerreiros (-5g)
[14:15] [PROFIT] Loot de Ogro: +200g depositados no tesouro
[14:20] [SKILL]  "Tempestade de Lâminas" ativa para Guerreiros
[14:25] [ALERTA] Estoque de Poção Vida CRÍTICO (3/50)
[14:30] [STOCK]  Compra automática: +20 Poções Vida (-1,000g)
[14:35] [DESTRUCT] Torre de Vigia Leste sob ataque! (HP: 60%)
```

---

### P3 - Relatório Financeiro Detalhado

#### Visão Expandida de Logística e Finanças

O **P3** não mostra apenas estoques, mas um **relatório completo** de entradas e saídas de ouro.

#### Layout Completo do P3

```
P3: LOGÍSTICA & FINANÇAS

+========================================+
|  RESUMO DO DIA (Dia 45)                |
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

## 2.5 [F3] LIBRARY - "The Archives"

**Foco Principal:** Lore, Psicologia Profunda, Bestiário e Estatísticas (Pausa Tática)

![F3 LIBRARY - The Archives](<docs/[F3]%20LIBRARY%20(_The%20Archives_).png>)

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
| P1: ÍNDICE DE DADOS | P2: LEITOR DE DADOS (READER) | P3: ESTATÍSTICAS |
| > HERÓIS ATIVOS | DOSSIÊ: SIR KAELEN (Guerreiro) | -- OURO / DIA -- |
| [1] Sir Kaelen | | Dia 43: #### |
| [2] Lila Rogue | [SUSSURROS RECENTES] | Dia 44: ###### |
| | "Aquele Ogro parecia ter medo de fogo... | Dia 45: ## |
| > MEMORIAL (MORTOS) | Devia ter comprado uma tocha." | |
| [3] Gandalf (Mago) | | -- KILLS / TIPO -- |
| | [TRAÇOS DE PERSONALIDADE] | Ogros: 12 [|||..] |
| > BESTIÁRIO | Coragem: [||||||||..] (Alta) | Goblins: 45 [||||]|
| [4] Ogro das Cvs. | Ganância: [||........] (Baixa) | Dragões: 0 [.....]|
| [5] Dragão Sombra | Lealdade: "Pelo Rei!" | |
| | | -- PARTIDA -- |
| > HISTÓRICO | [BIOGRAFIA GERADA] | Tempo: 02:14:00 |
| [6] Crônica Atual | Nascido nas montanhas do norte, Kaelen | Score: B+ |
| | jurou proteger os fracos após... | |
+---------------------+------------------------------------------+---------------------+
| P4: METADADOS | P5: REGISTO DO HISTORIADOR | P6: FILTROS |
| ID: Hero*001 | [Dia 12] Kaelen salvou Lila na floresta. | [H] Ver Heróis |
| Status: Vivo | [Dia 15] Kaelen recusou suborno. | [M] Ver Monstros |
| Kills: 42 | [Dia 20] Adquiriu título "O Bravo". | [L] Ver Lore |
| Mortes: 0 | [Dia 45] Atualmente a dormir na Vila. | [G] Ver Gráficos |
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
  ├─ [M1] 💀 Elara (Arqueira) - Dia 42
  ├─ [M2] 💀 Thorgrim (Guerreiro) - Dia 31
  └─ [M3] 💀 Zara (Maga) - Dia 15

▶ BESTIÁRIO (Expandir)
  └─ (23 espécies catalogadas)

▶ FACÇÕES DE MONSTROS
  └─ (5 facções ativas)

▶ HISTÓRICO DA PARTIDA
  ├─ Crônica Atual (Dia 1-87)
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

1. **Setas Cima/Baixo:** Navegar entre itens
2. **Seta Direita:** Expandir categoria fechada
3. **Seta Esquerda:** Recolher categoria aberta
4. **Enter:** Selecionar item e carregar no P2
5. **Backspace:** Voltar para categoria pai
6. **Home/End:** Ir para primeiro/último item da lista

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

[TRAÇOS DE PERSONALIDADE - P.E.R.M.A.]
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

**IMPORTANTE:** Os gráficos **NÃO são ASCII**. Serão **componentes visuais** feitos em Angular.

#### Tipos de Gráficos Disponíveis

**1. Gráfico de Barras (Ouro por Dia)**

```typescript
// Componente: BarChartComponent
<bar-chart
  [data]="goldPerDay"
  [labels]="['Dia 43', 'Dia 44', 'Dia 45']"
  [color]="'#FFD700'"
></bar-chart>
```

**Visual:**

```
+------------------------------------+
|  OURO ACUMULADO (Últimos 7 Dias)   |
+------------------------------------+
Dia 43 ████████░░ 850g
Dia 44 ██████████ 1,200g
Dia 45 ████░░░░░░ 450g
Dia 46 ███████░░░ 920g
Dia 47 ████████░░ 1,100g
Dia 48 ██░░░░░░░░ 300g (BAIXO!)
Dia 49 ███████████ 1,450g
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

[Dia 5] 🏆 PRIMEIRO SANGUE
        Sir Kaelen derrotou seu primeiro inimigo solo.
        (Goblin "Krax, O Fedido")

[Dia 12] 💖 LAÇOS FORTES
        Kaelen salvou Lila de morte certa.
        Affinity: -10 → +25 (Primeira amizade)

[Dia 23] 💀 MORTE HEROICA
        Gandalf caiu defendendo a Casa Central.
        Último HP do edifício: 8% (salvou o reino)

[Dia 31] ⚔️ VINGANÇA CUMPRIDA
        Kaelen derrotou "Ogro Matador de Gandalf".
        XP dobrado. Título: "Vingador de Gandalf"

[Dia 45] 🏰 EXPANSÃO DO REINO
        Posto Avançado fundado na Floresta Norte.
        Capitão: Lila Rogue

[Dia 67] 🌙 SOBREVIVÊNCIA
        Reino resistiu à Lua de Sangue.
        73 monstros eliminados. 2 heróis caídos.

[Dia 87] 👑 STATUS ATUAL
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

![F4 WORLD MAP - The Conquest](<docs/[F4]%20WORLD%20MAP%20(_The%20Conquest_)%202.png>)

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
| P1: DOMÍNIOS REAIS | P2: MAPA DE SATÉLITE (ASCII) | P3: PREVISÃO GLOBAL |
| > CAPITAL (Sede) | | |
| Regente: Você | [~] [~] [M] [M] [F] [F] [C] | -- CICLO ATUAL -- |
| Pop: 12/12 | [~] [P] [.] [.] [F] [T] [C] | Ciclo: 1 de 3 |
| Ouro: 100% Taxa | [~] [.] [V] [.] [.] [.] [M] | Tipo: "Primavera" |
| | [~] [.] [.] [R] [R] [.] [M] | Monstros: T1 (Fraco|
| > POSTO NORTE | [M] [M] [F] [R] [?] [?] [?] | |
| Capitão: Rurik | [M] [C] [F] [?] [?] [?] [?] | -- TEMPO -- |
| Status: AUTÓNOMO | | Próx. Evento: |
| Lealdade: 80% | Legenda: | "Lua de Sangue" |
| (Vassalo) | [V]ila [.]Campo [F]loresta | Em: 05:00 min |
| | [M]ont [~]Água [C]averna | |
| > POSTO LESTE | [T]orre [P]osto [?]Névoa | -- AMEAÇAS -- |
| (Destruído) | | [!] Invasão Norte |
| | | [!] Peste na Vila |
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

**IMPORTANTE:** O mapa **NÃO é ASCII**. Será composto de **imagens quadradas** (tiles) representando cada tipo de terreno.

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
| **💀 Castelo Amaldiçoado** | Dia 105 (Ciclo 3)  | Até derrotar | Herói caído vira Rei Vilão + exército    |
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

[14:02] [EXPLOR]   Lila iniciou reconhecimento X:5 Y:8
[14:05] [EVENTO]   Chuva de meteoros ativa! (Dura 5 min)
[14:07] [EXPLOR]   Lila descobriu: Ruínas Antigas
[14:10] [COMBATE]  Lila vs 3 Lobos Pálidos (em andamento)
[14:12] [COMBATE]  Lila vitória! (+300 XP, +150g)
[14:15] [ALERTA]   Boss detectado: Ogro Rei (X:5 Y:8)
[14:20] [POSTO]    Rurik: "Detectei horda Goblin. Pedindo 500g"
[14:25] [GLOBAL]   Terremoto! Passagem aberta entre C4-D5
[14:30] [BOSS]     Heróis iniciaram ataque ao Ogro Rei
[14:35] [MORTE]    Elara caíu em combate (Ogro Rei)
[14:40] [BOSS]     Ogro Rei derrotado! Loot: 2,500g + Machado Lendário
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

1. Jogador seleciona tile vazio no P2 (ex: X:10 Y:5)
2. Menu contextual aparece automaticamente no P6:

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

3. Jogador digita `1`
4. Submenu abre:

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

5. Jogador digita `1,2,3`
6. Confirmação final:

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

![F5 THE AVIARY - Royal Mail](<docs/[F5]%20THE%20AVIARY%20(_Royal%20Mail_).png>)

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
| P1: CAIXA DE CORREIO| P2: LEITURA DE MENSAGEM | P3: PERFIL DO ALVO |
| > CAIXA DE ENTRADA | DE: Sir Kaelen (Guerreiro) | [IMG] Kaelen (Avatar|
| [1] Sir Kaelen (N) | PARA: Vossa Majestade | |
| "Sobre o Ouro" | DATA: Dia 45 - 14:02 | Status: EM COMBATE |
| 14:02 | | Humor: Irritado |
| | ASSUNTO: Re: Covardia | Lealdade: 45% (Baixa|
| [2] Lila Rogue | | |
| "Pedido..." | "Majestade, com todo o respeito, chamar | Última Carta: |
| Ontem | retirada estratégica de 'covardia' é | Há 2 dias (Ignorada)|
| | fácil para quem está sentado no trono. | |
| > ENVIADOS | O Ogro tinha vantagem de terreno!" | Custo Envio: |
| [3] P/ Conselheiro | | 25 IP (Influência) |
| | [ANEXO: Relatório de Danos.log] | |
| > RASCUNHOS | | |
| (Vazio) | ---------------------------------------- | |
| | > [R] RESPONDER > [A] ARQUIVAR | |
+---------------------+------------------------------------------+---------------------+
| P4: LISTA DE CONTATO| P5: RASCUNHO ATUAL (EDITOR) | P6: AÇÕES DE ENVIO |
| [H] Sir Kaelen | PARA: Sir Kaelen | [Enter] Enviar |
| [H] Lila Rogue | | [S] Salvar Rascunho |
| [H] Gandalf | "Entendo seu ponto, Kaelen. Mas preciso | [D] Descartar |
| [N] Conselheiro | que você volte lá. Vou enviar poções."_ | [T] Anexar Ouro |
| [E] Guilda Mercante | | |
| | (Digite sua mensagem aqui...) | |
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
| Data: Há 2 dias (Dia 43)             |
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
- "Lila roubou seu kill (irritado)"
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
Carta #1 (Dia 10): Você pediu para atacar Goblins
  Resposta: "Com prazer, Majestade!" (Feliz)

Carta #2 (Dia 15): Você elogiou a vitória dele
  Resposta: "Obrigado!" (+10 Lealdade)

Carta #3 (Dia 20): Você o chamou de covarde
  Resposta: "QUE?! Como ousa!" (-20 Lealdade)

Carta #4 (Dia 43): Pediu desculpas
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

# 3. ARQUITETURA DE IA HÍBRIDA

## 3.1 Visão Geral: O Cérebro dos Heróis

A IA de Heroes of Majesty não é um sistema único, mas uma **arquitetura híbrida** que combina diferentes técnicas de IA para criar comportamentos complexos e críveis.

### Os Quatro Pilares da IA

1. **Utility AI (IA de Utilidade)** - "O Quê fazer?"
2. **Behavior Trees (Árvores de Comportamento)** - "Como fazer?"
3. **FSM (Máquinas de Estados Finitos)** - "Em qual estado estou?"
4. **NLP (Processamento de Linguagem Natural)** - "O que o jogador quer?"

---

## 3.2 Utility AI: O Sistema de Decisão Estratégica

### O Conceito

A **Utility AI** é o coração do processo decisório dos heróis. Ela pontua todas as ações disponíveis com base no **contexto atual** e na **personalidade** do herói.

### Fórmula de Pontuação

```

Score = BaseWeight × Σ(Consideration_i × ResponseCurve_i) × Personality_Modifier

```

### Exemplo Prático: "O Herói Deve Atacar o Ogro?"

**Contexto:**

- Herói: Sir Kaelen (Guerreiro, Audácia Alta = 0.8)
- Ogro: HP 60%, Distância 15m
- Herói: HP 100%, Sem Aliados Próximos

**Considerações (Inputs):**

| Consideração         | Valor Raw | Curva de Resposta   | Saída |
| -------------------- | --------- | ------------------- | ----- |
| **HP do Herói**      | 100%      | Linear (1.0 → 1.0)  | 1.0   |
| **HP do Inimigo**    | 60%       | Inversa (0.6 → 0.4) | 0.4   |
| **Distância**        | 15m       | Próxima (ótima 10m) | 0.7   |
| **Aliados Próximos** | 0         | Quadrática (0 → 0)  | 0.0   |

**Modificador de Personalidade:**

- Audácia Alta (0.8): +20% no score de "Atacar"

**Score Final:**

```

Score_Atacar = 1.0 × (1.0 + 0.4 + 0.7 + 0.0) × 1.2 = 2.52

```

**Comparação com outras ações:**

- Atacar: **2.52**
- Fugir: 0.8 (HP alto demais)
- Saquear Baú: 1.1 (ganância baixa)

**Decisão:** Atacar o Ogro ✅

---

## 3.3 Behavior Trees: A Execução Tática

Após a Utility AI decidir "O Quê" fazer, uma **Behavior Tree** define "Como" fazer.

### Estrutura de uma BT: Atacar Inimigo

```

→ Sequence: ATACAR_INIMIGO
├─ Check: Inimigo Vivo?
├─ Selector: Escolher Arma
│ ├─ Espada (se equipada)
│ └─ Punhos (fallback)
├─ Action: Mover até Range
├─ Sequence: Combate
│ ├─ Action: Atacar
│ ├─ Wait: Cooldown (1s)
│ └─ Check: Target Morto?
└─ Success

```

### Tipos de Nós

| Tipo          | Nome          | Comportamento                               |
| ------------- | ------------- | ------------------------------------------- |
| **Sequence**  | "E depois..." | Executa filhos em ordem. Falha se um falhar |
| **Selector**  | "Ou então..." | Tenta filhos até um ter sucesso             |
| **Action**    | "Fazer"       | Executa ação concreta (atacar, mover)       |
| **Condition** | "Se..."       | Verifica condição booleana                  |
| **Decorator** | "Com..."      | Modifica comportamento do filho             |

---

## 3.4 FSM: Gerenciamento de Estados Macro

A **FSM (Finite State Machine)** controla o estado de alto nível do herói.

### Estados Principais

```

┌─────────────┐
│ AVENTUREIRO │ ◄─── Estado Padrão (Explora, luta, saqueia)
└──────┬──────┘
│
├──► GUARDA DA CIDADE (Após morte, redenção)
│
├──► DERROTADO (HP = 0, aguardando respawn)
│
├──► READING_LETTER (Lendo carta do jogador)
│
├──► TRADING (Negociando com outro herói)
│
└──► CORRUPTED (Traição ativa)

```

### Transições de Estado

**Exemplo:**

```

AVENTUREIRO → DERROTADO (Quando HP ≤ 0)
DERROTADO → GUARDA_DA_CIDADE (Após 60s, se aceitar renascer)
GUARDA_DA_CIDADE → AVENTUREIRO (Após completar 5 missões)

```

---

## 3.5 NLP: Processamento de Linguagem Natural (Conselheiro)

O **Conselheiro Real** usa NLP para interpretar comandos do jogador.

### Pipeline de Processamento

1. **Input do Jogador:** `/buy potion 10`
2. **Tokenização:** `['buy', 'potion', '10']`
3. **Extração de Intenção:** `BUY_ITEM`
4. **Extração de Entidades:**
   - `item_type`: "potion"
   - `quantity`: 10
5. **Validação:** Ouro suficiente? Existe no estoque?
6. **Execução:** `GameService.buyItem('health_potion', 10)`
7. **Resposta:** _"Majestade, 10 poções foram adicionadas ao estoque. Saldo atual: 850 ouro."_

### Exemplos de Comandos NLP

| Input                             | Intenção         | Entidades                      | Resultado               |
| --------------------------------- | ---------------- | ------------------------------ | ----------------------- |
| `/send letter Kaelen attack ogre` | SEND_LETTER      | hero=Kaelen, msg="attack ogre" | Envia carta (-25 IP)    |
| `/upgrade warrior guild`          | UPGRADE_BUILDING | building=warrior_guild         | Evolui guilda (-500g)   |
| `/who is fighting?`               | QUERY_STATUS     | filter=combat                  | Lista heróis em combate |
| `/unlock whirlwind skill`         | UNLOCK_SKILL     | skill=whirlwind                | Desbloqueia habilidade  |

---

# 4. OS HERÓIS: AGENTES AUTÔNOMOS

## 4.1 Estrutura de Dados de um Herói

Cada herói é uma entidade complexa com múltiplas camadas de dados.

### Schema Completo

```typescript
interface Hero {
  // Identificação
  id: string;
  name: string;
  class: HeroClass; // WARRIOR, MAGE, ARCHER, ROGUE

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

### As 4 Classes Principais

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

---

## 4.5 Ciclo de Vida: Morte, Redenção e Necromancia

### A Morte Não é o Fim

Quando um herói morre:

1. **Drop de Equipamento:** Todo equipamento cai no chão (pode ser saqueado)
2. **Entrada no Memorial:** O herói entra na aba "MEMORIAL (MORTOS)" da Library
3. **Oferta de Redenção:** Após 60 segundos, aparece escolha:
   - **Aceitar:** Renascer como **Guarda da Cidade** (nível base, sem equipamento)
   - **Recusar:** Morte permanente

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
- Se derrotado novamente: Morte **permanente**

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
- Kaelen não rouba o loot → Lila ganha +5 Affinity
- Após 3 interações positivas: Affinity = +30
- **Resultado:** Lila propõe formar grupo
- Kaelen aceita (Ethics alto = cooperativo)

---

## 5.2 Kill Stealing (KS): O Gatilho do Drama

**Kill Stealing** é quando um herói rouba o último golpe de um combate iniciado por outro.

### Mecânica Técnica

```typescript
if (monster.hp <= 0) {
  const killer = monster.lastAttacker;
  const initiator = monster.firstAttacker;

  if (killer.id !== initiator.id) {
    // KS DETECTADO!
    handleKillSteal(killer, initiator, monster);
  }
}
```

### Consequências do KS

#### Para o Ladrão (Killer)

- Ganha **100% do XP e Loot**
- Recebe tag `pvp_flag` (Bandeira Vermelha) por 60 segundos
- Perde **-15 Affinity** com a vítima
- Se Ethics < 0.5: Sem remorso (comportamento esperado)
- Se Ethics > 0.7: Ganha estado `GUILTY` (-10% stats por 2 min)

#### Para a Vítima (Initiator)

- Perde **todo o XP e Loot**
- Ganha memória de raiva: `STOLEN_BY: [killer_id]`
- Se Power > 0.6: 40% chance de iniciar **PvP imediato**
- Se Ethics > 0.7: Apenas reclama no log (não revida)

### Exemplo de Log

```
[12:45] Sir Kaelen iniciou combate contra Ogro.
[12:46] Lila Rogue atacou Ogro (HP: 5%).
[12:46] 💀 Ogro foi derrotado por Lila Rogue. [KS!]
[12:46] 😠 Sir Kaelen: "Aquele era MEU alvo, ladra!"
[12:46] 🚩 Lila Rogue recebeu Bandeira Vermelha (PvP habilitado).
[12:47] ⚔️ Sir Kaelen atacou Lila Rogue! [PVP INICIADO]
```

---

## 5.3 Combate PvP (Player vs Player... entre Heróis!)

### Regras de PvP

**Condições para Iniciar:**

1. Herói atacante tem `pvp_flag` OU
2. Vítima roubou kill recentemente OU
3. Affinity < -50 (ódio profundo) OU
4. Quirk `VENGEFUL` ativo

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

- Perdedor morre (entra no sistema de Redenção)
- Ganhador ganha título: `"Matador de [Nome]"`
- **Todo o reino perde -5 Moral** (trauma coletivo)
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

| Ação                                   | Ganho |
| -------------------------------------- | ----- |
| Lutar juntos contra boss               | +10   |
| Salvar de morte certa                  | +25   |
| Doar item valioso                      | +15   |
| Compartilhar loot igualmente           | +5    |
| Aceitar resposta de carta com gratidão | +8    |
| Vingar morte                           | +30   |

#### Como Diminuir Afinidade (-)

| Ação                              | Perda             |
| --------------------------------- | ----------------- |
| Kill Stealing (KS)                | -15               |
| Deixar morrer quando podia salvar | -20               |
| Roubar item do chão               | -10               |
| Matar em PvP                      | -100 (permanente) |
| Ignorar pedido de ajuda           | -8                |

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

---

## 5.5 Mercado Ambulante (Hero Trading)

Heróis não dependem apenas do jogador para equipamento. Eles **negociam entre si**.

### Mecânica de Troca

**Iniciador:** Herói com item duplicado ou inferior
**Alvo:** Herói com item complementar

**Fluxo:**

1. Iniciador propõe troca via log social
2. Alvo avalia baseado em:
   - **Affinity:** Amigos aceitam trades injustas
   - **Resource (Ganância):** Ladinos exigem ouro extra
   - **Mind (Intelecto):** Heróis inteligentes avaliam valor real
3. Aceitação ou Contraproposta

### Exemplo de Negociação

```
[15:30] 💼 Lila Rogue propõe troca:
        Oferece: Adaga +5 | Quer: Arco +3
        Para: Elara (Arqueira)

[15:31] 🤔 Elara (Mind: 0.8) avalia: "Adaga vale menos que arco."
        Contraproposta: Adaga+5 + 50 Ouro

[15:32] 💰 Lila (Resource: 0.9) recusa: "Muito caro!"

[15:33] 🤝 Elara (Affinity: +40 com Lila) aceita por amizade.

[15:34] ✅ Troca concluída. Lila ganhou Arco+3.
```

### Trades Especiais: "Presentes"

Se Affinity > +60, heróis podem **doar** itens sem esperar retorno:

```
[10:15] 🎁 Sir Kaelen doou Poção de Vida para Gandalf.
        Razão: "Você salvou minha vida ontem."
        Affinity: +65 → +70
```

---

## 5.6 Sistema de "Banter" (Diálogos Dinâmicos)

Heróis **conversam entre si** baseado em eventos e personalidade.

### Estrutura de Template

```typescript
const banterTemplate = {
  trigger: "KILL_STEAL",
  speaker: "VICTIM",
  template: "{VICTIM_NAME}: Aquele {MONSTER} era MEU, {THIEF_NAME}!",
  personality_filter: { ethics: ">0.5" },
};
```

### Exemplos de Banter

#### Após KS

- **Vítima (Ethics Alto):** _"Kaelen, isso não foi honrado!"_
- **Ladrão (Ethics Baixo):** _"O rápido come, parceiro. 😏"_

#### Formação de Grupo

- **Líder:** _"Lila, vamos caçar juntos?"_
- **Aceita:** _"Só se você não roubar meu loot, Kaelen!"_

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

# 6. O CONSELHEIRO REAL DE IA

## 6.1 O NPC Mais Importante do Jogo

O **Conselheiro Real** não é apenas um chatbot. Ele é:

- Um **NPC físico** no mundo (tem localização)
- O **tradutor** entre o jogador e o sistema de IA
- O **cronista** que documenta a história do reino
- O **espião** (opcionalmente) que vende informações

### Características Únicas

| Propriedade       | Valor                                          |
| ----------------- | ---------------------------------------------- |
| **Mortalidade**   | Pode morrer (mas respawna após 5 minutos)      |
| **Mobilidade**    | Se desloca pela vila (pode estar indisponível) |
| **Personalidade** | 3 arquétipos disponíveis                       |
| **Custo de Uso**  | 10 IP (Influence Points) por interação         |

---

## 6.2 Chat Interativo via NLP

### Interface de Comando

**Localização:** Painel P7 (presente em todos os workspaces)

**Ativação:** Pressionar `/` (barra) foca o input instantaneamente

### Categorias de Comando

#### 1. Comandos Administrativos

```
/buy [item] [quantidade]
/upgrade [building]
/recruit [class]
/unlock [skill_name]
```

#### 2. Comandos Sociais

```
/send letter [hero] [mensagem]
/who is [hero_name]?
/why is [hero] angry?
/show relationships [hero]
```

#### 3. Comandos Estratégicos

```
/attack [location] with [hero]
/defend [location]
/scout [area]
/retreat all
```

#### 4. Consultas Analíticas

```
/summary today
/who is fighting?
/what happened to [hero]?
/top killers
/economy report
```

### Exemplo de Conversa

```
Jogador: /why is Lila angry?

Conselheiro: "Majestade, Lila Rogue está irritada porque
Sir Kaelen roubou o último golpe dela contra um Ogro há
15 minutos. Ela perdeu 200 XP e um item raro. Baseado
na personalidade dela (Ganância: Alta), sugiro oferecer
compensação em ouro ou ela pode iniciar PvP."

Jogador: /send letter Lila sorry, here's 300 gold

Conselheiro: "Carta enviada. Custo: 25 IP. Lila deve
receber em aproximadamente 20 segundos."
```

---

## 6.3 Personalidades do Conselheiro

O jogador escolhe **uma das 3 personalidades** no início do jogo:

### 1. O Cético/Sarcástico ("Tyrion")

**Características:**

- Respostas com humor negro
- Questiona decisões ruins
- Relatórios brutalmente honestos

**Exemplo:**

```
Jogador: /attack elite dragon

Conselheiro: "Majestade, com todo respeito... isso é
insanidade. Seus heróis mal derrotam Goblins. Mas se
insiste, prepararei os certificados de óbito."
```

### 2. O Otimista/Bajulador ("Jester")

**Características:**

- Sempre positivo (mesmo em desastres)
- Enfeita relatórios
- Minimiza problemas

**Exemplo:**

```
[3 heróis morreram]

Conselheiro: "Majestade, grandes perdas, mas que
ÉPICO sacrifício! A história lembrará sua coragem!
🎺✨ PS: O tesouro está vazio, mas detalhes..."
```

### 3. O Burocrático/Neutro ("Data")

**Características:**

- Respostas factuais, sem emoção
- Relatórios em formato de lista
- Máxima eficiência, zero poesia

**Exemplo:**

```
Jogador: /summary today

Conselheiro: "RELATÓRIO DIÁRIO - DIA 45
- Heróis ativos: 10/12
- Ouro ganho: +850 (invasão repelida)
- Kills: Goblins x15, Ogros x3
- Status: 2 heróis feridos (HP <50%)
- Alertas: Estoque de poções CRÍTICO."
```

---

## 6.4 Cronista e Analista (O "Historiador")

### Geração de Relatórios

O Conselheiro gera automaticamente:

#### A. Relatório de Fim de Dia

```
"Majestade, o dia foi produtivo. Sir Kaelen subiu
de nível após derrotar 5 Ogros. Lila e Gandalf
formaram um novo grupo. Observo tensão crescente
entre Kaelen e Lila devido ao incidente de roubo
de kill. Recomendo intervenção diplomática."
```

#### B. Análise de Herói (Dossiê)

```
/analyze Kaelen

"Sir Kaelen (Guerreiro, Lvl 7)
- Personalidade: Corajoso, Leal, Altruísta
- Relacionamentos: Amigo de Gandalf (+80),
  Rival de Lila (-25)
- Performance: 42 kills, 1 morte
- Observação: Recusa fugir mesmo em HP baixo.
  Alto risco de morte heroica."
```

#### C. Previsões (IA Preditiva)

```
"Majestade, baseado nos padrões atuais, prevejo:
- 60% chance de PvP entre Kaelen e Lila nas
  próximas 2 horas.
- Invasão de Goblins estimada para 05:30 min.
- Gandalf está próximo de Level Up (XP: 480/500)."
```

---

## 6.5 Sussurros e Lore Dinâmica

### Sistema de "Whispers"

O Conselheiro gera **sussurros narrativos** baseados em eventos:

```typescript
const whisper = {
  trigger: "HERO_DEFEATS_ELITE_SOLO",
  hero: "Sir Kaelen",
  content: "Dizem que Kaelen derrotou um Ogro de
  três cabeças sozinho, usando apenas uma tocha
  e coragem. As tavernas já cantam sua balada..."
}
```

**Onde aparece:**

- Timeline Social (P5 do F1)
- Dossiê do herói (F3 Library)
- Crônicas finais (PDF)

### Exemplo de Whisper Gerado

```
[SUSSURRO] Após a morte de Gandalf, Lila foi vista
chorando na taverna. Ela nunca admitiu em voz alta,
mas o velho mago era como um pai para ela. Jurou
vingança contra o Dragão que o matou.
```

---

## 6.6 Espionagem e Estratégia

### Modo "Missão Secreta"

O jogador pode enviar o Conselheiro para espionar:

```
/send advisor scout [location]
```

**Consequências:**

- Conselheiro fica **incomunicável** por 2-5 minutos
- **Risco:** 10% chance de ser morto por monstros
- **Recompensa:** Intel sobre:
  - Localização de chefes
  - Recursos escondidos
  - Movimentação de facções inimigas

### Traição (Easter Egg Raro)

Se o Conselheiro tiver personalidade **Cético** E o jogador tomar **5+ decisões ruins** consecutivas:

**Evento Raro (5% chance):**

```
Conselheiro: "Majestade... com todo respeito, você
é PÉSSIMO nisso. Vou vender informações do reino
para a Guilda Mercante. Tchau! 💼"

[ALERTA] Conselheiro fugiu! Ficará ausente por 10
minutos. Todos comandos NLP desabilitados.
```

---

## 6.7 Custo de Influência (O "Rate Limit" Narrativo)

### Influence Points (IP)

Para evitar **spam de comandos** e manter a **imersão narrativa**:

**Sistema:**

- Jogador começa com **100/100 IP**
- Cada comando gasto: **-10 IP**
- Enviar carta: **-25 IP**
- Regeneração: **+1 IP a cada 3 segundos** (20 IP/min)

### Estratégia de Uso

**Cenário de Escassez:**

```
IP Atual: 15/100

Jogador precisa:
- Enviar carta urgente (25 IP) ❌ Não pode!
- Pedir relatório (10 IP) ✅ Pode
- Comprar item (10 IP) ❌ Ficaria com 5 IP

Decisão: Esperar 30s para regenerar 10 IP, então
enviar carta (total: 25 IP).
```

### Visual no HUD

```
P3: ESTADO DO REINO
OURO: 1,250
MANA: 300
INFL: [|||||.....] (50/100 IP) ← Barra visual
```

---

# 7. ECONOMIA E GESTÃO DO REINO

## 7.1 Tesouro Real: A Fonte de Ouro

### Como o Ouro é Gerado

**Princípio:** O reino **NÃO** gera ouro automaticamente. Toda renda vem do **gasto dos heróis na vila**.

#### Ciclo Econômico

```
1. Herói derrota monstro → Ganha 100 Ouro (loot)
2. Herói volta à vila → Compra poção por 50 Ouro
3. Imposto Real (50% do valor) → +25 Ouro para o Tesouro
4. Jogador usa esse ouro para upgrades e recrutar heróis
```

### Taxa de Imposto

| Tipo de Transação          | Taxa para o Tesouro |
| -------------------------- | ------------------- |
| Compra de Poção            | 50% do valor        |
| Compra de Equipamento      | 40% do valor        |
| Upgrade de Arma (Ferreiro) | 30% do valor        |
| Healing na Taverna         | 60% do valor        |

### Visualização no HUD

```
P3: ESTADO DO REINO
OURO: 1,250 [↑ +50/min]
     └─ Fonte: Vendas de Poções (3), Healing (2)
```

---

## 7.2 Curadoria de Habilidades (Tech Tree)

### O Sistema de "Skill Unlock"

**Conceito:** Os heróis **NÃO** desbloqueiam habilidades automaticamente. O jogador precisa **comprar** cada skill para liberar para a guilda correspondente.

#### Mecânica

1. Jogador vai para **[F2] ADMIN → P2 (Árvore de Skills)**
2. Seleciona uma habilidade (ex: "Golpe Giratório")
3. Paga o custo (ex: 200 Ouro)
4. A skill é **liberada para TODOS os guerreiros** da guilda

#### Custo Exponencial

```typescript
const skillCost = basePrice * Math.pow(1.5, tierLevel);

// Exemplo:
Tier 1: 200g  (Golpe Giratório)
Tier 2: 300g  (Grito de Provocação)
Tier 3: 450g  (Fúria Berserker)
Tier 4: 675g  (Golpe do Titã)
```

### Árvore de Dependências

```
GUERREIRO
├─ [Raiz] Ataque Básico (Grátis)
├─── [T1] Golpe Giratório (200g)
│    └─── [T2] Tempestade de Lâminas (300g)
│         └─── [T4] Colheita Sangrenta (675g)
│
└─── [T1] Grito Provocação (200g)
     └─── [T3] Vontade Inabalável (450g)
          └─── [T4] Último Suspiro (675g)
```

**Regra:** Não é possível comprar T2 sem ter comprado o pai (T1).

---

## 7.3 Gestão de Estoques: Poções e Salários

### Sistema de Reabastecimento

**Problema:** Heróis consomem poções. Se o estoque zerar, eles ficam sem cura.

#### Alerta Automático

```
P3: ESTADO DO REINO
> NOTIFICAÇÕES
[!] Estoque Baixo: Poção Vida (12/50)
    Recomenda-se comprar +30 (Custo: 1,500g)
```

#### Compra Manual

```
Jogador: /buy health_potion 30

Conselheiro: "Compra realizada. Estoque atualizado:
42/50 Poções de Vida. Saldo: 350 Ouro."
```

### Salários dos Guardas

**Conceito:** Torres de Vigia e Muralhas têm **guardas NPCs** que exigem salário.

| Edifício             | Guardas | Salário/Dia |
| -------------------- | ------- | ----------- |
| Torre de Vigia Lvl 1 | 2       | 10g/dia     |
| Torre de Vigia Lvl 2 | 4       | 20g/dia     |
| Muralha Lvl 1        | 5       | 25g/dia     |
| Posto Avançado       | 10      | 100g/dia    |

**Se não pagar:** Guardas desertam. Construção fica inativa (sem buff defensivo).

---

## 7.4 Decretos Reais: Buffs Globais com Risco

### O Conceito

**Decretos** são buffs temporários que afetam **todos os heróis**, mas têm **efeitos colaterais aleatórios**.

### Exemplo de Decreto

**"Decreto de Guerra Total"**

- **Custo:** 500 Ouro
- **Duração:** 10 minutos
- **Buff:** +30% Ataque Global, +20% XP
- **Risco:** 20% chance de evento "Motim" (1 herói fica com -50 Lealdade)

### Lista de Decretos

| Nome                  | Custo | Buff                                            | Risco                                   |
| --------------------- | ----- | ----------------------------------------------- | --------------------------------------- |
| **Banquete Real**     | 300g  | +Moral (+10% stats), sem deserções por 15 min   | Pode atrair ladrões (invasão Goblin)    |
| **Toque de Recolher** | 200g  | Heróis retornam à vila ao anoitecer (segurança) | -5 Moral global (reclamam)              |
| **Bênção Divina**     | 800g  | +50% Regeneração de HP/Mana por 5 min           | Pode atrair mortos-vivos (sentem magia) |
| **Dia de Folga**      | 0g    | Heróis param de lutar por 5 min (descansam)     | Perde oportunidades de loot             |

### Uso Estratégico

**Cenário:**

```
Dia 73: Boss Dragão detectado no radar.
Jogador: /decree war_effort
Conselheiro: "Decreto emitido! Todos os heróis estão
motivados. Mas atenção: Gandalf está murmurando sobre
'autoritarismo'. Lealdade dele caiu para 40%."
```

---

## 7.5 Influence Points (IP): A "Mana Social"

### Recapitulação do Sistema

**IP (Influence Points)** é o recurso que **limita a interação com o Conselheiro** e o **envio de cartas**.

#### Mecânica Completa

| Ação                      | Custo IP |
| ------------------------- | -------- |
| Comando ao Conselheiro    | -10 IP   |
| Enviar Carta para Herói   | -25 IP   |
| Decreto Real              | -30 IP   |
| Análise Profunda (Dossiê) | -15 IP   |

**Regeneração:**

- Base: +1 IP a cada 3 segundos (20 IP/min)
- Com upgrade "Corte Real": +2 IP a cada 3 segundos (40 IP/min)

### Justificativa de Design

1. **Previne Spam:** Sem IP, jogador poderia enviar 100 cartas por minuto
2. **Gestão de Recursos:** IP se torna recurso tão importante quanto Ouro
3. **Custo de API:** Cada comando usa LLM (custa dinheiro real), IP justifica o rate limit
4. **Imersão:** "Sua influência não é ilimitada, Majestade"

---

## 7.6 Manutenção de Edifícios

### Custo Diário de Manutenção

Cada edifício tem um **custo de manutenção diário** (24h reais = 1 dia de jogo).

| Edifício                | Manutenção/Dia |
| ----------------------- | -------------- |
| Guilda Guerreiros Lvl 1 | 5g             |
| Guilda Guerreiros Lvl 2 | 10g            |
| Loja de Poções          | 8g             |
| Torre de Vigia          | 12g            |
| Posto Avançado          | 50g            |

### Falência

Se o Tesouro chegar a **0 Ouro** e não conseguir pagar:

1. **Dia 1 de atraso:** Alerta crítico (vermelho)
2. **Dia 2 de atraso:** Guardas desertam, edifícios param de funcionar
3. **Dia 3 de atraso:** **GAME OVER** (Reino colapsou)

### Solução de Emergência

```
Jogador: /emergency_tax

Conselheiro: "Taxa de emergência cobrada! Heróis
doaram 30% do ouro individual. Arrecadado: 400g.
Mas eles estão FURIOSOS. -10 Moral global."
```

---

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

## 8.2 Os 3 Ciclos de 50 Dias: Progressão Temporal

### Estrutura da Partida

Cada partida dura **150 dias** divididos em **3 ciclos** de 50 dias.

```
┌─────────────────────────────────────────────┐
│ CICLO 1: "Primavera" (Dias 1-50)           │
│ - Monstros: Tier 1 (Goblins, Lobos)        │
│ - Clima: Neutro                             │
│ - Eventos: Tutoriais, expansão básica      │
└─────────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────────┐
│ CICLO 2: "Verão Vermelho" (Dias 51-100)    │
│ - Monstros: Tier 2 (Ogros, Trolls)         │
│ - Clima: Tempestades, seca                 │
│ - Eventos: Invasões massivas, traições     │
└─────────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────────┐
│ CICLO 3: "Apocalipse" (Dias 101-150)       │
│ - Monstros: Tier 3 (Dragões, Demônios)     │
│ - Clima: Lua de Sangue, terremotos         │
│ - Evento Final: Castelo Amaldiçoado        │
└─────────────────────────────────────────────┘
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

# 9. MECÂNICAS AVANÇADAS DE EXPANSÃO

## 9.1 Postos Avançados: Expandindo o Reino

### O Conceito

**Postos Avançados** são colônias distantes da capital que funcionam **semi-autonomamente**.

### Limitação Estratégica

- **Máximo:** 1 Posto Avançado por partida
- **Justificativa:** Gerenciar múltiplos postos seria microgerenciamento excessivo

---

## 9.2 Fundando um Posto Avançado

### Requisitos

1. **3 Heróis Vivos** dispostos a se mudar
2. **1,000 Ouro** para construção
3. **Localização válida** no mapa (>20 hexágonos da capital)

### Processo

**Passo 1: Seleção de Heróis**

```
Jogador: /found_outpost forest_north

Conselheiro: "Para fundar um posto, você deve escolher
3 heróis. ATENÇÃO: Eles deixarão a capital permanentemente
e viverão de forma autônoma. Escolha sabiamente."

[Modal abre mostrando lista de heróis]
Jogador seleciona: Kaelen, Lila, Elara
```

**Passo 2: Nomeação do Capitão**

```
Conselheiro: "Quem será o Capitão do Posto? Ele liderará
as decisões táticas."

[Jogador escolhe: Kaelen]

Kaelen recebe título: "Capitão do Posto Norte"
Stats: +10% All, Lealdade locked em 100%
```

**Passo 3: Construção**

```
[1 minuto depois - tempo de construção]

[EVENTO] Posto Avançado fundado com sucesso!
Localização: Floresta Norte (X:5, Y:10)
Heróis: Kaelen (Capitão), Lila, Elara
Status: Autônomo
Taxa de Tributo: 20% do ouro gerado
```

---

## 9.3 Gestão Autônoma do Posto

### O Capitão Decide

O **Capitão** usa **Utility AI** para tomar decisões sem input do jogador:

#### Decisões Autônomas

| Situação           | Decisão do Capitão                |
| ------------------ | --------------------------------- |
| Monstros próximos  | Enviar heróis para patrulha       |
| Ouro suficiente    | Comprar poções automaticamente    |
| Boss detectado     | Pedir reforços ao jogador (carta) |
| HP baixo de aliado | Ordenar recuo                     |

### Tributo Real

O Posto envia **20% do ouro** gerado de volta para a capital.

```
[15:30] 💰 Posto Norte enviou tributo: 150 Ouro
        Fonte: 3 Ogros derrotados
```

---

## 9.4 Lealdade do Posto

### Sistema de Lealdade

O Posto tem um **medidor de lealdade** (0-100%):

| Lealdade    | Status            | Comportamento              |
| ----------- | ----------------- | -------------------------- |
| **80-100%** | Vassalo Leal      | Envia tributo regularmente |
| **50-79%**  | Neutro            | Tributo reduzido (10%)     |
| **20-49%**  | Descontente       | Pode ignorar ordens        |
| **0-19%**   | Rebelião iminente | Risco de traição total     |

### Como Aumentar Lealdade (+)

| Ação                                  | Ganho        |
| ------------------------------------- | ------------ |
| Enviar ouro ao Posto                  | +10 por 500g |
| Enviar reforços (heróis temporários)  | +15          |
| Responder pedido de ajuda rapidamente | +20          |
| Não cobrar tributo por 1 dia          | +5           |

### Como Diminuir Lealdade (-)

| Ação                                 | Perda          |
| ------------------------------------ | -------------- |
| Ignorar pedido de ajuda              | -20            |
| Cobrar tributo extra                 | -15            |
| Deixar Capitão morrer                | -50 (crítico!) |
| Não enviar suprimentos quando pedido | -10            |

---

## 9.5 Morte do Capitão: Condição de Falha

### Regra Crítica

**Se o Capitão morrer, o Posto COLAPSA.**

#### Sequência de Eventos

```
[ALERTA] Kaelen (Capitão) foi derrotado por Dragão!

[30s depois]
[EVENTO CRÍTICO] Posto Norte entrou em CAOS!
- Lila e Elara estão sem liderança
- Lealdade: 0%
- Status: ABANDONADO

[Escolha do Jogador]
> [A] Promover novo Capitão (Lila ou Elara)
> [B] Evacuar heróis de volta à capital
> [C] Abandonar o Posto (heróis morrem)
```

**Se escolher [A]:**

- Novo Capitão começa com Lealdade 50%
- Perde todo o ouro acumulado
- Posto mantém funcionalidade

**Se escolher [B]:**

- Heróis retornam (viagem de 2 minutos)
- Posto é destruído
- Perde 1,000 Ouro investido

---

## 9.6 Mudança de Capital: Decisão Irreversível

### O Conceito

Se o Posto prosperar muito, o jogador pode **mudar a capital** para lá.

### Requisitos

1. Posto com Lealdade 100%
2. Mínimo 5 heróis no Posto
3. Ouro acumulado >2,000
4. Aprovação do Capitão

### Consequências Permanentes

```
Jogador: /move_capital outpost_north

Conselheiro: "ATENÇÃO! Esta decisão é IRREVERSÍVEL.
A vila atual se tornará um posto, e o Posto Norte
será a nova capital. Confirma?"

[Jogador: Sim]

[EVENTO ÉPICO] A Capital foi movida!
- Vila Antiga: Agora é "Posto Sul" (autônomo)
- Posto Norte: Agora é a Capital (controle direto)
- Todos heróis da capital antiga viram vassalos
- Você agora controla diretamente os heróis do Norte
```

---

## 9.7 Traição: Quando Heróis se Voltam Contra Você

### Herói Corrompido (Individual)

Se um herói alcançar **Lealdade ≤ 10%**, ele pode trair:

#### Gatilho de Traição

```typescript
if (hero.loyalty <= 10 && random() < 0.3) {
  triggerBetrayal(hero);
}
```

#### Evento de Traição

```
[ALERTA] Lila Rogue traiu o reino!
- Status: CORRUPTED
- Localização: Desconhecida (fugiu)
- Ameaça: Ela pode retornar com mercenários

[3 horas de jogo depois]
[INVASÃO] Lila retornou com 10 Bandidos!
Alvo: Guilda de Ladinos (vingança)
```

**Solução:**

- Derrotar Lila em combate (ela luta como boss)
- Negociar perdão (custo: 2,000 Ouro + carta de desculpas)

---

## 9.8 Colônia Rebelde (Traição em Massa)

### O Evento Mais Raro

**Condições:**

1. 3+ heróis com Lealdade <30%
2. Affinity entre eles >50 (são amigos)
3. Evento só pode acontecer **1x por partida**

### Sequência

```
[DIA 87 - EVENTO CRÍTICO]
🚩 REBELIÃO DETECTADA!

Kaelen, Lila e Gandalf formaram uma facção rebelde!
Eles roubaram 500 Ouro e 20 poções.
Localização: Fundaram "Vila dos Exilados" (X:15, Y:15)

[Nova ameaça no mapa]
Vila dos Exilados:
- População: 3 heróis traidores
- Comportamento: Atacam caravanas, roubam recursos
- Objetivo: Destruir sua capital
```

### Como Resolver

**Opção 1: Guerra Total**

- Enviar heróis leais para destruir a Vila dos Exilados
- Combate difícil (traidores conhecem suas táticas)

**Opção 2: Negociação**

```
Jogador: /negotiate rebels

Conselheiro: "Kaelen exige: 1,500 Ouro, perdão total
e autonomia completa. Aceitar significa perder 3 heróis,
mas evita guerra civil."
```

**Opção 3: Ignorar**

- Rebeldes se tornam facção permanente no mapa
- Atacam periodicamente (mini-boss)

---

# 10. NARRATIVA EMERGENTE E LEGADO

## 10.1 Crônicas do Reino: O PDF Ilustrado

### O Sistema de Legado Permanente

Ao final de cada partida (vitória ou derrota no Dia 150), o jogo gera um **PDF ilustrado** contendo a história única daquela partida.

### Conteúdo das Crônicas

```
═══════════════════════════════════════════
     CRÔNICAS DO REINO DE [PLAYER_NAME]
       Partida #7 - Seed: a7x9k2
═══════════════════════════════════════════

CAPÍTULO 1: A FUNDAÇÃO (Dias 1-50)
───────────────────────────────────────────

[IMAGEM: Vila inicial gerada por IA]

No primeiro dia, o reino era apenas uma vila
cercada por névoa. Sir Kaelen foi o primeiro
herói a jurar lealdade. Ele, um guerreiro sem
medo, enfrentou sozinho uma horda de 12 Goblins
no Dia 5.

[ESTATÍSTICA]
Heróis recrutados: 8
Ouro acumulado: 2,400
Mortes: 1 (Gandalf, Dia 23, morto por Ogro)

[EVENTO MEMORÁVEL]
Dia 18: Lila roubou o kill de Kaelen.
Iniciou-se a rivalidade que duraria 80 dias.

───────────────────────────────────────────

CAPÍTULO 2: A EXPANSÃO (Dias 51-100)
───────────────────────────────────────────

[IMAGEM: Posto Avançado na floresta]

Kaelen fundou o Posto Norte no Dia 63, levando
Lila e Elara. A tensão entre ele e Lila crescia.
No Dia 71, após salvar Lila de um Troll, a
afinidade entre eles aumentou de -20 para +40.

[SUSSURRO GERADO]
"Dizem que Lila chorou ao ver Kaelen defendê-la.
Foi a primeira vez que confiou em alguém."

───────────────────────────────────────────

CAPÍTULO 3: O APOCALIPSE (Dias 101-150)
───────────────────────────────────────────

[IMAGEM: Castelo Amaldiçoado]

Gandalf retornou. Mas não como aliado. O feiticeiro
foi corrompido e se tornou o Rei Vilão. A batalha
final durou 3 dias. Kaelen, em seu último suspiro,
desferiu o golpe final.

[RESULTADO FINAL]
Vitória! Reino Salvo.
Heróis Sobreviventes: 5/12
Herói MVP: Sir Kaelen (87 kills, 2 mortes)
Duo Inseparável: Kaelen & Lila (Affinity: +95)

───────────────────────────────────────────
Partida concluída em 14h32min.
Score Final: S (Lendário)
───────────────────────────────────────────
```

### Geração de Imagens

As **imagens são geradas por IA** (Stable Diffusion/DALL-E) usando prompts dos eventos:

```typescript
const prompt = `Fantasy pixel art, ${event.hero} fighting ${event.monster} 
in ${event.location}, dramatic lighting, retro game style`;

const image = await generateImage(prompt);
chronicle.addImage(image, event.day);
```

---

## 10.2 Sonhos e Sussurros: Balões de Pensamento

### Sistema de "Thought Bubbles"

Heróis exibem **pensamentos aleatórios** baseados em personalidade e eventos recentes.

#### Triggers de Sussurros

| Situação                 | Sussurro Gerado                                                                          |
| ------------------------ | ---------------------------------------------------------------------------------------- |
| Após matar boss sozinho  | _"Sou invencível! Talvez eu não precise desses fracos..."_ (Power Alto)                  |
| Ver aliado morrer        | _"Poderia ter salvado ele... mas o baú estava tão perto."_ (Resource Alto, Ethics Baixo) |
| Receber carta do jogador | _"O Rei lembrou de mim! Talvez eu seja especial."_                                       |
| Noite sem tochas         | _"Odeio a escuridão... minha mãe sempre dizia para evitar florestas à noite."_           |

### Visualização

```
P5: TIMELINE SOCIAL
[12:45] 💭 Sir Kaelen pensa: "Preciso provar meu valor..."
[12:46] Kaelen atacou Ogro Elite (HP: 100%)
[12:47] 💀 Kaelen foi derrotado.
[12:48] 💭 Kaelen (fantasma): "Argh... orgulho me matou."
```

---

## 10.3 Títulos e Epítetos Dinâmicos

### Sistema de Conquistas Narrativas

Heróis ganham **títulos** baseados em feitos:

| Título                 | Condição                  | Efeito                         |
| ---------------------- | ------------------------- | ------------------------------ |
| **"O Bravo"**          | Derrotar 3 elites sozinho | +5% Attack                     |
| **"Matador de Ogros"** | Matar 20 Ogros            | +20% dano vs Ogros             |
| **"O Covarde"**        | Fugir 10x de combates     | -10 Moral, +10% Speed          |
| **"Ladrão de Kills"**  | Roubar 15+ kills          | Outros heróis têm -10 Affinity |
| **"Salvador"**         | Salvar 5 aliados da morte | +15 Affinity com todos         |
| **"O Corrompido"**     | Trair o reino             | Torna-se boss                  |

### Visualização no Roster

```
P1: LISTA DE HERÓIS
[1] Sir Kaelen 🏆
    "O Bravo" | "Matador de Ogros"
    HP: 85% | Lvl 9
```

---

## 10.4 Modo Historiador: Replay com Onisciência

### O Conceito

Após completar a partida, o jogador pode **assistir a um replay** com visão total.

### Funcionalidades

#### 1. Visão Onisciente

- Remove Névoa de Guerra
- Mostra **tudo** que aconteceu, mesmo longe da capital

#### 2. Filtros de Eventos

```
[F3] LIBRARY → MODO HISTORIADOR

Filtros disponíveis:
☑ Combates
☐ Comércio
☑ Diálogos
☐ Construções
☑ Eventos Raros

[Linha do Tempo]
Dia 1  ━━━━━━━━━━ Dia 50 ━━━━━━━━━ Dia 100 ━━━ Dia 150
  ^cursor (Dia 23: Morte de Gandalf)
```

#### 3. Câmera Livre

- Jogador pode "voar" pelo mapa
- Ver combates que heróis tiveram longe
- Descobrir segredos (ex: "Lila estava apaixonada por Kaelen desde o Dia 10!")

---

## 10.5 Ecos do Passado: Itens Lendários de Partidas Anteriores

### Sistema de Meta-Progressão

Heróis de partidas anteriores **deixam lendas** no mundo.

#### Mecânica

```typescript
// Ao final da partida
if (hero.kills > 50 && hero.survived) {
  const legendaryItem = {
    name: `${hero.name}'s ${hero.weapon.name}`,
    stats: hero.weapon.stats * 1.5,
    lore: `Forjada nas mãos de ${hero.name}, esta arma 
           derrotou ${hero.kills} inimigos.`,
  };

  saveToLegacyDatabase(legendaryItem);
}

// Em partidas futuras
const rareDrop = getRandomLegacyItem(); // 1% chance
spawnItem(rareDrop, randomLocation);
```

#### Exemplo de Drop

```
[LOOT RARO!]
Item encontrado: "Espada de Kaelen, O Bravo"
Origem: Partida #7 (sua partida anterior)
Stats: +50 Attack, +10% Crit
Lore: "Sir Kaelen, o lendário matador de ogros,
       empunhou esta lâmina por 87 dias antes de
       desaparecer nas névoas do tempo."
```

---

## 10.6 O Livro dos Mortos: Memorial Permanente

### Cada Herói Morto é Lembrado

No **[F3] LIBRARY → MEMORIAL**, há uma lista de **todos os heróis mortos** de todas as partidas.

```
═══════════════════════════════════════════
           MEMORIAL DOS CAÍDOS
═══════════════════════════════════════════

🕯️ Gandalf, O Sábio
   Partida: #7
   Nível: 5
   Morto por: Ogro das Cavernas
   Dia: 23
   Kills: 18
   Última palavra: "Cuidado com... *ugh*"

   [VER BIOGRAFIA] [VER ÚLTIMA BATALHA]

───────────────────────────────────────────

🕯️ Elara, A Arqueira
   Partida: #5
   Nível: 8
   Morto por: Dragão de Fogo
   Dia: 142
   Kills: 76
   Epíteto: "A Caçadora Silenciosa"

   [VER CRÔNICAS] [HONRAR] (-10 IP gera oração)
```

---

## 10.7 Achievements Narrativos (Conquistas)

### Conquistas Baseadas em História, Não Grind

| Conquista                    | Condição                                       | Raridade |
| ---------------------------- | ---------------------------------------------- | -------- |
| **"Novela Mexicana"**        | 5+ PvP entre heróis em uma partida             | Rara     |
| **"Pacifista Acidental"**    | Completar Ciclo 1 sem nenhuma morte            | Lendária |
| **"Traição Shakespeariana"** | Ter herói traidor que era amigo (+60 Affinity) | Épica    |
| **"O Nécio"**                | Enviar herói lvl 1 contra boss lvl 10          | Comum    |
| **"Dinastia"**               | Ter 3 itens lendários de partidas anteriores   | Mítica   |
| **"Último Suspiro"**         | Ganhar com apenas 1 herói vivo no Dia 150      | Lendária |

---

## 10.8 Compartilhamento Social

### Exportar e Mostrar Crônicas

```
[FIM DA PARTIDA]

Opções:
> [A] Salvar PDF localmente
> [B] Compartilhar link público (upload opcional)
> [C] Postar no Discord/Twitter (com screenshot)

[Se escolher B]
"Suas Crônicas foram publicadas!
Link: heroesofmajesty.com/chronicles/a7x9k2

Amigos podem ler e ver estatísticas (sem spoilers)."
```

---

# 11. MULTIPLAYER (VISÃO FUTURA)

> **NOTA:** Multiplayer **não é foco da versão 1.0**. Esta seção documenta ideias para versões futuras.

## 11.1 Por Que Multiplayer Foi Desprioritizado

### Decisão de Design

Como **solopreneur com tempo limitado**, o foco inicial está em criar uma **experiência singleplayer rica e profunda**. Multiplayer adiciona:

- Complexidade técnica (sincronização, servidores)
- Problemas de balanceamento
- Necessidade de matchmaking e anti-cheat
- Custo de infraestrutura

**Filosofia:** É melhor ter um **excelente jogo solo** do que um multiplayer medíocre.

---

## 11.2 Modo Co-op Assíncrono (Proposta Futura)

### O Conceito: "Reinos Vizinhos"

Dois jogadores **não jogam simultaneamente**, mas seus reinos **coexistem no mesmo mundo**.

#### Mecânica

```
Jogador A cria partida.
Jogador B entra como "Reino Vizinho".

- Ambos têm vilas separadas (distância: 50 hexágonos)
- Névoa de Guerra compartilhada (se A explora, B vê)
- Podem enviar heróis em missões conjuntas
- Heróis de A e B podem formar grupos mistos
```

#### Benefícios

| Interação              | Efeito                                                 |
| ---------------------- | ------------------------------------------------------ |
| **Enviar Ouro**        | Transferência direta entre tesouros                    |
| **Emprestar Herói**    | Herói de A vai para reino de B por 10 minutos          |
| **Missão Conjunta**    | 2 heróis (1 de cada) atacam boss juntos. Loot dividido |
| **Comércio de Skills** | A desbloqueia skill para B (custo dobrado)             |

---

## 11.3 Modo PvP Indireto (Proposta Futura)

### O Conceito: "Guerra Fria"

Dois jogadores competem **indiretamente** pelos mesmos recursos.

#### Mecânica

```
Mapa compartilhado com 2 vilas (distância: 100 hexágonos)

Objetivos em conflito:
- Mesmas minas de ouro (só 1 pode controlar)
- Mesmo boss (quem matar primeiro leva loot lendário)
- Mesmas relíquias no mapa
```

#### Combate Direto?

**NÃO.** Heróis de jogadores **não lutam diretamente** entre si.

**Em vez disso:**

- Heróis podem **sabotar** construções do oponente
- Roubar recursos de caravanas
- Contratar mercenários para atacar indiretamente

---

## 11.4 Leaderboards e Seasons (Proposta Futura)

### Sistema de Ranking Global

| Categoria      | Métrica                              |
| -------------- | ------------------------------------ |
| **Ouro Total** | Quem acumulou mais ouro em 150 dias  |
| **Survivor**   | Quem completou com mais heróis vivos |
| **Speedrun**   | Quem derrotou Rei Vilão mais rápido  |
| **Pacifista**  | Menor número de mortes de heróis     |
| **Warmonger**  | Mais kills de monstros               |

### Seasons Temáticas

```
Season 1: "The Age of Dragons"
- Dragões spawnam 200% mais
- Recompensa exclusiva: Skin "Dragão Domado"

Season 2: "Rebellion Rising"
- Traições acontecem 50% mais
- Novo boss: "O Rei Traidor"
```

---

## 11.5 Desafios de Amigos (Proposta Futura)

### O Conceito

Jogador A completa partida e **desafia** Jogador B com:

**Same Seed Challenge:**

```
Jogador A: "Consegui score S com seed a7x9k2. Você consegue?"

Jogador B aceita:
- Joga com exatamente o mesmo mapa
- Mesma distribuição de monstros
- Mesmos eventos aleatórios

Ao final: Comparação lado a lado
- Quem teve mais ouro?
- Quem perdeu menos heróis?
- Quem derrotou o boss primeiro?
```

---

# 12. SISTEMA DE MONSTROS: IA P.A.I.N.

## 12.1 Visão Geral: Os Inimigos Autônomos

Assim como heróis têm personalidade, **monstros têm instintos**.

### Sistema P.A.I.N. (Personality AI for Non-heroes)

4 vetores bestiais que definem comportamento:

| Vetor | Nome             | Significado                                          |
| ----- | ---------------- | ---------------------------------------------------- |
| **P** | **Preservation** | Instinto de sobrevivência (fuga vs luta até a morte) |
| **A** | **Aggression**   | Agressividade (passivo vs caçador)                   |
| **I** | **Intellect**    | Inteligência tática (burro vs esperto)               |
| **N** | **Nature**       | Natureza (solitário vs bando)                        |

---

## 12.2 Perfis de Monstros

### Goblin (Covardes Oportunistas)

```typescript
{
  preservation: 0.8,  // Fogem facilmente
  aggression: 0.3,    // Só atacam se vantagem numérica
  intellect: 0.4,     // Táticas básicas
  nature: 0.9         // Adoram grupos (3-5)
}
```

**Comportamento:**

- Atacam heróis solitários
- Fogem se HP < 50%
- Priorizam saquear edifícios em vez de lutar
- Chamam reforços se virem aliados

---

### Ogro (Burro e Brutal)

```typescript
{
  preservation: 0.2,  // Luta até quase morrer
  aggression: 0.9,    // Ataca tudo que se move
  intellect: 0.2,     // Ataca o mais próximo (não pensa)
  nature: 0.1         // Solitário (raramente em dupla)
}
```

**Comportamento:**

- Ignora heróis fracos, foca o mais forte
- Não foge (só com HP < 10%)
- Destrói edifícios se não há heróis por perto
- Ruído alto (heróis ouvem de longe)

---

### Lobo (Caçador Tático)

```typescript
{
  preservation: 0.5,  // Equilíbrio
  aggression: 0.7,    // Predador ativo
  intellect: 0.7,     // Esperto! Flanqueia
  nature: 0.8         // Matilha (4-6)
}
```

**Comportamento:**

- Ataca heróis isolados de flancos diferentes
- Líder da matilha tem +20% stats
- Foge se líder morrer
- **Noturno:** +50% stats à noite

---

### Dragão (Boss Supremo)

```typescript
{
  preservation: 0.1,  // Arrogante, não foge
  aggression: 1.0,    // Ataca primeiro, pergunta depois
  intellect: 0.9,     // Foca magos/healers primeiro
  nature: 0.0         // Absolutamente solitário
}
```

**Comportamento:**

- **Breath Attack:** AoE que atinge 3 heróis
- **Flight:** Pode ignorar terreno difícil
- **Treasure Hoard:** Guarda loot lendário
- Imune a debuffs comuns

---

## 12.3 Sistema de Nêmesis: Monstros que Evoluem

### O Conceito

Se um monstro **matar um herói**, ele se torna **Nêmesis**.

#### Transformação

```typescript
if (monster.killCount >= 1) {
  monster.status = NEMESIS;
  monster.name = `${monster.type} Matador de ${hero.name}`;
  monster.stats *= 1.5; // +50% HP/Attack
  monster.hasMemory = true; // Lembra de outros heróis
}
```

### Exemplo

```
[DIA 15]
Ogro matou Gandalf.

[Transformação]
Ogro → "Ogro Matador de Gandalf"
HP: 200 → 300
Attack: 50 → 75
Novo comportamento: Caça heróis magos (ódio por Gandalf)

[DIA 20]
Se encontrar outro mago:
Ogro prioriza 100% atacar o mago (ignora outros alvos)
```

### Mecânica de Vingança

Se **amigo de Gandalf** matar o Nêmesis:

```
[LOG]
Sir Kaelen derrotou Ogro Matador de Gandalf!

[RECOMPENSA ESPECIAL]
+ XP dobrado
+ Título: "Vingador de Gandalf"
+ Affinity: +30 com todos que gostavam de Gandalf
+ Item: "Medalha de Gandalf" (acc mágico)
```

---

## 12.4 Facções de Monstros: Comportamento Coletivo

### Tipos de Facções

#### 1. Horda Goblin

- **Comportamento:** Invasões em massa (20-30 goblins)
- **Alvo:** Edifícios (querem saquear, não matar)
- **Fraqueza:** Fogo (pânico em massa)

#### 2. Clã de Ogros

- **Comportamento:** Patrulhas territóriais
- **Alvo:** Heróis que invadem território
- **Hierarquia:** Ogro Chefe (boss menor)

#### 3. Culto Morto-Vivo

- **Comportamento:** Spawna à noite perto de cemitérios
- **Alvo:** Mago heróis (para drenar mana)
- **Especial:** Necromancer pode reanimar heróis mortos

#### 4. Dragões Anciões

- **Comportamento:** Territoriais, defendem covil
- **Alvo:** Qualquer um que entre em raio de 30 hexágonos
- **Especial:** Não perseguem (ficam no ninho)

---

## 12.5 Patrulhas e Spawn Dinâmico

### Sistema de Patrulha

Monstros **não ficam parados**. Eles patrulham rotas predefinidas.

```typescript
const patrolRoute = [
  {x: 5, y: 5},
  {x: 10, y: 5},
  {x: 10, y: 10},
  {x: 5, y: 10}
]; // Patrulha quadrada

monster.move(patrolRoute, looping: true);
```

**Implicação:**

- Heróis podem **evitar** monstros estudando padrões
- Ou **emboscar** monstros em pontos específicos

---

## 12.6 Ondas de Invasão: Eventos de Cerco

### Mecânica de Invasão

Periodicamente (a cada 20 dias), uma **horda** ataca a vila.

#### Fases da Invasão

```
[ALERTA - 5 min antes]
Conselheiro: "Detectei movimento em massa.
Invasão de Goblins em 5 minutos. Prepare defesas!"

[FASE 1: Aproximação]
30 Goblins spawnam a 50 hexágonos da vila.
Marcha lenta em direção à capital.

[FASE 2: Primeiro Contato]
Torres e heróis patrulhando enfrentam vanguarda.
Goblins começam a morrer, mas continuam avançando.

[FASE 3: Cerco]
Goblins que chegam à vila atacam:
- Prioridade 1: Loja de Poções (loot)
- Prioridade 2: Guilda de Ladinos (ouro)
- Prioridade 3: Muralhas

[FASE 4: Retirada ou Vitória]
Se 70% dos Goblins morrerem: Retirada
Se destruírem 2+ edifícios: Vitória Goblin (fogem com loot)
```

### Recompensa por Defesa Bem-Sucedida

```
[VITÓRIA]
Invasão repelida!
Recompensa: 500 Ouro (loot dos corpos)
            +10 Moral (heróis orgulhosos)
            Novo evento desbloqueado: "Contra-Ataque"
```

---

## 12.7 Bosses Dinâmicos: Diferentes a Cada Partida

### Sistema de Boss Procedural

Cada partida gera **bosses únicos** baseados em:

1. Seed do mapa
2. Facção dominante
3. Herói mais forte do jogador

#### Exemplo de Geração

```typescript
const bossTemplate = {
  name: generateName(seed), // "Grok, O Devorador"
  type: dominantFaction,    // Ogro (se jogador matou muitos goblins)
  stats: {
    hp: avgHeroLevel * 200,
    attack: avgHeroLevel * 15
  },
  abilities: [
    "Ground Slam" (AoE),
    "Enrage" (quando HP < 30%)
  ]
};
```

**Resultado:**

- Jogador nunca enfrenta o mesmo boss duas vezes
- Boss é balanceado para o nível médio dos heróis

---

## 12.8 Escalonamento de Dificuldade por Ciclo

### Tier de Monstros por Ciclo

| Ciclo                | Tier | Monstros Comuns                 | Boss Típico  |
| -------------------- | ---- | ------------------------------- | ------------ |
| **1 (Dias 1-50)**    | T1   | Goblins, Lobos, Esqueletos      | Ogro Chefe   |
| **2 (Dias 51-100)**  | T2   | Ogros, Trolls, Aranhas Gigantes | Hidra, Golem |
| **3 (Dias 101-150)** | T3   | Dragões, Demônios, Liches       | Rei Vilão    |

### Modificadores de Stats

```typescript
const cycleMult = {
  1: 1.0, // Baseline
  2: 1.5, // +50% HP/Attack
  3: 2.5, // +150% HP/Attack
};

monster.hp *= cycleMult[currentCycle];
monster.attack *= cycleMult[currentCycle];
```

---

## 12.9 Comportamentos Especiais: Anti-Padrões

### Sistema Anti-Cheese

Monstros **aprendem** com estratégias repetitivas do jogador.

#### Detecção de Padrões

```typescript
if (player.usedSameTactic >= 5) {
  monsters.adaptToTactic(player.tactic);
}

// Exemplo:
// Jogador sempre usa "Kiting com Arqueiro"
// Após 5 usos:
nextMonster.speed += 50%; // Monstros ficam mais rápidos
```

#### Exemplos de Adaptação

| Tática do Jogador        | Adaptação do Monstro               |
| ------------------------ | ---------------------------------- |
| **Sempre usa Torres**    | Monstros ganham "Range Attack"     |
| **Sempre cura na vila**  | Monstros acampam perto da vila     |
| **Sempre ataca à noite** | Monstros noturnos dobram           |
| **Sempre usa Mago**      | Monstros ganham "Magic Resistance" |

---

## 12.10 Loot Dinâmico: Recompensa por Risco

### Sistema de Drop Baseado em Dificuldade

```typescript
const lootQuality = monster.level * riskMultiplier;

// Risk Multiplier:
// 1.0 = Herói lvl 5 mata monstro lvl 5 (justo)
// 2.0 = Herói lvl 3 mata monstro lvl 8 (heroico!)
// 0.5 = Herói lvl 10 mata monstro lvl 2 (fácil demais)

if (riskMultiplier >= 1.5) {
  dropRareItem(); // Loot lendário
} else {
  dropCommonItem();
}
```

### Exemplo

```
Kaelen (Lvl 3) derrota Dragão (Lvl 10)
Risk: 3.3x

[LOOT ÉPICO!]
- Escama de Dragão (crafting raro)
- 500 Ouro (dobro do normal)
- "Espada Flamejante" (lendária, +80 Attack)
```

---

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
    event_trigger VARCHAR(50) NOT NULL,       -- 'critical_hit', 'kill_steal', 'hero_death'
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

-- Kill Steal Comum
INSERT INTO flavor_texts VALUES (
  context_type: 'social',
  event_trigger: 'kill_steal',
  intensity_level: 'medium',
  actor_class: 'rogue',
  personality_trait: 'greedy',
  text_template: '💰 {THIEF} roubou o último golpe! {VICTIM}: "Ei, aquilo era MEU!"',
  rarity_weight: 50
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

| Categoria     | Eventos                                              | Variações                                                 |
| ------------- | ---------------------------------------------------- | --------------------------------------------------------- |
| **Combate**   | Attack, Critical Hit, Miss, Kill, Hero Death         | 5 níveis de intensidade × 4 classes × 4 armas = 80 textos |
| **Social**    | Kill Steal, PvP Start, Friendship Formed, Betrayal   | 3 níveis × 5 personalidades = 15 textos                   |
| **Loot**      | Common Drop, Rare Drop, Legendary Drop, No Loot      | 4 níveis × 4 classes = 16 textos                          |
| **Ambiental** | Day/Night Transition, Weather Change, Invasion Alert | 2 níveis × 5 tipos = 10 textos                            |
| **Econômico** | Purchase, Upgrade, Broke, Treasure Found             | 3 níveis = 12 textos                                      |

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
[12:45] ⚔️ Sir Kaelen desferiu um golpe DEVASTADOR no Ogro! Sangue jorrou!
[12:46] 💰 Lila roubou o último golpe! Kaelen: "Ei, aquilo era MEU!"
[12:47] 🚩 Kaelen recebeu Bandeira Vermelha (PvP habilitado).
[12:48] 💀 Gandalf caiu em batalha. Últimas palavras: "Cuidado com... *ugh*"
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

# 14. ESTÉTICA E "JUICE" VISUAL/SONORO

## 14.1 A Filosofia do "Cyber-Fantasy Terminal"

### Identidade Visual

O jogo **não tenta** parecer um terminal DOS antigo. Em vez disso, é um **terminal mágico futurista** com elementos de fantasia.

**Paleta de Cores:**

```css
:root {
  --primary-bg: #0a0e1a; /* Azul escuro profundo */
  --terminal-green: #00ff41; /* Verde neon (texto padrão) */
  --warning-amber: #ffaa00; /* Laranja/âmbar (alertas) */
  --critical-red: #ff0055; /* Rosa neon (perigo) */
  --magic-purple: #aa00ff; /* Roxo mágico (eventos raros) */
  --border-glow: #00ffff; /* Ciano (bordas ativas) */
}
```

**Tipografia:**

```css
@import url("https://fonts.googleapis.com/css2?family=Fira+Code&display=swap");

body {
  font-family: "Fira Code", "Courier New", monospace;
  font-size: 14px;
  line-height: 1.6;
  text-shadow: 0 0 5px currentColor; /* Glow sutil */
}
```

---

## 14.2 Portraits Dinâmicos: "Doom-Style"

### Sistema de Reação Visual

Inspirado em **Doom (1993)**, os portraits dos heróis **mudam** baseado em HP e status.

#### Estados do Portrait

| HP          | Expressão             | Imagem                   |
| ----------- | --------------------- | ------------------------ |
| **100-80%** | Normal/Confiante      | `hero_face_100.png`      |
| **79-50%**  | Ferido/Determinado    | `hero_face_50.png`       |
| **49-25%**  | Sangrando/Desesperado | `hero_face_25.png`       |
| **24-1%**   | Crítico/Agonizando    | `hero_face_critical.png` |
| **0%**      | Morto/Caveira         | `hero_face_dead.png`     |

#### Estados de Status

| Status        | Overlay           | Cor             |
| ------------- | ----------------- | --------------- |
| **DRUNK**     | Balões de cerveja | Amarelo         |
| **SCARED**    | Suando frio       | Azul pálido     |
| **INSPIRED**  | Aura brilhante    | Dourado         |
| **CORRUPTED** | Olhos vermelhos   | Vermelho sangue |

### Implementação

```typescript
function updateHeroPortrait(hero: Hero) {
  const hpPercent = (hero.hp / hero.maxHp) * 100;

  let portraitFile = "hero_face_100.png";

  if (hpPercent <= 25) portraitFile = "hero_face_critical.png";
  else if (hpPercent <= 50) portraitFile = "hero_face_50.png";
  else if (hpPercent <= 80) portraitFile = "hero_face_80.png";

  // Aplicar overlays de status
  const overlays = [];
  if (hero.states.includes("DRUNK")) overlays.push("drunk_overlay.png");
  if (hero.states.includes("SCARED")) overlays.push("scared_overlay.png");

  renderPortrait(portraitFile, overlays);
}
```

---

## 14.3 Ícones Vivos: Micro-Animações

### GIFs em Pixel Art

Ícones **não são estáticos**. Eles têm micro-animações sutis.

| Ícone      | Animação                   | FPS             |
| ---------- | -------------------------- | --------------- |
| ⚔️ Espada  | Brilho pulsante            | 2 frames, 500ms |
| 💰 Ouro    | Moedas girando             | 4 frames, 250ms |
| 🔥 Fogo    | Chamas tremulando          | 6 frames, 150ms |
| 💀 Caveira | Mandíbula abrindo/fechando | 3 frames, 400ms |
| 🐦 Corvo   | Asas batendo               | 4 frames, 200ms |

### Formato

```
icons/
  ├─ sword_idle.gif      (2 frames, 12x12px)
  ├─ gold_spin.gif       (4 frames, 16x16px)
  ├─ fire_flicker.gif    (6 frames, 16x16px)
  └─ crow_fly.gif        (4 frames, 24x24px)
```

---

## 14.4 Sonoplastia Imersiva: O Mundo Sonoro

### Categorias de Som

#### 1. BGM Dinâmica (Background Music)

| Workspace           | Música                                 | Mood                |
| ------------------- | -------------------------------------- | ------------------- |
| **[F1] OPS CENTER** | "Battle Command" (percussão militar)   | Tenso, focado       |
| **[F2] ADMIN**      | "Merchant's Market" (flauta, harpa)    | Calmo, produtivo    |
| **[F3] LIBRARY**    | "Ancient Wisdom" (coral etéreo)        | Místico, reflexivo  |
| **[F4] WORLD MAP**  | "Conqueror's March" (orquestral épico) | Épico, grandioso    |
| **[F5] AVIARY**     | "Whispers & Quills" (piano solo)       | Íntimo, melancólico |

**Transições:** Crossfade de 2 segundos ao trocar workspace.

---

#### 2. SFX de UI (Interface)

| Ação                   | Som                 | Descrição                           |
| ---------------------- | ------------------- | ----------------------------------- |
| **Tecla pressionada**  | `key_press.wav`     | Clique mecânico (teclado Cherry MX) |
| **Tab (mudar painel)** | `tab_switch.wav`    | "Whoosh" eletrônico sutil           |
| **Comando enviado**    | `command_send.wav`  | Beep retro-futurista                |
| **Erro**               | `error_beep.wav`    | Buzz grave (400Hz)                  |
| **Sucesso**            | `success_chime.wav` | Ding cristalino (1200Hz)            |

---

#### 3. SFX de Combate

| Evento             | Som                 | Variações                   |
| ------------------ | ------------------- | --------------------------- |
| **Espada ataca**   | `sword_swing_#.wav` | 3 variações                 |
| **Crítico**        | `critical_hit.wav`  | Som metálico + eco          |
| **Magia lançada**  | `spell_cast_#.wav`  | 5 variações (tipo de magia) |
| **Morte de herói** | `hero_death.wav`    | Grito + queda               |
| **Boss roar**      | `boss_roar.wav`     | Rugido profundo             |

---

#### 4. SFX Sociais

| Evento              | Som                    | Mood                       |
| ------------------- | ---------------------- | -------------------------- |
| **Carta chegou**    | `mail_arrive.wav`      | Corvo grasnando + papel    |
| **KS detectado**    | `tension_sting.wav`    | Nota dissonante (suspense) |
| **PvP iniciado**    | `duel_bell.wav`        | Sino de duelo              |
| **Amizade formada** | `friendship_chime.wav` | Acorde alegre              |
| **Traição**         | `betrayal_theme.wav`   | Música dramática (3s)      |

---

#### 5. Ambiência (Loops)

| Bioma        | Som Ambiente          | Descrição                           |
| ------------ | --------------------- | ----------------------------------- |
| **Vila**     | `village_ambient.wav` | Conversa distante, ferreiro batendo |
| **Floresta** | `forest_ambient.wav`  | Pássaros, folhas ao vento           |
| **Caverna**  | `cave_ambient.wav`    | Goteiras, ecos                      |
| **Noite**    | `night_ambient.wav`   | Grilos, coruja, vento               |

---

## 14.5 Audio Manager: Gerenciamento de Som

### Arquitetura de Áudio

```typescript
class AudioManager {
  bgmChannel: HTMLAudioElement;
  sfxChannels: HTMLAudioElement[] = [];
  ambientChannel: HTMLAudioElement;

  maxSfxChannels = 8; // Limite de sons simultâneos

  // Prioridade de sons
  sfxPriority = {
    UI_CLICK: 1,
    COMBAT: 5,
    HERO_DEATH: 10,
    BOSS_ROAR: 15,
  };

  playSfx(sound: string, priority: number) {
    // Encontra canal livre ou substitui o de menor prioridade
    const channel = this.findAvailableChannel(priority);
    if (channel) {
      channel.src = `audio/sfx/${sound}`;
      channel.volume = this.sfxVolume;
      channel.play();
    }
  }

  // Ducking: Reduz BGM quando SFX importante toca
  applyDucking(duration: number) {
    const originalVolume = this.bgmChannel.volume;
    this.bgmChannel.volume = originalVolume * 0.3; // -70%

    setTimeout(() => {
      this.bgmChannel.volume = originalVolume;
    }, duration);
  }
}
```

---

## 14.6 Variação de Pitch: Evitando Repetição

### Sistema de Randomização

```typescript
function playVariedSfx(soundBase: string) {
  const audio = new Audio(`audio/sfx/${soundBase}.wav`);

  // Varia pitch entre -10% e +10%
  const pitchVariation = 0.9 + Math.random() * 0.2;
  audio.playbackRate = pitchVariation;

  // Varia volume levemente
  const volumeVariation = 0.8 + Math.random() * 0.4;
  audio.volume = volumeVariation;

  audio.play();
}

// Uso:
playVariedSfx("sword_swing"); // Sempre soa um pouco diferente
```

---

## 14.7 Efeitos de Partículas (CSS/Canvas)

### Efeitos Visuais em Texto

#### 1. Shake (Terremoto)

```css
@keyframes shake {
  0%,
  100% {
    transform: translateX(0);
  }
  25% {
    transform: translateX(-5px);
  }
  75% {
    transform: translateX(5px);
  }
}

.earthquake {
  animation: shake 0.5s infinite;
}
```

#### 2. Glow Pulsante (Evento Raro)

```css
@keyframes glow {
  0%,
  100% {
    text-shadow: 0 0 5px currentColor;
  }
  50% {
    text-shadow:
      0 0 20px currentColor,
      0 0 30px #ff00ff;
  }
}

.legendary-drop {
  animation: glow 1s ease-in-out infinite;
  color: #ffaa00;
}
```

#### 3. Particles (Morte de Boss)

```typescript
function spawnParticles(x: number, y: number, count: number) {
  for (let i = 0; i < count; i++) {
    const particle = document.createElement("div");
    particle.className = "particle";
    particle.style.left = `${x}px`;
    particle.style.top = `${y}px`;

    // Movimento aleatório
    const angle = Math.random() * Math.PI * 2;
    const speed = 2 + Math.random() * 3;

    animate(particle, angle, speed, 1000); // 1s de vida
  }
}
```

---

# 15. ANÁLISE CRÍTICA E JUSTIFICATIVAS DE DESIGN

## 15.1 Por Que Controle Indireto?

### O Problema com RTSs Tradicionais

**RTS clássico:**

- Microgerenciamento constante
- APM (Actions Per Minute) é mais importante que estratégia
- Burnout do jogador

**Heroes of Majesty:**

- **Foco em decisões de alto nível**
- Permite ao jogador **observar e admirar** o ecossistema
- Reduz stress, aumenta satisfação intelectual

### Inspiração: Majesty (2000)

O jogo original **Majesty: The Fantasy Kingdom Sim** provou que controle indireto pode ser divertido. Nossa versão evolui o conceito com **IA moderna** e **narrativa emergente**.

---

## 15.2 Por Que Terminal em Vez de Gráficos 3D?

### Decisão Pragmática

Como **solopreneur**:

- Gráficos 3D exigem: modelagem, rigging, animação, iluminação
- Tempo de desenvolvimento: **Meses ou anos**

**Terminal permite:**

- Foco total em **gameplay e IA**
- Desenvolvimento **10x mais rápido**
- Estética única e memorável

### Inspiração: Dwarf Fortress

**Dwarf Fortress** provou que gráficos ASCII podem criar jogos **incrivelmente profundos** com comunidades apaixonadas.

---

## 15.3 Limite de 12 Heróis: Por Quê?

### Justificativa de Design

**Contra-argumentos antecipados:**

- "Por que não 50 heróis? Mais é melhor!"

**Nossa resposta:**

1. **Valor Individual:** Com 12, cada morte **importa**. Com 50, heróis são descartáveis
2. **Conexão Emocional:** Jogador decora nomes, personalidades e histórias
3. **Performance:** 12 heróis com IA complexa > 50 heróis com IA burra
4. **Balanceamento:** Mais fácil equilibrar economia e dificuldade

### Comparação: XCOM

**XCOM** limita squad a 4-6 soldados por missão. Resultado: Cada soldado é **insubstituível**.

---

## 15.4 Progressão Lenta: Feature ou Bug?

### Por Que o Jogo é Slow-Paced?

**Decisão intencional:**

- Partidas duram ~15 horas (150 dias × 6 min/dia)
- Progressão gradual de poder
- Economia de escassez (ouro é raro)

**Justificativa:**

1. **Anti-Mobile Game:** Rejeita dopamina instantânea
2. **Estratégia Importa:** Cada decisão tem peso
3. **Narrativa Profunda:** Histórias levam tempo para se desenvolver

### Público-Alvo

Não é para quem quer **instant gratification**. É para fãs de:

- **Rimworld** (narrativa emergente)
- **Crusader Kings** (personalidades complexas)
- **Dwarf Fortress** (simulação profunda)

---

## 15.5 IA Determinística vs Generativa

### Por Que Não Usar LLM para Tudo?

**Pergunta comum:** "Por que usar Utility AI? Por que não fazer os heróis usarem GPT para decidir tudo?"

**Resposta:**

| Aspecto             | Utility AI            | LLM (GPT)                    |
| ------------------- | --------------------- | ---------------------------- |
| **Latência**        | <1ms                  | 500-2000ms                   |
| **Custo**           | Grátis                | $0.002 por decisão           |
| **Previsibilidade** | Determinístico (bom!) | Aleatório (ruim em gameplay) |
| **Balanceamento**   | Fácil ajustar         | Impossível garantir          |

**Nossa solução:**

- **Utility AI:** Para decisões de gameplay (atacar, fugir, saquear)
- **LLM:** Para textos narrativos (cartas, sussurros, crônicas)

---

## 15.6 Multiplayer: Por Que Não Agora?

### Priorização de Features

**Multiplayer exige:**

- Servidor dedicado
- Sincronização de estado
- Matchmaking
- Anti-cheat
- Balanceamento PvP

**Custo:** +6 meses de desenvolvimento

**Decisão:**
Lançar V1.0 **singleplayer perfeito** → Adicionar multiplayer na V2.0 se houver demanda.

### Data-Driven

Se o jogo tiver **10,000+ jogadores ativos**, multiplayer é justificado. Se tiver 100, não.

---

## 15.7 Influence Points: Limitação ou Mecânica?

### Design de "Rate Limit" Narrativo

**Sem IP:**

- Jogador enviaria 100 cartas por minuto
- Spam no Conselheiro
- Custo de API explode ($1000/mês)

**Com IP:**

- Cada ação tem **peso**
- Jogador precisa **priorizar**
- Imersão: "Sua influência tem limites, Majestade"

### Inspiração: Mana

IP funciona como **mana** em ARPGs:

- Recurso regenerativo
- Força escolhas estratégicas
- Evita spam

---

## 15.8 Crônicas em PDF: Vale a Pena?

### Custo vs Benefício

**Custo:**

- Geração de imagens via IA: $0.04 por imagem
- 10 imagens por crônica = $0.40
- Geração de PDF: Processamento no backend

**Benefício:**

- **Compartilhamento viral:** Jogadores postam PDFs no Reddit/Twitter
- **Legado emocional:** PDF físico da história do reino
- **Marketing gratuito:** Cada PDF compartilhado = advertisement

**Conclusão:** VALE A PENA. É o **diferencial do jogo**.

---

## 15.9 Features Cortadas (Com Tristeza)

### O Que Quase Entrou Mas Foi Removido

#### 1. Sistema de Romance entre Heróis

**Por quê cortamos:** Complexidade narrativa muito alta. Affinity já cobre relacionamentos.

#### 2. Crafting de Itens

**Por quê cortamos:** Adiciona complexidade sem valor. Melhor focar em loot direto.

#### 3. Temporadas/Clima Detalhado

**Por quê cortamos:** Ciclos de 50 dias já cobrem progressão temporal. Clima seria redundante.

#### 4. Pets de Heróis

**Por quê cortamos:** Fofo, mas dilui o foco nos heróis. Talvez em DLC.

#### 5. Construção de Castelo Customizável

**Por quê cortamos:** Jogador não precisa decidir onde colocar torres pixel a pixel. Interface abstrata é suficiente.

---

## 15.10 A Visão Final: O Que Torna Este Jogo Especial?

### Três Pilares Únicos

#### 1. **Narrativa Emergente Documentada**

- Crônicas em PDF
- Memorial permanente
- Ecos de partidas anteriores

**Nenhum outro jogo faz isso.**

---

#### 2. **IA Híbrida com Personalidade**

- Utility AI + P.E.R.M.A.
- Heróis com psicologia profunda
- Monstros com sistema P.A.I.N.

**Vai além de Rimworld/Dwarf Fortress em complexidade psicológica.**

---

#### 3. **Terminal Imersivo e Estético**

- Cyber-Fantasy único
- Portraits Doom-style
- Sonoplastia cinematográfica

**Prova que ASCII pode ser bonito.**

---

## 15.11 Métricas de Sucesso

### Como Saberemos se o Jogo Funcionou?

**Métricas quantitativas:**

- 10,000+ players nos primeiros 3 meses
- Tempo médio de jogo: >10 hours (múltiplas partidas)
- 100+ Crônicas compartilhadas no Reddit

**Métricas qualitativas:**

- Jogadores contam histórias espontâneas de suas partidas
- Fan art de heróis procedurais
- Comunidade cria "Hall of Fame" de heróis lendários

---

## 15.12 Roadmap Pós-Lançamento

### Versões Futuras

**V1.1 (3 meses):**

- Balanceamento baseado em feedback
- +100 flavor texts
- Novos portraits

**V1.5 (6 meses):**

- Novo bioma: Deserto
- Nova classe: Necromancer
- Sistema de pets (se houver demanda)

**V2.0 (12 meses):**

- Multiplayer Co-op Assíncrono
- Leaderboards
- Season 1

---

# 📜 CONCLUSÃO

Esta documentação define **todas as mecânicas funcionais** de **Heroes of Majesty: Console Edition**.

## Resumo Executivo

- **Gênero:** Simulação + Estratégia Indireta + Narrativa Emergente
- **Plataforma:** Web (Angular + Deno)
- **Público:** Fãs de Rimworld, Dwarf Fortress, Majesty, Crusader Kings
- **Diferencial:** Controle indireto + IA complexa + Crônicas documentadas
- **Tempo de Partida:** ~15 horas (150 dias de jogo)
- **Rejogabilidade:** Alta (mapas procedurais, eventos dinâmicos)

---

## Tópicos Documentados

1. ✅ Visão Geral e Filosofia
2. ✅ Interface UI/UX (5 Workspaces)
3. ✅ Arquitetura de IA Híbrida
4. ✅ Os Heróis (P.E.R.M.A.)
5. ✅ Dinâmica Social
6. ✅ Conselheiro Real
7. ✅ Economia e Gestão
8. ✅ Mundo Procedural
9. ✅ Mecânicas de Expansão
10. ✅ Narrativa Emergente
11. ✅ Multiplayer (Futuro)
12. ✅ Sistema de Monstros (P.A.I.N.)
13. ✅ Combate e Flavor Texts
14. ✅ Estética e Juice
15. ✅ Análise Crítica

---

## Estado do Projeto

**Fase Atual:** Design Conceitual e Arquitetura (100% completo)

**Próximo Passo:** Implementação do MVP (Minimum Viable Product)

---

## Contato e Contribuições

**Desenvolvedor:** Solo Developer / Solopreneur  
**Stack:** Angular + Deno + PostgreSQL  
**Objetivo:** Criar uma experiência única de simulação profunda

---

**_Fim da Documentação Oficial_**

_Última atualização: 17 de Janeiro de 2026_
