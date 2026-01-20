# SISTEMA DE COMBATE: TIMELINE E FILA DE AÇÃO

## Visão Geral

Heroes of Majesty utiliza um **Sistema de Fila de Ação Temporal (ATB - Active Time Battle)** similar a jogos como Final Fantasy, Grandia e jogos táticos modernos. Todos os combatentes (heróis e monstros) compartilham uma **timeline única** onde a posição determina quando ageão.

---

## Como Funciona a Timeline

### Conceito Base

```
TIMELINE (Fila de Ação):
┌────────────────────────────────────────────────────────────┐
│  PRONTO                     ESPERANDO                       │
│  [Herói A]──[Monstro 1]──[Herói B]──[Monstro 2]──[Herói C] │
└────────────────────────────────────────────────────────────┘
     ↑ Ação agora         ↑ ~2s         ↑ ~4s         ↑ ~6s
```

- Combatentes movem-se **da direita para a esquerda**
- Quando chegam na **posição mais à esquerda**, podem agir
- Após agir, **voltam para o final da fila** (direita)
- Velocidade determina **quão rápido se movem** na timeline

---

## Stats que Afetam a Timeline

### 1. Speed (Velocidade Base)

**Stat Principal:** Determina a velocidade de progressão na timeline.

```typescript
interface CombatStats {
  speed: number; // 1-200 (média: 100)
}

// Exemplos por classe:
Guerreiro: speed = 80; // Lento (armadura pesada)
Mago: speed = 90; // Lento-médio
Arqueiro: speed = 120; // Rápido
Ladino: speed = 150; // Muito rápido
Druida: speed = 100; // Médio
Elfo: speed = 130; // Rápido
Paladino: speed = 75; // Muito lento (armadura)
Necromante: speed = 95; // Lento-médio
Bardo: speed = 110; // Médio-rápido
Monge: speed = 160; // EXTREMAMENTE rápido
```

### 2. Fórmula de Progressão na Timeline

```typescript
// Quantos milissegundos até próxima ação
timeToNextAction = baseTime / (speed / 100)

// Exemplo:
baseTime = 3000ms (3 segundos padrão)

Guerreiro (speed 80): 3000 / 0.8 = 3750ms (~3.8s por ação)
Monge (speed 160): 3000 / 1.6 = 1875ms (~1.9s por ação)
```

**Resultado:** Monge age ~2x mais rápido que Guerreiro!

---

## Buffs de "Velocidade"

### Antes (Problemático para jogo de texto):

```
❌ +30% velocidade de movimento
❌ +15% velocidade de movimento
```

### Agora (Funciona com Timeline):

```
✅ +30% Speed (age 30% mais rápido na fila)
✅ +15% Iniciativa (próxima ação vem 15% mais cedo)
✅ +50% Taxa de Ação (age 50% mais vezes)
```

---

## Sistema de Iniciativa vs Speed

### Iniciativa (Início de Combate)

Determina a **posição inicial** na timeline quando combate começa:

```typescript
iniciativaRoll = random(1, 20) + (speed / 10) + bonusIniciativa

// Exemplo:
Guerreiro: random(1,20) + 8 + 0 = 9-28
Monge: random(1,20) + 16 + 5 = 22-41

Ordem inicial: Monge age primeiro 90% das vezes
```

### Speed (Durante Combate)

Determina **frequência de ações** após a primeira:

```
Turno 1:
[Monge] ─ [Ladino] ─ [Arqueiro] ─ [Mago] ─ [Guerreiro]
   ↓         ↓          ↓          ↓          ↓
  Age      Age       Age        Age        Age

Após todos agirem, retornam à fila baseado em Speed:

Turno 2:
[Monge] ─ [Ladino] ─ [Arqueiro] ─ [Monge*] ─ [Mago] ─ [Guerreiro]
                                    ↑
                        Monge age 2x antes do Guerreiro agir 1x!
```

---

## Modificadores de Speed

### Buffs que Aumentam Frequência de Ação

| Efeito                      | Antes (Errado)              | Agora (Correto)       | Impacto                        |
| --------------------------- | --------------------------- | --------------------- | ------------------------------ |
| **Grito de Guerra (Bardo)** | "+30% velocidade"           | "+30% Speed por 15s"  | Age 30% mais rápido            |
| **Inspirar Aliados**        | "+50% velocidade de ataque" | "+50% Taxa de Ataque" | Metade do cooldown entre ações |
| **Aura de Chi (Monge)**     | "+50% velocidade de ataque" | "+50% Taxa de Ataque" | Age quase 2x mais              |
| **Iluminação (Monge)**      | "velocidade 3x"             | "Speed ×3"            | Age 3x antes de inimigos       |

