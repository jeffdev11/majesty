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
| **Banquete Real**     | 300g  | +10% all stats, sem deserções por 15 min        | Pode atrair ladrões (invasão Goblin)    |
| **Toque de Recolher** | 200g  | Heróis retornam à vila ao anoitecer (segurança) | -10 Affect global (reclamam)            |
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

## 7.5 Influence Points (IP): Sistema Completo de "Mana Social"

### O Que São Influence Points?

**IP (Influence Points)** é o recurso que representa **sua influência política e social** no reino. Diferente de ouro (econômico) ou mana (mágico), IP é **capital social**.

**Com IP você pode:**

- Dar ordens ao Conselheiro
- Enviar cartas aos heróis
- Emitir decretos reais
- Solicitar análises e relatórios

**Sem IP você:**

- Não consegue se comunicar
- Perde controle indireto
- Fica "mudo" no reino

---

### Mecânica Base

#### Valores Iniciais

| Atributo                | Valor                       |
| ----------------------- | --------------------------- |
| **IP Máximo**           | 100 IP                      |
| **IP Inicial**          | 100 IP (começa cheio)       |
| **Regeneração Base**    | +1 IP a cada 3s (20 IP/min) |
| **Velocidade de Gasto** | Variável (10-30 IP/ação)    |

#### Tabela Completa de Custos

| Ação                               | Custo IP | Frequência Esperada |
| ---------------------------------- | -------- | ------------------- |
| **Comando Simples ao Conselheiro** | -10 IP   | Alta (1-2/min)      |
| **Análise Rápida (Consulta)**      | -15 IP   | Média (1/5min)      |
| **Enviar Carta para Herói**        | -25 IP   | Média (1/10min)     |

| **Análise Profunda (Dossiê Completo)** | -40 IP | Baixa (1/hora) |
| **Comando Estratégico Global** | -50 IP | Rara (emergências) |

| \*\*Telepor

tar Herói (Comando Avançado)\*\* | -50 IP | Rara |

**Matemática do Sistema:**

```typescript
// Com regeneração base (20 IP/min):
// - 1 carta a cada 75 segundos
// - 2 comandos simples por minuto
// - 1 decreto a cada 9 minutos

// Com upgrade Corte Real (40 IP/min):
// - 1 carta a cada 37.5 segundos
// - 4 comandos simples por minuto
// - 1 decreto a cada 4.5 minutos
```

---

### Sistema de Upgrades

#### 1. Corte Real (Tier 1)

**Custo:** 500 Ouro  
**Efeito:** Regeneração +100% (1 IP/3s → 2 IP/3s)  
**Quando comprar:** Ciclo 1 (primeiros 20 dias)

```
Antes: +20 IP/min
Depois: +40 IP/min
```

#### 2. Rede de Espiões (Tier 2)

**Custo:** 1,000 Ouro  
**Requer:** Corte Real  
**Efeito:** Cartas custam -5 IP (25 → 20 IP)

#### 3. Conselheiro Eficiente (Tier 3)

**Custo:** 1,500 Ouro  
**Requer:** Rede de Espiões  
**Efeito:** Comandos simples custam -5 IP (10 → 5 IP)

#### 4. Majestade Suprema (Tier 4)

**Custo:** 3,000 Ouro  
**Requer:** Todos anteriores  
**Efeito:** +50 IP máximo (100 → 150 IP) + Regeneração +50% em momentos de crise

**Árvore de Upgrades:**

```
Corte Real (500g)
    ↓
Rede de Espiões (1,000g)
    ↓
Conselheiro Eficiente (1,500g)
    ↓
Majestade Suprema (3,000g)

Total: 6,000g para maximizar IP
```

---

#### Bônus por Alta Lealdade

Se 80%+ dos heróis têm Lealdade > 70%:

- **+10% regeneração de IP**
- **Cartas têm -5 IP de custo**

#### Eventos que Afetam IP

| Evento                     | Efeito em IP                  | Duração                               |
| -------------------------- | ----------------------------- | ------------------------------------- |
| **Festival da Vila**       | +50% regeneração              | 10 min                                |
| **Motim**                  | -50% regeneração + Custo +50% | Até resolver                          |
| **Vitória contra Boss**    | +25 IP imediato               | Instantâneo                           |
| **Morte de Herói Popular** | -10 IP/min por 5 min          | 5 min                                 |
| **Traição**                | IP máximo -20 (100→80)        | Permanente até reconquistar confiança |

---

### Estratégias de Gestão de IP

#### Estratégia 1: Conservador (Early Game)

```
Dias 1-20:
- Evitar decretos (caros)
- Focar em comandos simples (10 IP)
- Cartas apenas para emergências
- Comprar Corte Real o mais rápido possível

Meta: Nunca baixar de 50 IP (reserva de emergência)
```

#### Estratégia 2: Comunicativo (Mid Game)

```
Dias 21-100:
- 2-3 cartas por dia (heróis chave)
- Usar Conselheiro ativamente
- 1 decreto por ciclo
- Manter 30 IP de reserva sempre

Meta: Balancear comunicação com reserva
```

#### Estratégia 3: Micro-Manager (Late Game)

