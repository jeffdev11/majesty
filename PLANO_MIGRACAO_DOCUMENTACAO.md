# 📋 PLANO DE MIGRAÇÃO - DOCUMENTAÇÃO OFICIAL DO JOGO

## Status da Migração

- [ ] **INICIADO** - Este checklist será atualizado conforme progresso
- [ ] **EM ANDAMENTO** - Migração em execução
- [ ] **CONCLUÍDO** - Toda documentação migrada

---

## 🎯 TÓPICOS IDENTIFICADOS PARA MIGRAÇÃO

### 1️⃣ VISÃO GERAL E FILOSOFIA DO JOGO

**Fonte:** Manifesto do Terminal, resumo-geral, nova conversa

- [ ] 1.1 O Monarca Indireto - Filosofia de "observar mais do que comandar"
- [ ] 1.2 O Efeito Aquário - Simulação viva e reativa em tempo real
- [ ] 1.3 Pilares de Diversão - Imprevisibilidade, agência indireta, narrativa emergente
- [ ] 1.4 Mudança para Console Edition - Do RTS visual para simulação profunda em terminal
- [ ] 1.5 Por que a mudança? Viabilidade técnica (Deno + Angular + PostgreSQL)

---

### 2️⃣ INTERFACE E EXPERIÊNCIA DO USUÁRIO (UI/UX)

**Fonte:** Majesty modo texto - Visão geral das telas, Manifesto

- [ ] 2.1 O Conceito de Workspaces (TTY) - Sistema inspirado em tmux
- [ ] 2.2 Controles Globais - Navegação de foco (Tab, Alt+Num, /, etc)
- [ ] 2.3 **[F1] OPS CENTER** - "The War Room" (Layout completo com 7 painéis)
- [ ] 2.4 **[F2] ADMIN** - "The Tycoon" (Economia e curadoria de skills)
- [ ] 2.5 **[F3] LIBRARY** - "The Archives" (Lore, bestiário, estatísticas)
- [ ] 2.6 **[F4] WORLD MAP** - "The Conquest" (Estratégia global, postos avançados)
- [ ] 2.7 **[F5] THE AVIARY** - "Royal Mail" (Sistema de correspondência via corvos)
- [ ] 2.8 Regras de interação de cada painel (teclado/mouse)

---

### 3️⃣ ARQUITETURA DE IA HÍBRIDA

**Fonte:** resumo-geral, personalidade.txt, combate.txt, nova conversa

- [ ] 3.1 IA de Utilidade (Utility AI) - Tomada de decisão estratégica ("O Quê")
  - [ ] Considerações (inputs de 0.0 a 1.0)
  - [ ] Curvas de Resposta (personalidade)
  - [ ] Cálculo de pontuação
- [ ] 3.2 Árvores de Comportamento (BT) - Execução tática ("Como")
  - [ ] Fluxograma hierárquico
  - [ ] Sequence, Selector, Action, Condition
- [ ] 3.3 Máquinas de Estados Finitos (FSM) - Estados macro e animação
  - [ ] Estados: AVENTUREIRO, GUARDA, DERROTADO
  - [ ] Transições baseadas em regras
- [ ] 3.4 Processamento de Linguagem Natural (NLP) - Ponte de comunicação
  - [ ] Extração de intenção
  - [ ] Uso de LLMs (GPT/Gemini)

---

### 4️⃣ OS HERÓIS - AGENTES AUTÔNOMOS

**Fonte:** resumo-geral, personalidade.txt, antigo_arquivo_completo.txt

- [ ] 4.1 Estrutura de Dados do Herói
  - [ ] Personalidade (dicionário de traços)
  - [ ] Relacionamentos (matriz de afinidade)
  - [ ] Memórias (lista de eventos)
  - [ ] Background Procedural
- [ ] 4.2 Sistema P.E.R.M.A. (5 Vetores Base de Personalidade)
  - [ ] **P** - Power (Audácia/Coragem) - 0.0 a 1.0
  - [ ] **E** - Ethics (Ética) - Moral, Neutro, Imoral
  - [ ] **R** - Resource (Ganância) - Prioridade loot vs combate
  - [ ] **M** - Mind (Intelecto) - Seleção de alvo inteligente
  - [ ] **A** - Affect (Humor) - Volatilidade emocional
- [ ] 4.3 Camadas de Modificação (Estados Temporários)
  - [ ] BÊBADO, FAMINTO, INSPIRADO, AMEDRONTADO
  - [ ] Fórmula: `Vetor_Efetivo = Clamp((Base + Temp + Relacional) * Estresse, 0-1)`
- [ ] 4.4 Peculiaridades (Quirks & Overrides)
  - [ ] ARACHNOPHOBIA, GAMBLER, HATE_UNDEAD
