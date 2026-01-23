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
   - 2.3 [F1] COMMAND CENTER - "The War Room" (Logs Regionais Dinâmicos)
   - 2.4 [F2] ADMIN - "The Tycoon"
   - 2.5 [F3] LIBRARY - "The Armanaves"
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
   - 4.2 Sistema P.E.C.M.A.
   - 4.3 Camadas de Modificação
   - 4.4 Classes de Heróis
   - 4.5 Ciclo de Vida (Morte e Redenção)
   - 4.6 Limitação: 5 Heróis Máximo
   - 4.7 Sistema de Skills (Árvore Completa)

5. [Dinâmica Social: O Drama Emergente](#5-dinâmica-social-o-drama-emergente)
   - 5.1 Formação de Grupos

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
   - 8.2 Os 4 Ciclos de 50 Dias
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
    - 10.7 Amanaevements Narrativos
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
    - 15.3 Limite de 5 Heróis
    - 15.4 Progressão Lenta
    - 15.5 IA Determinística vs Generativa
    - 15.6 Multiplayer: Por Que Não Agora?
    - 15.7 Influence Points
    - 15.8 Crônicas em PDF
    - 15.9 Features Cortadas
    - 15.10 Visão Final
    - 15.11 Métricas de Sucesso
    - 15.12 Roadmap Pós-Lançamento

### PARTE VII: NARRATIVA GENERATIVA

16. [O Motor de Narrativa "Infinite Tales"](#16-o-motor-de-narrativa-infinite-tales)
    - 16.1 Visão Geral: O Problema da "Fadiga de Texto"
    - 16.2 A Solução: Separação de Poderes (Dois Cérebros)

17. [Infraestrutura de Dados (PostgreSQL & RAM)](#17-infraestrutura-de-dados-postgresql--ram)
    - 17.1 Schema do Banco de Dados
    - 17.2 Estratégia de Cache

18. [O Conceito de Entropia e "Sopa de Tags"](#18-o-conceito-de-entropia-e-sopa-de-tags)
    - 18.1 Por que não usar Templates?
    - 18.2 O Algoritmo do "Liquidificador"
    - 18.3 A Matemática da Variedade

19. [Configuração do Modelo (WebLLM)](#19-configuração-do-modelo-webllm)
    - 19.1 O Modelo Escolhido
    - 19.2 Parâmetros de Inferência
    - 19.3 O System Prompt Otimizado

20. [Implementação Técnica (Angular + WebGPU)](#20-implementação-técnica-angular--webgpu)
    - 20.1 Serviço de IA
    - 20.2 Consumo no Componente

21. [Conclusão Técnica](#21-conclusão-técnica)

### ANEXOS

- [Tabela de Flavor Texts](#132-flavor-texts-o-coração-da-narrativa)
- [Sistema P.E.C.M.A. Completo](#42-sistema-perma-os-5-vetores-de-personalidade)
- [Sistema P.A.I.N. Completo](#121-visão-geral-os-inimigos-autônomos)
- [Comandos do Conselheiro](#62-chat-interativo-via-nlp)
- [Lista de Eventos Globais](#84-eventos-globais-o-caos-controlado)

---