### Debuffs que Reduzem Frequência

| Efeito                       | Descrição        | Impacto                          |
| ---------------------------- | ---------------- | -------------------------------- |
| **Lentidão (Magia de Gelo)** | -50% Speed       | Age metade da frequência         |
| **Exaustão**                 | -30% Speed       | Penalidade por usar skills muito |
| **Atordoamento**             | Speed = 0 por Xs | Pula turnos                      |

---

## Ações Instantâneas vs Canalizadas

### Ações Instantâneas (Maioria)

```
[Herói] age → Executa skill → Volta para fila
Tempo na posição "Pronto": 0.5s
```

### Ações Canalizadas (Bardos, alguns Magos)

```
[Herói] canaliza → Permanece na posição "Pronto" → Continua canalizando
Tempo na posição "Pronto": Até cancelar ou terminar

Exemplo: Bardo cantando "Melodia de Ataque"
- Entra na posição "Pronto"
- Começa a cantar
- FICA na posição "Pronto" canalizando
- Outros heróis/monstros continuam agindo
- Se sofrer dano ou cancelar: volta para a fila
```

---

## Interrupções e Controle de Multidão

### Atordoamento (Stun)

```
[Herói atordoado por 3s]
┌─────────────────────────┐
│ X ─ X ─ X ─ [Herói]     │ ← Não progride na timeline
└─────────────────────────┘
Após 3s reais, volta a progredir normalmente
```

### Congelamento (Freeze)

```
Similar a Atordoamento, mas com tema visual de gelo
```

### Confusão (Confusion)

```
[Herói confuso]
- Progride normalmente na timeline
- Quando chega em "Pronto": 50% chance de atacar aliado
```

---

## Efeitos de "Velocidade de Movimento" Convertidos

### Lista de Conversões

| Skill Original                     | Efeito Antigo                  | Efeito Novo             |
| ---------------------------------- | ------------------------------ | ----------------------- |
| **Pés Ligeiros (Arqueiro)**        | "+15% velocidade de movimento" | "+15% Speed permanente" |
| **Reflexos Sobre-Humanos (Monge)** | "+25% velocidade de movimento" | "+25% Speed permanente" |
| **Graça Élfica (Elfo)**            | "+25% velocidade de movimento" | "+25% Speed permanente" |
| **Acrobata (Ladino)**              | "+30% velocidade de movimento" | "+30% Speed permanente" |
| **Grito de Guerra (Bardo)**        | "+30% velocidade"              | "+30% Speed por 15s"    |

### Outras Conversões Necessárias

| Efeito Problemático | Conversão                                  | Razão              |
| ------------------- | ------------------------------------------ | ------------------ |
| "Pulo para trás 8m" | "Recua 1 posição na grid de combate"       | Grid abstrato      |
| "Teleporta 15m"     | "Move para qualquer posição na grid"       | Grid abstrato      |
| "Atravessa paredes" | "Ignora posicionamento"                    | Sem mapas 3D       |
| "Voa"               | "+50% Evasão contra ataques corpo-a-corpo" | Benefício mecânico |

---

## Grid de Combate Abstrato

### Posições Relativas

```
RETAGUARDA  ←──────────→  LINHA DE FRENTE
[Mago] [Arqueiro] [Guerreiro] [Monstro] [Monstro Boss]
  ↑        ↑          ↑          ↑            ↑
Posição 5  Pos 4     Pos 3     Pos 2        Pos 1

Regras:
- Ataques corpo-a-corpo: Só atingem posições adjacentes
- Ataques à distância: Atingem qualquer posição
- Skills de "movimento": Mudam posição na grid
```

### Exemplo Prático

```
Inicial:
[Mago(5)] [Bardo(4)] [Guerreiro(3)] | [Ogro(2)] [Boss(1)]

Ogro usa "Investida" no Mago:
[Mago(5)] [Bardo(4)] [Guerreiro(3)] [Ogro(2)] | [Boss(1)]
                                       ↓
[Ogro(5)] ← Teleportou para posição do Mago

Mago usa "Teletransporte":
[Ogro(5)] [Bardo(4)] [Guerreiro(3)] [Mago(2)] | [Boss(1)]
                      ↑                  ↑
              Guerreiro protege    Mago escapou
```

---

## Interface Visual da Timeline

### No Terminal