- [ ] 4.5 Classes de Heróis e Vieses
  - [ ] Guerreiros, Magos, Arqueiros, Ladinos
  - [ ] Especialidades e predisposições
- [ ] 4.6 Ciclo de Vida, Morte e Redenção
  - [ ] Drop de equipamento ao morrer
  - [ ] Renascimento como Guarda da Cidade
  - [ ] Trauma e Necromancia

---

### 5️⃣ DINÂMICA SOCIAL - "DANÇA DE EGOS"

**Fonte:** resumo-geral, nova conversa, antigo_arquivo_completo.txt

- [ ] 5.1 Formação de Grupos (Máx. 3 heróis)
  - [ ] Lógica de convite (preferência social)
  - [ ] Coordenação autônoma
- [ ] 5.2 Conflitos Internos
  - [ ] **Kill Stealing (KS)** - Gatilho principal
  - [ ] **Combate PvP** - Motivos (glória, ética, vingança, frustração)
  - [ ] **Bandeira Vermelha (pvp_flag)** - Sistema de justiça
  - [ ] Perda drástica de equipamento
- [ ] 5.3 A Redenção do Guarda
  - [ ] Ciclo de trabalho (salário fixo)
  - [ ] Volta à vida de aventureiro
- [ ] 5.4 Amizades e Atos Heroicos
  - [ ] Salvamento e gratidão
  - [ ] Compartilhamento de recursos
  - [ ] Vingança coordenada
  - [ ] Proteção de aliados (guarda-costas)
- [ ] 5.5 Mercado Ambulante
  - [ ] Negociação entre heróis
  - [ ] Proposta e contraproposta
  - [ ] Influência da ganância e ética
- [ ] 5.6 Matriz de Relacionamento
  - [ ] Affinity Score (-100 a +100)
  - [ ] Eventos que afetam afinidade
- [ ] 5.7 Sistema de "Banter" (Conversa)
  - [ ] Slots dinâmicos
  - [ ] Templates baseados em traços

---

### 6️⃣ O CONSELHEIRO REAL DE IA

**Fonte:** resumo-geral, nova conversa, Manifesto

- [ ] 6.1 Identidade e Presença Física
  - [ ] NPC físico que existe no mundo
  - [ ] Localização e deslocamento
- [ ] 6.2 Chat Interativo (NLP)
  - [ ] Comandos em linguagem natural
  - [ ] Interpretação de intenções
- [ ] 6.3 Personalidades do Conselheiro
  - [ ] Cético/Sarcástico
  - [ ] Otimista/Bajulador
  - [ ] Burocrático
  - [ ] Impacto na execução de tarefas
- [ ] 6.4 O Cronista e Analista Proativo
  - [ ] Relatórios de batalha
  - [ ] Sussurros e necessidades
  - [ ] Lore dinâmica
  - [ ] Alertas de anomalia
- [ ] 6.5 Estratégia e Espionagem
  - [ ] Incomunicabilidade quando em missão
  - [ ] Mercado negro de informações
  - [ ] Confiabilidade variável

---

### 7️⃣ ECONOMIA E GESTÃO DO REINO

**Fonte:** resumo-geral, nova conversa

- [ ] 7.1 O Tesouro Real - Ciclo de Ouro
  - [ ] Heróis ganham → Gastam na vila → Jogador lucra
  - [ ] Escassez como recurso estratégico
- [ ] 7.2 Curadoria de Habilidades
  - [ ] Limitação de skills oferecidas
  - [ ] Custo exponencial
  - [ ] Progressão de nível (2 e 3)
- [ ] 7.3 Gestão de Estoques e Salários
  - [ ] Salários automáticos de guardas
  - [ ] Reabastecimento de poções (não infinito)
- [ ] 7.4 Decretos Reais
  - [ ] Buffs/Debuffs globais
  - [ ] Efeitos colaterais aleatórios (rolo de dados)
  - [ ] Intervenções mágicas (cura em massa, etc)
- [ ] 7.5 Influência Real (IP - Influence Points)
  - [ ] Mana Social tipo ARPG
  - [ ] Comandos básicos = 0 IP
  - [ ] Chat com Conselheiro = 10 IP
  - [ ] Enviar carta = 25 IP
  - [ ] Regeneração passiva + ativa

---

### 8️⃣ MUNDO PROCEDURAL E CICLOS

**Fonte:** resumo-geral, nova conversa, diversao.txt

- [ ] 8.1 Névoa de Guerra Pessoal
  - [ ] Visão limitada (heróis + construções)
  - [ ] Textura de visão
  - [ ] Dependência de exploradores e torres
