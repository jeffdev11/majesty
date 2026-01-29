# 📜 DOCUMENTAÇÃO OFICIAL - HEROES OF MAJESTY: CONSOLE EDITION

> **Documento Oficial de Mecânicas do Jogo e Parte Conceitual**
>
> Este documento define todas as regras funcionais, mecânicas de funcionamento, explicações de diversão, sistemas e tudo relacionado ao gameplay.

---

## 📑 ÍNDICE COMPLETO

### PARTE I: FUNDAMENTOS

1. [Visão Geral e Filosofia do Jogo](#1-visão-geral-e-filosofia-do-jogo)
   - 1.1 [O Monarca Indireto](#11-o-monarca-indireto-a-filosofia-de-observar-mais-do-que-comandar)
   - 1.2 [O Efeito Aquário](#12-o-efeito-aquário-criando-uma-simulação-viva-e-reativa-em-tempo-real)
   - 1.3 [Pilares de Diversão](#13-pilares-de-diversão-imprevisibilidade-agência-indireta-e-narrativa-emergente)
   - 1.4 [A Nova Direção (RTS → Terminal)](#14-a-nova-direção-do-rts-visual-para-a-simulação-profunda)
   - 1.5 [Viabilidade Técnica](#15-por-que-a-mudança-viabilidade-técnica)
   - 1.6 [Sistema de Tempo e Turnos](#16-sistema-de-tempo-e-turnos-a-regra-dos-3-segundos)

2. [Interface e Experiência do Usuário (UI/UX)](#2-interface-e-experiência-do-usuário-uiux)
   - 2.1 [Conceito de Workspaces](#21-o-conceito-de-workspaces-tty)
   - 2.2 [Regras Globais de Interação](#22-regras-globais-de-interação-system-wide)
   - 2.3 [[F1] COMMAND CENTER](#23-f1-command-center---the-war-room)
   - 2.4 [[F2] ADMIN](#24-f2-management---the-tycoon)
   - 2.5 [[F3] LIBRARY](#25-f3-library---the-armanaves)
   - 2.6 [[F4] WORLD MAP](#26-f4-world-map---the-conquest)
   - 2.7 [[F5] THE AVIARY](#27-f5-the-aviary---royal-mail)
   - 2.8 [[F6] THE CHRONICLES](#28-f6-the-chronicles---the-living-book)

### PARTE II: SISTEMAS DE IA

3. [Arquitetura de IA Híbrida](#3-arquitetura-de-ia-híbrida)
   - 3.1 [Visão Geral](#31-visão-geral-o-cérebro-dos-heróis)
   - 3.2 [Utility AI](#32-utility-ai-o-sistema-de-decisão-estratégica)
   - 3.3 [Behavior Trees](#33-behavior-trees-a-execução-tática)
   - 3.4 [FSM (Máquinas de Estados)](#34-fsm-gerenciamento-de-estados-macro)
   - 3.5 [NLP (Conselheiro)](#35-nlp-processamento-de-linguagem-natural-conselheiro)

4. [Os Heróis: Agentes Autônomos](#4-os-heróis-agentes-autônomos)
   - 4.1 [Estrutura de Dados](#41-estrutura-de-dados-de-um-herói)
   - 4.2 [Sistema P.E.C.M.A.](#42-sistema-pecma-os-5-vetores-de-personalidade)
   - 4.3 [Camadas de Modificação](#43-camadas-de-modificação-estados-e-peculiaridades)
   - 4.4 [Classes de Heróis](#44-classes-de-heróis-vieses-e-identidade)
   - 4.5 [Sistema de Loot](#45-sistema-de-loot-e-economia)
   - 4.6 [Ciclo de Vida](#46-ciclo-de-vida-morte-trabalho-e-redenção)
   - 4.7 [Limitação: 5 Heróis Máximo](#47-limitação-estratégica-máximo-de-5-heróis)
   - 4.8 [Sistema de Skills](#48-sistema-de-skills-árvore-completa-de-habilidades)

5. [Dinâmica Social: O Drama Emergente](#5-dinâmica-social-o-drama-emergente)
   - 5.1 [Formação de Grupos](#51-formação-de-grupos-party-system)
   - 5.1 [Formação de Grupos](#51-formação-de-grupos-party-system)
   - 5.2 [Disputa de Glória](#52-disputa-de-glória-quem-finalizou)
   - 5.3 [Combate PvP](#53-combate-pvp-player-vs-player-entre-heróis)
   - 5.4 [Amizades e Lealdade](#54-amizades-e-lealdade)
   - 5.5 [Saque de Heróis Caídos](#55-saque-de-heróis-caídos-sem-roubo)
   - 5.6 [Sistema de Banter](#56-sistema-de-banter-diálogos-dinâmicos)
   - 5.7 [Matriz de Relacionamento](#57-matriz-de-relacionamento-visualização)
   - 5.8 [Outros Conflitos](#58-outros-gatilhos-de-conflito-social)

6. [O Conselheiro Real de IA](#6-o-conselheiro-real-de-ia)
   - 6.1 [O NPC Mais Importante](#61-o-npc-mais-importante-do-jogo)
   - 6.2 [Chat Interativo via NLP](#62-chat-interativo-via-nlp)
   - 6.3 [Personalidades do Conselheiro](#63-personalidades-do-conselheiro)
   - 6.4 [Cronista e Analista](#64-cronista-e-analista-o-historiador)
   - 6.5 [Sussurros e Lore](#65-sussurros-e-lore-dinâmica)
   - 6.6 [Espionagem](#66-espionagem-e-estratégia)
   - 6.7 [Influence Points (IP)](#67-custo-de-influência-o-rate-limit-narrativo)

7. [Economia e Gestão do Reino](#7-economia-e-gestão-do-reino)
   - 7.1 [Tesouro Real](#71-tesouro-real-a-fonte-de-ouro)
   - 7.2 [Curadoria de Habilidades](#72-curadoria-de-habilidades-tech-tree)
   - 7.3 [Gestão de Estoques](#73-gestão-de-estoques-poções-e-salários)
   - 7.4 [Decretos Reais](#74-decretos-reais-buffs-globais-com-risco)
   - 7.5 [Influence Points](#75-influence-points-ip-sistema-completo-de-mana-social)
   - 7.6 [Manutenção de Edifícios](#76-manutenção-de-edifícios)

### PARTE IV: MUNDO E PROGRESSÃO

8. [Mundo Procedural e Ciclos](#8-mundo-procedural-e-ciclos-temporais)
   - 8.1 [Névoa de Guerra](#81-névoa-de-guerra-pessoal-o-reino-oculto)
   - 8.2 [Os 4 Ciclos de 2 Dias](#82-os-4-ciclos-de-2-dias-progressão-temporal)
   - 8.3 [Ciclo Dia/Noite](#83-ciclo-dianoite-perigo-após-o-pôr-do-sol)
   - 8.4 [Eventos Globais](#84-eventos-globais-o-caos-controlado)
   - 8.5 [Boss Global](#85-boss-global-o-rei-vilão)
   - 8.6 [Escalonamento Dinâmico](#86-escalonamento-dinâmico-de-dificuldade)
   - 8.7 [Mapas Procedurais](#87-mapas-procedurais-cada-partida-é-única)

9. [Mecânicas Avançadas de Expansão](#9-mecânicas-avançadas-de-expansão)
   - 9.1 [Postos Avançados](#91-postos-avançados-expandindo-o-reino)
   - 9.2 [Fundando Postos](#92-fundando-um-posto-avançado)
   - 9.3 [Gestão Autônoma](#93-gestão-autônoma-do-posto)
   - 9.4 [Lealdade do Posto](#94-lealdade-do-posto)
   - 9.5 [Morte do Capitão](#95-morte-do-capitão-condição-de-falha)
   - 9.6 [Mudança de Capital](#96-mudança-de-capital-decisão-irreversível)
   - 9.7 [Traição Individual](#97-traição-quando-heróis-se-voltam-contra-você)
   - 9.8 [Colônia Rebelde](#98-colônia-rebelde-traição-em-massa)
   - 9.9 [Classes e Evolução](#99-notas-sobre-classes-e-evolução)
   - 9.10 [Habitação](#910-habitação-e-bases)

10. [Narrativa Emergente e Legado](#10-narrativa-emergente-e-legado)

- 10.1 [Crônicas do Reino (PDF)](#101-crônicas-do-reino-o-pdf-ilustrado)
- 10.2 [Sonhos e Sussurros](#102-sonhos-e-sussurros-balões-de-pensamento)
- 10.3 [Títulos Dinâmicos](#103-títulos-e-epítetos-dinâmicos)
- 10.4 [Modo Historiador](#104-modo-historiador-replay-com-onisciência)
- 10.5 [Ecos do Passado](#105-ecos-do-passado-itens-lendários-de-partidas-anteriores)
- 10.7 [Amanaevements Narrativos](#107-amanaevements-narrativos-conquistas)
- 10.8 [Compartilhamento Social](#108-compartilhamento-social)
- 10.9 [Vitória e Pós-Jogo](#109-vitória-e-pós-jogo-a-comemoração)

### PARTE V: MULTIPLAYER E INIMIGOS

11. [Multiplayer (Visão Futura)](#11-multiplayer-visão-futura)

- 11.1 [Por Que Foi Desprioritizado](#111-por-que-multiplayer-foi-desprioritizado)
- 11.2 [Co-op Assíncrono](#112-modo-co-op-assíncrono-proposta-futura)
- 11.3 [PvP Indireto](#113-modo-pvp-indireto-proposta-futura)
- 11.4 [Leaderboards e Seasons](#114-leaderboards-e-seasons-proposta-futura)
- 11.5 [Desafios de Amigos](#115-desafios-de-amigos-proposta-futura)

12. [Sistema de Monstros: IA P.A.I.N.](#12-sistema-de-monstros-ia-pain)

- 12.1 [Visão Geral](#121-visão-geral-os-inimigos-autônomos)
- 12.2 [Perfis de Monstros](#122-perfis-de-monstros)
- 12.3 [Sistema de Nêmesis](#123-sistema-de-nêmesis-monstros-que-evoluem)
- 12.4 [Facções](#124-facções-de-monstros-comportamento-coletivo)
- 12.5 [Patrulhas](#125-patrulhas-e-spawn-dinâmico)
- 12.6 [Ondas de Invasão](#126-ondas-de-invasão-eventos-de-cerco)
- 12.7 [Bosses Dinâmicos](#127-bosses-dinâmicos-diferentes-a-cada-partida)
- 12.8 [Escalonamento por Ciclo](#128-escalonamento-de-dificuldade-por-ciclo)
- 12.9 [Anti-Padrões](#129-comportamentos-especiais-anti-padrões)
- 12.10 [Loot Dinâmico](#1210-loot-dinâmico-recompensa-por-risco)

### PARTE VI: COMBATE E APRESENTAÇÃO

13. [Sistema de Combate e Flavor Texts](#13-sistema-de-combate-e-flavor-texts)

- 13.1 [Mecânica de Combate](#131-mecânica-de-combate-simplificada-mas-profunda)
- 13.2 [Flavor Texts](#132-flavor-texts-o-coração-da-narrativa)
- 13.3 [Contextos de Eventos](#133-contextos-de-eventos)
- 13.4 [Geração de Logs](#134-sistema-de-geração-de-logs)
- 13.5 [Prompt para LLM](#135-prompt-para-llm-geração-de-flavor-texts)
- 13.6 [Cache e Performance](#136-cache-e-performance)
- 13.7 [Estilização Visual](#137-guia-de-estilização-visual-dos-logs)

14. [Estética e "Juice" Visual/Sonoro](#14-estética-e-juice-visualsonoro)

- 14.1 [Terminal Mágico de Fantasia](#141-a-filosofia-do-terminal-mágico-de-fantasia)
- 14.2 [Portraits Dinâmicos](#142-portraits-dinâmicos-doom-style)
- 14.3 [Ícones Vivos](#143-ícones-vivos-micro-animações)
- 14.4 [Sonoplastia Imersiva](#144-sonoplastia-imersiva-o-mundo-sonoro)
- 14.5 [Audio Manager](#145-audio-manager-gerenciamento-de-som)
- 14.6 [Variação de Pitch](#146-variação-de-pitch-evitando-repetição)
- 14.7 [Efeitos de Partículas](#147-efeitos-de-partículas-csscanvas)

15. [Análise Crítica e Justificativas](#15-análise-crítica-e-justificativas-de-design)

- 15.1 [Por Que Controle Indireto?](#151-por-que-controle-indireto)
- 15.2 [Por Que Terminal?](#152-por-que-terminal-em-vez-de-gráficos-3d)
- 15.3 [Limite de 5 Heróis](#153-limite-de-5-heróis-por-quê)
- 15.4 [Progressão Lenta](#154-progressão-lenta-feature-ou-bug)
- 15.5 [IA Determinística vs Generativa](#155-ia-determinística-vs-generativa)
- 15.6 [Multiplayer: Por Que Não Agora?](#156-multiplayer-por-que-não-agora)
- 15.7 [Influence Points](#157-influence-points-limitação-ou-mecânica)
- 15.8 [Crônicas em PDF](#158-crônicas-em-pdf-vale-a-pena)
- 15.9 [Features Cortadas](#159-features-cortadas-com-tristeza)
- 15.10 [Visão Final](#1510-a-visão-final-o-que-torna-este-jogo-especial)
- 15.11 [Métricas de Sucesso](#1511-métricas-de-sucesso)
- 15.12 [Roadmap Pós-Lançamento](#1512-roadmap-pós-lançamento)

### PARTE VII: NARRATIVA GENERATIVA

16. [O Motor de Narrativa](#16-o-motor-de-narrativa-infinite-tales)

- 16.1 [Visão Geral](#161-visão-geral-o-problema-da-fadiga-de-texto)
- 16.2 [A Solução](#162-a-solução-separação-de-poderes-dois-cérebros)

17. [Infraestrutura de Dados](#17-infraestrutura-de-dados-postgresql--ram)

- 17.1 [Schema do Banco de Dados](#171-schema-do-banco-de-dados)
- 17.2 [Estratégia de Cache](#172-estratégia-de-cache)

18. [Entropia e Sopa de Tags](#18-o-conceito-de-entropia-e-sopa-de-tags)

- 18.1 [Por que não usar Templates?](#181-por-que-não-usar-templates)
- 18.2 [O Algoritmo do "Liquidificador"](#182-o-algoritmo-do-liquidificador)
- 18.3 [A Matemática da Variedade](#183-a-matemática-da-variedade)

19. [Configuração do Modelo](#19-configuração-do-modelo-webllm)

- 19.1 [O Modelo Escolhido](#191-o-modelo-escolhido)
- 19.2 [Parâmetros de Inferência](#192-parâmetros-de-inferência)
- 19.3 [O System Prompt Otimizado](#193-o-system-prompt-otimizado)

20. [Implementação Técnica](#20-implementação-técnica-angular--webgpu)

- 20.1 [Serviço de IA](#201-serviço-de-ia)
- 20.2 [Consumo no Componente](#202-consumo-no-componente)

21. [Conclusão Técnica](#21-conclusão-técnica)

### ANEXOS

- [Tabela de Flavor Texts](#132-flavor-texts-o-coração-da-narrativa)
- [Sistema P.E.C.M.A. Completo](#42-sistema-perma-os-5-vetores-de-personalidade)
- [Sistema P.A.I.N. Completo](#121-visão-geral-os-inimigos-autônomos)
- [Comandos do Conselheiro](#62-chat-interativo-via-nlp)
- [Lista de Eventos Globais](#84-eventos-globais-o-caos-controlado)

---
