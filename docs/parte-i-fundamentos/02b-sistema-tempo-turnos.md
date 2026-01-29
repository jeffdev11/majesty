# 02b. Sistema de Tempo e Turnos

## Conceito Fundamental

O Majesty opera sob um sistema híbrido de tempo: **Turnos Lógicos** que são traduzidos em **Tempo Real** para a experiência do jogador. Para garantir consistência nas mecânicas, durações de habilidades, cooldowns e eventos, o jogo utiliza o **Turno** como unidade padrão de medida.

## A Regra de Ouro da Equivalência Temporal

> **1 Turno = 3 Segundos**

Essa equivalência foi estabelecida com base no ritmo de leitura dos logs e na cadência de atualização do mundo.

### Por que 3 Segundos?

1.  **Ritmo de Leitura:** É o tempo médio para o jogador ler uma nova linha de log sem se sentir sobrecarregado (spam).
2.  **Ciclo de Processamento:** Permite que a IA processe a lógica de todos os agentes e gere uma narrativa coerente.
3.  **Fluidez Variável:** Fora de combate, os turnos passam automaticamente e fluidamente. Em situações críticas (como combate pausado), o jogador pode ter controle mais granular.

## Conversão de Tempo para Turnos

Todas as mecânicas que anteriormente utilizavam "segundos" devem ser interpretadas em "Turnos".

| Tempo Real (Anterior) | Unidade de Turnos (Novo Padrão) | Exemplo de Aplicação                                              |
| :-------------------- | :------------------------------ | :---------------------------------------------------------------- |
| **3 seg**             | **1 Turno**                     | Duração mínima de um stun simples ou ataque rápido.               |
| **6 seg**             | **2 Turnos**                    | Pequenos buffs ou debuffs.                                        |
| **9-12 seg**          | **3-4 Turnos**                  | Duração padrão de habilidades de controle (CC) médias.            |
| **30 seg**            | **10 Turnos**                   | Cooldowns rápidos, durações de buffs significativos.              |
| **60 seg (1 min)**    | **20 Turnos**                   | Tempo de construção de estruturas simples, cooldown de Ultimates. |
| **300 seg (5 min)**   | **100 Turnos**                  | Ciclos de eventos menores, duração de efeitos climáticos curtos.  |

## Aplicação Prática nas Mecânicas

### 1. Combate e Habilidades

Em vez de uma habilidade durar "8 segundos", ela durará **3 Turnos** (aprox. 9s), arredondando para manter a integridade do sistema de turnos.

- **Antes:** "Atordoa o alvo por 3 segundos."
- **Agora:** "Atordoa o alvo por **1 Turno**."

### 2. Construção e Coleta

Ações de longo prazo são medidas em ciclos de turnos.

- **Antes:** "Mina de Ouro gera recursos a cada 30 segundos."
- **Agora:** "Mina de Ouro gera recursos a cada **10 Turnos**."

### 3. Notificações e UI

O tempo de exibição de alertas e a cadência de mensagens no log seguem o ritmo dos turnos.

- **Cadência de Log:** 1 mensagem relevante a cada ~1 Turno (3s).
- **Timeouts de Resposta:** Se um conselheiro pede uma decisão, o tempo limite será contabilizado em turnos do jogo (ex: "Você tem 15 Turnos para decidir").

## Observação sobre Efeitos Visuais (Juice)

Efeitos puramente visuais (como _crossfades_, _flashes_ de crítico, animações de particulas) continuam sendo descritos em **segundos ou milissegundos** reais, pois referem-se à renderização na tela e não à lógica do jogo.

Exemplo:

- **Lógica:** O ataque causa dano no Turno 5.
- **Visual:** A animação da espada dura 0.5s e o flash da tela 0.2s.