- [ ] 8.2 Ciclos Temporais (3 ciclos de 50 dias = 150 dias total)
  - [ ] Mudança de paradigma a cada 50 dias
  - [ ] Novos monstros, biomas, eventos
  - [ ] Dificuldade escalonada
- [ ] 8.3 O Castelo Amaldiçoado
  - [ ] Materialização no Ciclo 3
  - [ ] Eleição do "Rei Vilão"
  - [ ] Escalonamento exponencial
- [ ] 8.4 Ciclo Dia/Noite
  - [ ] Monstros noturnos exclusivos (mais fortes)
  - [ ] Debuff de escuridão sem tocha
  - [ ] Sinergia de iluminação (tochas, magias de luz)
- [ ] 8.5 Eventos Globais e Catástrofes
  - [ ] Terremotos (destroem pontes, criam passagens)
  - [ ] Tempestades (reduzem visibilidade)
  - [ ] Fendas mágicas (ondas de inimigos)
  - [ ] Bosses globais (Dragão da Sombra, etc)

---

### 9️⃣ MECÂNICAS AVANÇADAS DE EXPANSÃO

**Fonte:** resumo-geral, nova conversa

- [ ] 9.1 Postos Avançados (1x por partida)
  - [ ] Fundação (sacrifício de 3 heróis)
  - [ ] Nomeação do Capitão (permanente)
  - [ ] Autonomia completa (economia independente)
  - [ ] Vassalagem (pode recusar pedidos)
  - [ ] Mudança de Capital (irreversível)
  - [ ] Condição de falha (morte do Capitão)
- [ ] 9.2 Traição e Facções Inimigas
  - [ ] Herói Corrompido (individual)
  - [ ] Colônia Rebelde (3 heróis desertores, 1x por partida)

---

### 🔟 NARRATIVA EMERGENTE E LEGADO

**Fonte:** resumo-geral, nova conversa, diversao.txt

- [ ] 10.1 Crônicas do Reino (PDF gerado por IA)
  - [ ] Log de eventos importantes
  - [ ] Geração de texto + imagens
  - [ ] Páginas ilustradas
  - [ ] Compartilhável
- [ ] 10.2 Sonhos e Sussurros
  - [ ] Balões de pensamento
  - [ ] Baseado em personalidade e eventos
- [ ] 10.3 Títulos e Epítetos Dinâmicos
  - [ ] Baseado em estatísticas (kills, etc)
  - [ ] "O Matador de Ogros", etc
- [ ] 10.4 Modo Historiador (Replay)
  - [ ] Pergaminho do Tempo
  - [ ] Marcadores de eventos
  - [ ] Visão onisciente (God Mode)
  - [ ] Filtros de memória
- [ ] 10.5 Ecos do Passado
  - [ ] Itens lendários de partidas anteriores
  - [ ] Desbloqueio de classes (vilões derrotados)

---

### 1️⃣1️⃣ MODOS MULTIPLAYER

**Fonte:** resumo-geral

- [ ] 11.1 Cooperativo - "Aliança dos Reinos Indiretos"
  - [ ] Mapa compartilhado
  - [ ] Grupos mistos
  - [ ] Fofoca entre conselheiros
  - [ ] Legado compartilhado
- [ ] 11.2 PvP - "Guerra das Influências"
  - [ ] Recompensas ofensivas
  - [ ] Sabotagem psicológica
  - [ ] Espionagem (informações falsas)
  - [ ] Névoa de Guerra individual
- [ ] 11.3 ~~Mestre da Masmorra vs Lorde~~ (DESCARTADO conforme fontes)

---

### 1️⃣2️⃣ SISTEMA DE MONSTROS (IA P.A.I.N.)

**Fonte:** personalidade.txt, nova conversa

- [ ] 12.1 Os 4 Vetores Bestiais
  - [ ] **P** - Preservation (0=Berserker, 1=Covarde)
  - [ ] **A** - Aggression (0=Passivo, 1=Predador)
  - [ ] **I** - Intellect (0=Bestial, 1=Maligno)
  - [ ] **N** - Nature (0=Solitário, 1=Enxame)
- [ ] 12.2 Sistema de Nêmesis
  - [ ] Ganho de nome ao matar herói
  - [ ] Buff de stats (+50% HP, +20% dano)
  - [ ] Memória de ódio
  - [ ] Banter provocativo
- [ ] 12.3 Comportamento Dinâmico
  - [ ] Facções com preferências
  - [ ] Patrulhas e roaming
  - [ ] Ondas de invasão
  - [ ] Escalonamento dinâmico

---

### 1️⃣3️⃣ SISTEMA DE COMBATE E FLAVOR TEXT

