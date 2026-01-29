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
3. **Localização válida** no mapa (>20 células da capital)

### Processo

**Passo 1: Seleção de Heróis**

```
Jogador: "Crie um posto avançado na floresta norte."

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
Jogador: "Transfira a capital para o posto norte. É urgente."

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
Eles saquearam 500 Ouro e 20 poções.
Localização: Fundaram "Vila dos Exilados" (X:15, Y:15)

[Nova ameaça no mapa]
Vila dos Exilados:
- População: 3 heróis traidores
- Comportamento: Atacam caravanas, saqueiam recursos
- Objetivo: Destruir sua capital
```

### Como Resolver

**Opção 1: Guerra Total**

- Enviar heróis leais para destruir a Vila dos Exilados
- Combate difícil (traidores conhecem suas táticas)

**Opção 2: Negociação**

```
Jogador: "Tente negociar com os rebeldes."

Conselheiro: "Kaelen exige: 1,500 Ouro, perdão total
e autonomia completa. Aceitar significa perder 3 heróis,
mas evita guerra civil."
```

**Opção 3: Ignorar**

- Rebeldes se tornam facção permanente no mapa
- Atacam periodicamente (mini-boss)

---

---

## 9.9 Notas sobre Classes e Evolução

### Sem Multiclasse ou Evolução de Classe

Em _Heroes of Majesty_, **não existe** sistema de evolução de classe (ex: Guerreiro NÃO vira Paladino).

- Cada classe é uma disciplina única e vitalícia.
- **Guerreiro** e **Paladino** são classes distintas com papéis diferentes.
- Para ter um Paladino, você deve recrutar um Paladino nível 1.

### Troca Estratégica de Heróis

O jogador pode substituir heróis veteranos por novatos de outras classes, mas deve pesar o **Trade-off**:

- **Manter Veterano Problemático:** Um ladino nível 20 que causa conflitos? Poderoso em combate, mas um risco social.
- **Recrutar Novato Ideal:** Um paladino nível 1. Comportamento perfeito, mas inútil em combate de alto nível até evoluir.
- **Decisão:** Vale a pena "carregar" um novato para substituir uma maçã podre?

---

## 9.10 Habitação e Bases

O limite de 5 heróis é rígido. Onde eles dormem?

- **Cabanas Narrativas:** Heróis montam suas próprias tendas ou cabanas ao redor da Vila. O jogador **não** precisa construir casas.
- **Edifícios Funcionais Só:** O jogador constrói apenas Guildas, Lojas e Defesas.
- **Game Over:** A derrota ocorre apenas se a **Casa Central (Trono)** for destruída, não as cabanas dos heróis.
