# 6. O CONSELHEIRO REAL DE IA

## 6.1 O NPC Mais Importante do Jogo

O **Conselheiro Real** não é apenas um chatbot. Ele é:

- Um **NPC físico** no mundo (tem localização)
- O **tradutor** entre o jogador e o sistema de IA
- O **cronista** que documenta a história do reino
- O **espião** (opcionalmente) que vende informações

### Características Únicas

| Propriedade       | Valor                                              |
| ----------------- | -------------------------------------------------- |
| **Mortalidade**   | Pode morrer (mas respawna após 5 min (100 Turnos)) |
| **Mobilidade**    | Se desloca pela vila (pode estar indisponível)     |
| **Personalidade** | 3 arquétipos disponíveis                           |
| **Custo de Uso**  | 10 IP (Influence Points) por interação             |

---

## 6.2 Interação Natural & Contextual

Esqueça comandos de linha como `/buy` ou `/attack`. O Conselheiro Real utiliza um modelo de linguagem avançado para **interpretar sua intenção** com base no contexto do jogo. Você fala como um Rei, e ele entende como um servo leal (ou sarcástico).

### Interface de Diálogo

**Ativação:** Basta começar a digitar. O prompt `Majesty>` está sempre ouvindo.

### Exemplos de Interação (Intenção -> Ação)

#### 1. Gestão e Economia

- **Jogador:** "Precisamos de mais poções, compre 10."
  - _Ação do Sistema:_ Executa compra de 10 Health Potions.
  - _Resposta:_ "Feito, Majestade. O estoque está seguro."
- **Jogador:** "Melhore a Guilda dos Guerreiros, eles estão fracos."
  - _Ação do Sistema:_ Upgrade `Warrior_Guild` para Nível 2.
- **Jogador:** "Recrute um novo mago, precisamos de magia."
  - _Ação do Sistema:_ Inicia processo de recrutamento de `Mage`.

#### 2. Dinâmica Social

- **Jogador:** "Por que a Lila está tão brava?"
  - _Ação do Sistema:_ Consulta tabela `affinity_logs` e `personality`.
  - _Resposta:_ "Ela odeia Kaelen por roubar o loot do Dragão ontem. Sugiro um presente."
- **Jogador:** "Mande uma carta para ela pedindo desculpas em meu nome e envie 300 de ouro."
  - _Ação do Sistema:_ Envia Carta (+Afinidade) e transfere 300g.
- **Jogador:** "Quem são os amigos de Kaelen?"
  - _Ação do Sistema:_ Exibe grafo de relacionamentos de Kaelen.

#### 3. Estratégia e Táticas

- **Jogador:** "Aquele posto avançado no norte está em perigo. Mande Kaelen para lá."
  - _Ação do Sistema:_ Cria uma `Defend_Quest` no Norte com restrição `Hero: Kaelen`.
- **Jogador:** "Ordene que todos recuem! O inverno chegou."
  - _Ação do Sistema:_ Emite `Retreat_Call` global.
- **Jogador:** "Onde está o covil dos Goblins?"
  - _Ação do Sistema:_ Marca no mapa se já foi descoberto ou sugere missão de exploração.

#### 4. Consultas Analíticas

- **Jogador:** "Como foi o dia hoje?"
  - _Ação do Sistema:_ Gera resumo dos logs do dia.
- **Jogador:** "Quem mais matou monstros?"
  - _Ação do Sistema:_ Exibe ranking de Kills.
- **Jogador:** "Estamos falindo?"
  - _Ação do Sistema:_ Analisa fluxo de caixa e projeta falência.

### Exemplo de Conversa

```
Jogador: "Por que a Lila está tão brava?"

Conselheiro: "Majestade, Lila Rogue está irritada porque
Sir Kaelen tomou o último golpe dela contra um Ogro há
15 minutos. Ela perdeu 200 XP e um item raro. Baseado
na personalidade dela (Ganância: Alta), sugiro oferecer
compensação em ouro ou ela pode iniciar PvP."

Jogador: "Envie uma carta para a Lila pedindo desculpas e mande 300 de ouro."

Conselheiro: "Carta enviada. Custo: 25 IP. Lila deve
receber em aproximadamente 20s (7 Turnos)."
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
Jogador: "Ataquem o dragão de elite!"

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
Jogador: "Resumo do dia, por favor."

Conselheiro: "RELATÓRIO DIÁRIO - DIA 45
- Heróis ativos: 4/5
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
entre Kaelen e Lila devido ao incidente de disputa
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
- Invasão de Goblins estimada para 05:30 min (110 Turnos).
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
"Vá investigar aquela área escura no mapa."
 ou
 "Espione o acampamento inimigo."
```

**Consequências:**

- Conselheiro fica **incomunicável** por 2-5 min (40-100 Turnos)
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

[ALERTA] Conselheiro fugiu! Ficará ausente por 10 min (200 Turnos).
Todos comandos NLP desabilitados.
```

---

## 6.7 Custo de Influência (O "Rate Limit" Narrativo)

### Influence Points (IP)

Para evitar **spam de comandos** e manter a **imersão narrativa**:

**Sistema:**

- Jogador começa com **100/100 IP**
- Cada comando gasto: **-10 IP**
- Enviar carta: **-25 IP**
- Regeneração: **+1 IP por Turno** (20 IP/min)

### Estratégia de Uso

**Cenário de Escassez:**

```
IP Atual: 15/100

Jogador precisa:
- Enviar carta urgente (25 IP) ❌ Não pode!
- Pedir relatório (10 IP) ✅ Pode
- Comprar item (10 IP) ❌ Ficaria com 5 IP

Decisão: Esperar 10 Turnos para regenerar 10 IP, então
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