```
═══════════════════ COMBAT TIMELINE ════════════════════
│PRONTO│     1.5s     │     3.0s     │     4.5s     │
├──────┼──────────────┼──────────────┼──────────────┤
│ LILA │   Sir Kaelen │      Ogro    │    Goblin    │
│(ACT!)│   [████░░]   │   [██████░]  │  [████████]  │
└──────┴──────────────┴──────────────┴──────────────┘
    ↑         ↑              ↑              ↑
  Agindo   0.8s até     1.6s até      2.4s até
          próxima ação  próxima ação  próxima ação

> Lila (Ladino) escolhe ação:
  [1] Apunhalar (10 Stamina)
  [2] Bomba de Fumaça (20 Stamina)
  [3] Envenenar Lâmina (25 Stamina)
```

### Após Ação

```
═══════════════════ COMBAT TIMELINE ════════════════════
│PRONTO│     1.0s     │     2.0s     │     3.0s     │
├──────┼──────────────┼──────────────┼──────────────┤
│KAELEN│      Ogro    │    Goblin    │     Lila     │
│(ACT!)│   [████░░]   │  [████████]  │  [████████]  │
└──────┴──────────────┴──────────────┴──────────────┘

> Lila usou "Apunhalar"!
  Ogro sofreu 85 dano (crítico pelas costas!)
  Lila volta para a fila (Speed 150 = retorno em ~2s)
```

---

## Balanceamento

### Design Goals:

1. **Speed Importa:** Classes rápidas agem 1.5-2x mais que lentas
2. **Buffs Potentes:** Buffs de Speed são EXTREMAMENTE valiosos
3. **Tank Trade-off:** Guerreiros/Paladinos tanquem MUITO mas agem menos
4. **DPS Rápidos:** Monges/Ladinos fazem múltiplas ações rápidas
5. **Suportes Estratégicos:** Bardos aceleram o team inteiro

### Fórmula de DPS Efetivo:

```
DPS Real = (Dano Base × Speed) / 100

Guerreiro: 100 dano × 80 speed = 80 DPS efetivo
Monge: 60 dano × 160 speed = 96 DPS efetivo

Resultado: Monge com menor dano base supera Guerreiro em DPS!
```

---

## Exemplos de Combate Real

### Turno por Turno:

```
Combate: 3 Heróis vs 2 Monstros

Heróis:
- Kaelen (Guerreiro, Speed 80)
- Aria (Maga, Speed 90)
- Lila (Ladina, Speed 150)

Monstros:
- Ogro (Speed 70)
- Goblin Arqueiro (Speed 120)

═══ INICIATIVA ═══
Rolls:
Lila: 18 + 15 = 33
Goblin: 14 + 12 = 26
Aria: 11 + 9 = 20
Kaelen: 9 + 8 = 17
Ogro: 6 + 7 = 13

Ordem inicial: Lila → Goblin → Aria → Kaelen → Ogro

═══ TURNO 1 ═══
0.0s: Lila age → Apunhala Goblin (75 dano)
2.0s: Goblin age → Atira em Aria (40 dano)
3.3s: Aria age → Bola de Fogo no Ogro (80 dano)
3.8s: Kaelen age → Golpe Poderoso no Ogro (120 dano)
4.3s: Ogro age → Machado em Kaelen (60 dano)

═══ TURNO 2 ═══
4.3s: Lila age novamente! → Envenena lâmina
6.3s: Goblin age → Atira em Lila (30 dano, esquivou!)
6.6s: Aria age → Raio Congelante no Ogro (60 dano, congelado!)
7.6s: Kaelen age → Ataca Goblin (90 dano, MORTO!)
8.3s: Lila age pela 3ª vez! → Apunhala Ogro (85 dano + veneno)
8.6s: Ogro ainda congelado, pula turno
10.9s: Aria age → Termina Ogro (50 dano)

VITÓRIA!
```

---

## Implementação Técnica

```typescript
class CombatTimeline {
  combatants: Combatant[] = [];

  tick(deltaTime: number) {
    for (let c of this.combatants) {
      if (c.stunned) continue;

      c.timeToAction -= deltaTime * (c.speed / 100);

      if (c.timeToAction <= 0) {
        this.executeAction(c);
        c.timeToAction = BASE_ACTION_TIME; // 3000ms
      }
    }
  }

  applySpeedBuff(target: Combatant, percent: number, duration: number) {
    target.speed *= 1 + percent;
    setTimeout(() => {
      target.speed /= 1 + percent;
    }, duration);
  }
}
```

---

**Esse sistema transforma "velocidade" de um conceito abstrato em mecânica funcional e balanceada!** ⚡