```
Dias 101+:
- Todos upgrades de IP comprados
- Comunicação constante
- Decretos táticos
- Uso de comandos avançados

Meta: Gastar 80% do IP disponível (alta atividade)
```

---

### Visualização do IP no HUD

#### Barra de IP (Sempre Visível)

```
┌─────────────────────────────────────────┐
│ IP: [████████░░] 75/100                 │
│     Regen: +40/min | Next: 3s           │
└─────────────────────────────────────────┘

Estados visuais:
████████████ (80-100%) Verde   - Saudável
██████░░░░░░ (50-79%)  Amarelo - Moderado
███░░░░░░░░░ (20-49%)  Laranja - Baixo
█░░░░░░░░░░░ (<20%)    Vermelho - CRÍTICO
```

#### Avisos de IP

**IP < 30:**

```
⚠️ AVISO: Influence Points baixo!
Você só pode enviar 1 carta.
Aguarde regeneração ou economize.
```

**IP = 0:**

```
🚫 SEM INFLUENCE!
Você não pode dar comandos.
Aguarde 30s para recuperar 10 IP.
```

---

### Exemplos Práticos

#### Exemplo 1: Emergência com IP Baixo

```
Situação:
- IP atual: 15/100
- Lila com HP 5% (morrendo)
- Precisa enviar carta URGENTE (25 IP)

Problema: Não tem IP suficiente!

Soluções:
1. Aguardar 30s (regenera 10 IP = total 25 IP)
2. Usar comando simples ao Conselheiro (10 IP):
   "/alert lila retreat" (Conselheiro envia aviso)
3. APRENDER: Sempre manter reserva de 30 IP!
```

#### Exemplo 2: Uso Eficiente

```
Dia 45:
08:00 - IP: 100/100 (cheio)
08:05 - Comando: "/status heroes" (-10 IP = 90)
08:10 - Carta para Kaelen (-25 IP = 65)
08:15 - Aguarda regeneração (+10 IP = 75)
08:20 - Comando: "/report economy" (-10 IP = 65)
08:30 - Aguarda (+20 IP = 85)
08:35 - Decreto: "Banquete Real" (-30 IP = 55)
08:45 - Aguarda (+20 IP = 75)

Resultado: Usou 75 IP em 45 min, mas sempre teve reserva
```

#### Exemplo 3: Spammer Punido

```
Jogador inexperiente:
08:00 - IP: 100/100
08:01 - Envia 4 cartas seguidas (-100 IP = 0)
08:02 - Quer enviar 5ª carta: IMPOSSÍVEL
08:03 - "Por que não consigo?!"
08:04 - Aguarda 1.5 min para recuperar 25 IP
08:06 - Aprendeu: IP é recurso escasso!

Lição: Spam é punido automaticamente pelo sistema
```

---

### Justificativa de Design

#### 1. Previne Spam

**Sem IP:** Jogador enviaria 100 cartas/min  
**Com IP:** Máximo ~2-3 cartas/min (com upgrades)

#### 2. Gestão de Recursos

**Decisões:**

- "Uso IP agora ou guardo?"
- "Vale a pena esse decreto?"
- "Priorizo carta ou comando?"

IP se torna tão estratégico quanto ouro.

#### 3. Custo Computacional e Imersão

Embora a IA rode localmente (custo zero de API), o processamento de LLM consome recursos da GPU/CPU.
IP limita naturalmente o uso frequente da IA, garantindo performance estável e reforçando a imersão de que "sua influência não é infinita".

#### 4. Imersão Narrativa

**Mensagem do jogo:**  
_"Sua influência não é ilimitada, Majestade. Use-a com sabedoria."_

Mesmo sendo rei, você não pode fazer TUDO o tempo todo.

---

### Fórmulas Técnicas

#### Regeneração com Modificadores

```typescript
const regenBase = 1; // 1 IP a cada 3s
const upgradeMultiplier = hasCorteReal ? 2 : 1;
const eventBonus = getActiveEventBonus("ip_regen");

const regenFinal = regenBase * upgradeMultiplier * eventBonus;

// Exemplo:
// Base: 1, Upgrade: 2x, Festival (+50% = 1.5)
// = 1 * 2 * 1.5 = 3 IP a cada 3s = 60 IP/min!
```

#### Custo Dinâmico

```typescript
function calculateIPCost(action: Action): number {
  let baseCost = ACTION_COSTS[action.type];

  // Upgrades reduzem custo
  if (hasRedeEspioes && action.type === "SEND_LETTER") {
    baseCost -= 5;
  }

  return Math.max(1, baseCost); // Mínimo 1 IP
}
```

---

### Conquistas Relacionadas a IP

| Conquista                 | Condição                             | Recompensa           |
| ------------------------- | ------------------------------------ | -------------------- |
| **"Influente"**           | Chegar a 150 IP máximo               | Título especial      |
| **"Diplomata"**           | Enviar 100 cartas em uma partida     | +5% regen permanente |
| **"Econômico"**           | Nunca ficar com IP < 20 por 100 dias | Badge                |
| **"Spammer Arrependido"** | Ficar em 0 IP 10 vezes               | Badge de vergonha    |

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
Mas eles estão FURIOSOS. -20 Lealdade (Ethics) temporária."
```

---