**Fonte:** Manifesto, personalidade.txt, nova conversa

- [ ] 13.1 Matemática de Decisão (Utility AI no combate)
  - [ ] Fórmula: `Score = (Recompensa * Mult_Pers) - (Risco / Audácia)`
  - [ ] Exemplo prático completo
- [ ] 13.2 Sistema de Flavor Texts
  - [ ] Estrutura de tabela `flavor_texts`
  - [ ] Context types (COMBAT, SOCIAL, EXPLORATION)
  - [ ] Event triggers detalhados
  - [ ] Placeholders dinâmicos ({attacker}, {target}, {value})
  - [ ] Rarity weight
- [ ] 13.3 Matriz de Contextos de Combate
  - [ ] Combate físico (MISS, HIT_LOW, HIT_MED, HIT_HIGH, CRIT)
  - [ ] Magia e elementos (FIRE, ICE, HEAL, MANA_LOW)
  - [ ] Estados (DEATH, FLEE, STUNNED)
  - [ ] Social (KS_TRIGGER, LOOT_FIND, TRADE)
  - [ ] Ambiente (TRAP, NEW_AREA)
- [ ] 13.4 Prompt para geração em lote (LLM)
- [ ] 13.5 Cache em memória (backend)

---

### 1️⃣4️⃣ ESTÉTICA E "JUICE" VISUAL/SONORO

**Fonte:** Manifesto

- [ ] 14.1 Portraits Dinâmicos (Sistema Doom)
  - [ ] Formato circular
  - [ ] Borda por classe/raridade
  - [ ] Reação a dano (HP 100% / 50% / 10%)
  - [ ] Localização por cenário
  - [ ] Estratégia de geração procedural
- [ ] 14.2 Biblioteca de Assets de Visualização
  - [ ] Combate e ação (espadas, crítico, morte, magia, fuga, defesa, KS)
  - [ ] Social e psicologia (balões)
  - [ ] Ambiente (dia/noite, clima, biomas)
  - [ ] Economia (moedas, poções, armas, level up)
  - [ ] Conselheiro (neutro, pensando, alerta, sussurro)
- [ ] 14.3 Biblioteca de Áudio Completa
  - [ ] Background Music (BGM dinâmica por workspace)
  - [ ] Interface & UX (keyboard, enter, tab, erro, hover)
  - [ ] Combate & Ação (espada, crítico, arco, magias, morte)
  - [ ] Social & Feedback (moedas, level up, notificação, alerta)
  - [ ] Ambiente (vila dia/noite, floresta, caverna, chuva)
- [ ] 14.4 Audio Manager
  - [ ] Prioridade de canais
  - [ ] Ducking (atenuação)
  - [ ] Variação de pitch
- [ ] 14.5 Ícones e Animações (GIFs pixel art)

---

### 1️⃣5️⃣ ANÁLISE CRÍTICA E DECISÕES DE DESIGN

**Fonte:** diversao.txt, nova conversa

- [ ] 15.1 Por que 500+ horas? (Fator "Novela Mexicana")
  - [ ] Narrativa emergente
  - [ ] Curva de aprendizado (efeito Football Manager)
  - [ ] Roguelite e meta-progressão
  - [ ] Pontos de legado
- [ ] 15.2 Armadilhas a evitar
  - [ ] Mid-game slump (solução: ciclos e eventos)
  - [ ] Text wall (solução: ícones, áudio, background)
- [ ] 15.3 Satisfação "Voyeur" (Efeito Aquário)
- [ ] 15.4 Achievements para forçar replay
  - [ ] "Pacifista", "Tirano", "Solo"
- [ ] 15.5 Limite de 12 heróis (justificativa)
- [ ] 15.6 Progressão lenta proposital (1-3h por partida)
- [ ] 15.7 Dinheiro sempre escasso
- [ ] 15.8 Limitações estratégicas (1 posto, 1 migração)

---

## 📊 ESTATÍSTICAS DA MIGRAÇÃO

**Total de Checkboxes:** ~180 itens
**Arquivos Fonte Analisados:** 8 documentos principais
**Páginas de Imagens de Referência:** 5 PNGs (F1, F2, F3, F4, F5)
**Volume Estimado:** ~400.000 caracteres de conteúdo

---

## 🚀 PRÓXIMOS PASSOS

1. **Aguardar confirmação** do usuário para iniciar migração
2. **Executar migração por blocos** (tópicos 1-5, depois 6-10, depois 11-15)
3. **Revisão incremental** após cada bloco
4. **Validação final** do documento completo

---

**NOTA:** Este plano captura TODA a essência dos documentos analisados sem perder nenhum detalhe importante. A migração será feita de forma organizada e hierárquica.
