# 4.8. SISTEMA DE SKILLS: ÁRVORE COMPLETA DE HABILIDADES

## Visão Geral

Cada classe possui **30 skills únicas**:

- **15 Ativas**: Habilidades que o herói usa ativamente em combate
- **15 Passivas**: Buffs permanentes que modificam stats ou comportamento

**Total de 10 Classes Jogáveis:**

1. 🗡️ **Guerreiro** (Warrior) - Tank de linha de frente
2. 🔮 **Mago** (Mage) - DPS mágico de longo alcance
3. 🏹 **Arqueiro** (Archer) - DPS físico à distância
4. 🗝️ **Ladino** (Rogue) - Assassino furtivo
5. 🌿 **Druida** (Druid) - Suporte/Metamorfo
6. 🏹 **Elfo** (Elf) - Híbrido mágico/físico
7. 🛡️ **Paladino** (Paladin) - Tank/Healer sagrado
8. 💀 **Necromante** (Necromancer) - Invocador de mortos
9. 🎵 **Bardo** (Bard) - Suporte musical
10. 👊 **Monge** (Monk) - DPS corpo-a-corpo sem armas

O Majesty pode **desbloquear** essas skills gastando **Ouro** do Tesouro Real. Diferente de RPGs tradicionais, os heróis não escolhem o que aprender; o Majesty compra a "licença" da skill para a guilda, e todos os heróis aptos (nível e pré-requisitos) passam a utilizá-la.

> **📊 Nota Técnica de Escalonamento:**
> Para fins de exemplo nas tabelas abaixo, consideramos um **Poder Base de Herói Lvl 1 = 20**.
> Skills que indicam porcentagem (%) escalam sobre este valor (Ex: +50% = 30 de dano). Skills com valores fixos (Ex: 80 dano) são tratadas como o valor absoluto para o nível 1.

---

## 🗡️ GUERREIRO (Warrior) - 30 Skills

### ⚔️ Skills Ativas (15)

| #   | Nome               | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                        | Requer                 |
| --- | ------------------ | -------- | -------- | ------------ | ------------------------------------------------ | ---------------------- |
| 1   | **Power Strike**   | 10 Mana  | 1 Turno  | **30**       | +50% dano no próximo ataque                      | Nível 1                |
| 2   | **Battle Cry**     | 20 Mana  | 4 Turnos | -            | +20% Attack para aliados próximos por 2 Turnos   | Power Strike           |
| 3   | **Charge**         | 15 Mana  | 2 Turnos | **20**       | Carga rápida até o inimigo, atordoa 1 Turno      | Nível 3                |
| 4   | **Blade Spin**     | 25 Mana  | 3 Turnos | **20 AoE**   | Ataque em área 360°, atinge até 5 inimigos       | Charge                 |
| 5   | **Armor Sunder**   | 30 Mana  | 3 Turnos | **20**       | Ignora 50% da defesa do alvo                     | Nível 5                |
| 6   | **Mortal Thrust**  | 35 Mana  | 4 Turnos | **40**       | Golpe crítico garantido, +100% dano              | Armor Sunder           |
| 7   | **Taunt**          | 20 Mana  | 3 Turnos | -            | Força inimigos próximos a atacarem o guerreiro   | Battle Cry             |
| 8   | **Second Wind**    | 50 Mana  | 6 Turnos | 15 HP Heal   | Recupera 30% HP instantaneamente                 | Nível 7                |
| 9   | **Berserker Rage** | 40 Mana  | 5 Turnos | **30**       | +50% Attack, -30% Defense por 3 Turnos           | Mortal Thrust          |
| 10  | **Earthshaker**    | 60 Mana  | 6 Turnos | **20 AoE**   | Golpeia o chão, atordoa todos em 10m por 1 Turno | Blade Spin             |
| 11  | **Shield Block**   | 30 Mana  | 5 Turnos | -            | Bloqueia próximo ataque completamente            | Nível 9                |
| 12  | **Vengeance**      | 35 Mana  | 4 Turnos | Var.         | Próximo ataque causa dano = HP perdido           | Berserker Rage         |
| 13  | **Execute**        | 25 Mana  | 4 Turnos | Fatal        | Mata instantaneamente inimigo com HP < 15%       | Nível 10               |
| 14  | **Iron Bulwark**   | 70 Mana  | 8 Turnos | -            | Imune a dano por 1 Turno, não pode se mover      | Shield Block           |
| 15  | **Avatar of War**  | 100 Mana | 1x comb. | **60**       | Cresce de tamanho, +200% Attack, ataques em área | Execute + Wyvern Scale |

### 🛡️ Skills Passivas (15)

| #   | Nome                  | Efeito                                                    | Requer              |
| --- | --------------------- | --------------------------------------------------------- | ------------------- |
| 1   | **Iron Skin**         | +10% Defense permanente                                   | Nível 1             |
| 2   | **Vitality**          | +15% HP máximo                                            | Iron Skin           |
| 3   | **Menacing Presence** | Inimigos priorizam atacar este herói                      | Taunt               |
| 4   | **Durable**           | Ignora 20% do dano de DoT (sangramento, veneno)           | Vitality            |
| 5   | **Brutal Strength**   | +15% Attack permanente                                    | Nível 4             |
| 6   | **Combat Regen**      | Recupera 3% HP a cada turno em combate                    | Second Wind         |
| 7   | **Unstoppable**       | Reduz duração de atordoamentos em 50%                     | Nível 6             |
| 8   | **Counter-Strike**    | 15% chance de revidar quando bloqueado                    | Shield Block        |
| 9   | **Bloodlust**         | +5% Attack para cada inimigo morto (máx 50%)              | Berserker Rage      |
| 10  | **Juggernaut**        | +20% HP máximo, -10% velocidade                           | Vitality            |
| 11  | **Plate Mastery**     | +25% Defense, imune a knock-back                          | Iron Skin           |
| 12  | **Last Stand**        | Ao chegar a 1 HP, fica invulnerável por 1 Turno (1x/comb) | Nível 8             |
| 13  | **Guardian Aura**     | Aliados próximos ganham +10% Defense                      | Menacing Presence   |
| 14  | **Weapon Master**     | +20% dano com espadas e machados                          | Brutal Strength     |
| 15  | **Battle Titan**      | +30% todos stats quando HP < 30%                          | Last Stand + Lvl 11 |

---

## 🔮 MAGO (Mage) - 30 Skills

### ✨ Skills Ativas (15)

| #   | Nome                  | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                           | Requer                    |
| --- | --------------------- | -------- | -------- | ------------ | --------------------------------------------------- | ------------------------- |
| 1   | **Fireball**          | 20 Mana  | 1 Turno  | **80**       | Projétil de fogo, 80 dano mágico                    | Nível 1                   |
| 2   | **Frost Bolt**        | 25 Mana  | 2 Turnos | **60**       | Congela alvo por 1 Turno, 60 dano                   | Fireball                  |
| 3   | **Mana Shield**       | 30 Mana  | 3 Turnos | 150 Shield   | Absorve 150 de dano por 2 Turnos                    | Nível 2                   |
| 4   | **Meteor Shower**     | 60 Mana  | 5 Turnos | **300 AoE**  | 6 meteoros em área, 50 dano cada                    | Fireball                  |
| 5   | **Teleport**          | 40 Mana  | 3 Turnos | -            | Teleporta 15m instantaneamente                      | Nível 4                   |
| 6   | **Frost Nova**        | 50 Mana  | 4 Turnos | Stun AoE     | Congela inimigos em 8m por 1 Turno                  | Frost Bolt                |
| 7   | **Chain Lightning**   | 45 Mana  | 4 Turnos | **360 AoE**  | Atinge até 4 alvos, 90 dano cada                    | Nível 5                   |
| 8   | **Arcane Barrier**    | 35 Mana  | 4 Turnos | -            | Aliados próximos ganham +50% Defense por 2 Turnos   | Mana Shield               |
| 9   | **Firestorm**         | 80 Mana  | 6 Turnos | **15/t DoT** | Área de 12m queima por 3 Turnos, 15 dano/turno      | Meteor Shower             |
| 10  | **Time Stop**         | 70 Mana  | 7 Turnos | Slow         | Reduz velocidade de inimigos em 70% por 2 Turnos    | Frost Nova                |
| 11  | **Arcane Explosion**  | 55 Mana  | 4 Turnos | **120 AoE**  | AoE de 10m, 120 dano + knock-back                   | Nível 7                   |
| 12  | **Summon Elemental**  | 100 Mana | 8 Turnos | Summon       | Invoca elemental de fogo que luta por 3 Turnos      | Firestorm                 |
| 13  | **Obliteration Ray**  | 90 Mana  | 5 Turnos | **200**      | Feixe contínuo, 200 dano total (Alto Delay)         | Chain Lightning           |
| 14  | **Event Horizon**     | 60 Mana  | 8 Turnos | **100 AoE**  | 100 dano área, aplica Condensado (-30% Esquiva AoE) | Teleport                  |
| 15  | **Arcane Apocalypse** | 150 Mana | 1x comb. | **500 AoE**  | Explosão 20m, 500 dano, atinge todos inimigos       | Obliteration Ray + Lvl 12 |

### 🧙 Skills Passivas (15)

| #   | Nome                  | Efeito                                          | Requer            |
| --- | --------------------- | ----------------------------------------------- | ----------------- |
| 1   | **Arcane Intellect**  | +20% Mana máximo                                | Nível 1           |
| 2   | **Mana Flow**         | +10 Mana/turno fora de combate                  | Arcane Intellect  |
| 3   | **Mana Shielding**    | Converte 10% Mana em escudo mágico              | Mana Shield       |
| 4   | **Elemental Mastery** | +15% dano mágico                                | Nível 3           |
| 5   | **Focused Mind**      | -10% custo de Mana em todas skills              | Mana Flow         |
| 6   | **Pyromania**         | +25% dano de fogo, imune a queimadura           | Fireball          |
| 7   | **Cryomancy**         | +25% dano de gelo, reduz 50% lentidão           | Frost Bolt        |
| 8   | **Quick Cast**        | -20% tempo de cast                              | Nível 5           |
| 9   | **Spell Reflection**  | Reflete 20% do dano mágico recebido             | Mana Shielding    |
| 10  | **Endless Mana**      | Regenera 2% Mana máximo a cada kill             | Focused Mind      |
| 11  | **Arcane Crit**       | 15% chance de crítico mágico (+100% dano)       | Elemental Mastery |
| 12  | **Arcane Presence**   | Aliados próximos ganham +10% resistência mágica | Nível 7           |
| 13  | **Mana Siphon**       | Restaura 5% Mana ao matar inimigo               | Endless Mana      |
| 14  | **Overload**          | Skills custam +50% Mana mas causam +40% dano    | Arcane Crit       |
| 15  | **Archmage**          | +50% Mana máximo, +30% dano mágico              | Overload + Lvl 11 |

---

## 🏹 ARQUEIRO (Archer) - 30 Skills

### 🎯 Skills Ativas (15)

| #   | Nome                 | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                          | Requer            |
| --- | -------------------- | -------- | -------- | ------------ | -------------------------------------------------- | ----------------- |
| 1   | **Aimed Shot**       | 10 Mana  | 1 Turno  | **60**       | +30% precisão, 60 dano                             | Nível 1           |
| 2   | **Explosive Arrow**  | 25 Mana  | 2 Turnos | **80 AoE**   | AoE 5m, 80 dano total                              | Aimed Shot        |
| 3   | **Tactical Retreat** | 15 Mana  | 2 Turnos | **20**       | Salta para longe e dispara flecha retardadora      | Nível 2           |
| 4   | **Rain of Arrows**   | 40 Mana  | 4 Turnos | **300 AoE**  | 12 flechas em área 10m, 25 dano cada               | Explosive Arrow   |
| 5   | **Piercing Shot**    | 20 Mana  | 1 Turno  | **60**       | Atravessa alvos, atinge até 3 inimigos             | Nível 3           |
| 6   | **Hunter's Mark**    | 30 Mana  | 3 Turnos | -            | Marca alvo, +50% dano nele por 3 Turnos            | Aimed Shot        |
| 7   | **Poison Arrow**     | 35 Mana  | 3 Turnos | **10/t DoT** | Envenena alvo, 10 dano/turno por 3 Turnos          | Nível 4           |
| 8   | **Rapid Fire**       | 25 Mana  | 2 Turnos | **60**       | Dispara 3 flechas instantâneas no alvo             | Tactical Retreat  |
| 9   | **Explosive Trap**   | 40 Mana  | 4 Turnos | **150**      | Coloca armadilha, 150 dano + atordoa 1 Turno       | Nível 5           |
| 10  | **Headshot**         | 50 Mana  | 5 Turnos | **60**       | Crítico garantido, +200% dano, headshot instakill  | Hunter's Mark     |
| 11  | **Summon Wolf**      | 60 Mana  | 8 Turnos | Summon       | Invoca lobo que luta por 5 Turnos                  | Nível 7           |
| 12  | **Frost Arrow**      | 45 Mana  | 4 Turnos | **70**       | Congela alvo por 1 Turno, 70 dano                  | Poison Arrow      |
| 13  | **Elven Volley**     | 70 Mana  | 5 Turnos | **100**      | Dispara rajada rápida (atinge alvo 5 vezes)        | Piercing Shot     |
| 14  | **Shadow Step**      | 40 Mana  | 6 Turnos | -            | Fica 'Evasivo' (+50% Esquiva) e ignora Defense     | Nível 9           |
| 15  | **Doom Arrow**       | 100 Mana | 1x comb. | **600 AoE**  | Flecha gigante, 600 dano, stuns área (até 3 alvos) | Headshot + Lvl 12 |

### 🦅 Skills Passivas (15)

| #   | Nome                    | Efeito                                             | Requer                    |
| --- | ----------------------- | -------------------------------------------------- | ------------------------- |
| 1   | **Eagle Eye**           | +15% Precisão e +10% Chance de Crítico             | Nível 1                   |
| 2   | **Fleet Foot**          | +15% Speed                                         | Eagle Eye                 |
| 3   | **Mortal Precision**    | +10% chance de crítico                             | Aimed Shot                |
| 4   | **Archer Mastery**      | +15% dano com arcos                                | Nível 2                   |
| 5   | **Evasion**             | +15% chance de esquivar ataques corpo-a-corpo      | Tactical Retreat          |
| 6   | **Skirmishing**         | Pode atacar e mover no mesmo turno (menor alcance) | Archer Mastery            |
| 7   | **Sharpshooter Stance** | +20% dano se não mover no turno                    | Mortal Precision          |
| 8   | **Exploit Weakness**    | +25% dano contra inimigos abaixo de 50% HP         | Hunter's Mark             |
| 9   | **Ambush**              | Primeiro ataque de combate +100% dano              | Nível 4                   |
| 10  | **Steady Aim**          | +10% Precisão, ignora 25% da esquiva do alvo       | Nível 5                   |
| 11  | **Toxic Mastery**       | DoTs duram +1 turno                                | Poison Arrow              |
| 12  | **Feline Reflexes**     | +25% Velocidade de Ação (Turno chega mais rápido)  | Evasion                   |
| 13  | **Natural Hunter**      | +30% dano contra criaturas selvagens               | Summon Wolf               |
| 14  | **Devastating Crit**    | Críticos causam +150% dano em vez de +100%         | Mortal Precision          |
| 15  | **Living Legend**       | +40% todos stats durante o dia                     | Devastating Crit + Lvl 11 |

---

## 🗝️ LADINO (Rogue) - 30 Skills

### 🔪 Skills Ativas (15)

| #   | Nome                   | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                               | Requer                   |
| --- | ---------------------- | -------- | -------- | ------------ | ------------------------------------------------------- | ------------------------ |
| 1   | **Backstab**           | 10 Mana  | 1 Turno  | **30**       | Ataque rápido pelas costas, +50% dano                   | Nível 1                  |
| 2   | **Smoke Bomb**         | 20 Mana  | 3 Turnos | -            | Cria nuvem, invisível por 1 Turno                       | Backstab                 |
| 3   | **Hamstring**          | 15 Mana  | 2 Turnos | **20**       | Causa dano leve e reduz Speed do alvo em 30%            | Nível 2                  |
| 4   | **Envenom**            | 25 Mana  | 3 Turnos | Poison       | Próximos 5 ataques aplicam veneno (Dano por turno)      | Backstab                 |
| 5   | **Death Shadow**       | 30 Mana  | 4 Turnos | **40**       | Força Back Attack (mesmo de frente), +100% dano crit    | Smoke Bomb               |
| 6   | **Blade Flurry**       | 40 Mana  | 4 Turnos | **160**      | Gira rapidamente, 8 ataques em 1 Turno                  | Nível 4                  |
| 7   | **Cheap Shot**         | 35 Mana  | 5 Turnos | **20**       | Atordoa alvo por 1 Turno                                | Death Shadow             |
| 8   | **Shadow Dodge**       | 20 Mana  | 2 Turnos | -            | Esquiva garantida do próximo ataque e recupera mana     | Nível 3                  |
| 9   | **Opportunist Strike** | 45 Mana  | 4 Turnos | **80**       | Se alvo estiver atordoado/congelado, +300% dano         | Cheap Shot               |
| 10  | **Mirror Image**       | 60 Mana  | 6 Turnos | **10/t**     | Cria clone que dura 3 Turnos e causa 50% dano           | Smoke Bomb               |
| 11  | **Hemorrhage**         | 50 Mana  | 4 Turnos | **15/t DoT** | Causa sangramento severo, 15 dano/turno por 3 Turnos    | Envenom                  |
| 12  | **Stealth Execute**    | 55 Mana  | 5 Turnos | Fatal        | Força Back Attack furtivo, instakill if HP < 30%        | Death Shadow             |
| 13  | **Fan of Knives**      | 70 Mana  | 5 Turnos | **400 AoE**  | 20 adagas em cone, 20 dano cada                         | Blade Flurry             |
| 14  | **Master of Shadows**  | 40 Mana  | 6 Turnos | -            | Invisível por 4 Turnos, +50% velocidade                 | Mirror Image             |
| 15  | **Blade Dance**        | 100 Mana | 1x comb. | Fatal        | Teleporta entre 5 inimigos, causando dano crítico fatal | Stealth Execute + Lvl 12 |

### 🌑 Skills Passivas (15)

| #   | Nome                 | Efeito                                                 | Requer                   |
| --- | -------------------- | ------------------------------------------------------ | ------------------------ |
| 1   | **Stealth**          | -30% chance de ser alvo de ataques (Aggro Baixo)       | Nível 1                  |
| 2   | **Quick Fingers**    | -20% tempo de cooldown em skills                       | Stealth                  |
| 3   | **Back Attack**      | +50% dano se atacar por trás                           | Backstab                 |
| 4   | **Dagger Mastery**   | +20% dano com adagas                                   | Nível 2                  |
| 5   | **Plunder**          | Chance maior de encontrar itens raros                  | Hamstring                |
| 6   | **Lethal Poison**    | DoTs de veneno causam +40% dano                        | Envenom                  |
| 7   | **Deadly Dodge**     | +20% chance de esquivar                                | Nível 4                  |
| 8   | **Poison Immunity**  | Imune a todos venenos                                  | Lethal Poison            |
| 9   | **Critical Strike**  | +25% chance de crítico                                 | Back Attack              |
| 10  | **Acrobat**          | +30% Speed                                             | Deadly Dodge             |
| 11  | **Preparation**      | Reduz todos cooldowns em 30% ao entrar em combate      | Quick Fingers            |
| 12  | **Cold Blood**       | +40% dano contra alvos com HP cheio                    | Critical Strike          |
| 13  | **Natural Assassin** | +50% dano contra alvos solitários                      | Stealth                  |
| 14  | **Living Shadow**    | Regenera 6% HP/turno quando invisível                  | Master of Shadows        |
| 15  | **Silent Death**     | +60% dano crítico, ao matar fica invisível por 1 turno | Stealth Execute + Lvl 11 |

---

## 🌿 DRUIDA (Druid) - 30 Skills

### 🍃 Skills Ativas (15)

| #   | Nome                   | Custo    | Cooldown | Ex: Dmg (L1)  | Descrição                                                   | Requer           |
| --- | ---------------------- | -------- | -------- | ------------- | ----------------------------------------------------------- | ---------------- |
| 1   | **Entangling Roots**   | 20 Mana  | 2 Turnos | **40**        | Prende inimigo por 1 Turno, 40 dano                         | Nível 1          |
| 2   | **Nature's Heal**      | 30 Mana  | 2 Turnos | 150 HP Heal   | Cura alvo em 150 HP                                         | Nível 1          |
| 3   | **Bear Form**          | 40 Mana  | 4 Turnos | **30**        | Transforma em urso por 3 Turnos, +100% HP, +50% Attack      | Nível 2          |
| 4   | **Toxic Briar**        | 25 Mana  | 3 Turnos | **80 + 10/t** | Cria barreira de espinhos, 80 dano + 10 dano/t por 3 Turnos | Entangling Roots |
| 5   | **Summon Spirit Wolf** | 50 Mana  | 6 Turnos | Summon        | Invoca lobo espiritual que luta por 4 Turnos                | Nível 3          |
| 6   | **Tranquility**        | 45 Mana  | 4 Turnos | 80 HP Heal    | Cura todos aliados em 12m, 80 HP + 10 HP/t por 3 Turnos     | Nature's Heal    |
| 7   | **Nature's Fury**      | 55 Mana  | 5 Turnos | **20 AoE**    | Tempestade 8m, atinge 3-5 inimigos, dano + lentidão         | Nível 4          |
| 8   | **Treant Form**        | 30 Mana  | 4 Turnos | -             | Vira árvore, +200% Defesa, imune a Knockback, Lento         | Nível 5          |
| 9   | **Feral Claws**        | 35 Mana  | 3 Turnos | **200**       | Transforma mãos em garras, 5 ataques rápidos, 40 cada       | Bear Form        |
| 10  | **Rebirth**            | 80 Mana  | 1x comb. | 50% HP Heal   | Revive herói morto com 50% HP (aliado ou próprio)           | Tranquility      |
| 11  | **Insect Swarm**       | 60 Mana  | 5 Turnos | **15/t DoT**  | Nuvem 10m, cega inimigos, 15 dano/t por 3 Turnos            | Toxic Briar      |
| 12  | **Panther Form**       | 45 Mana  | 5 Turnos | **30**        | +80% velocidade, +50% dano crítico por 3 Turnos             | Nível 6          |
| 13  | **Earth's Tremor**     | 70 Mana  | 6 Turnos | **150 AoE**   | Fissura 15m, atordoa 1 Turno, 150 dano                      | Nature's Fury    |
| 14  | **Gaia's Communion**   | 50 Mana  | 8 Turnos | -             | Imune a controle de grupo por 4 Turnos, +30% todos stats    | Nível 8          |
| 15  | **Avatar of Nature**   | 120 Mana | 1x comb. | **60**        | Forma definitiva, +200% HP/Attack, cura 10%/t, 4 Turnos     | Rebirth + Lvl 12 |

### 🌳 Skills Passivas (15)

| #   | Nome                     | Efeito                                                 | Requer                    |
| --- | ------------------------ | ------------------------------------------------------ | ------------------------- |
| 1   | **Forest Guardian**      | +15% stats em terreno de floresta                      | Nível 1                   |
| 2   | **Nature's Bond**        | Heals sobre-curam viram escudo temporário (máx 20% HP) | Nature's Heal             |
| 3   | **Barkskin**             | +12% Defense, imune a sangramento                      | Nível 2                   |
| 4   | **Wild Instincts**       | +20% chance de esquivar quando HP < 50%                | Bear Form                 |
| 5   | **Beast Tongue**         | Todos os pets invocados ganham +20% HP e dano          | Summon Spirit Wolf        |
| 6   | **Accelerated Regen**    | +10 HP/t fora de combate, +5 HP/t em combate           | Nível 3                   |
| 7   | **Elemental Resistance** | +30% resistência a fogo, gelo e veneno                 | Barkskin                  |
| 8   | **Ancient Wisdom**       | +25% Mana máximo                                       | Nível 4                   |
| 9   | **Shapeshifter**         | Formas animais duram +50% tempo                        | Panther Form              |
| 10  | **Forest Spirit**        | Aliados próximos regeneram +5 HP/turno                 | Accelerated Regen         |
| 11  | **Primordial Fury**      | Em forma animal, +40% Attack                           | Wild Instincts            |
| 12  | **Symbiosis**            | Heals em aliados curam o druida por 30% do valor       | Nature's Bond             |
| 13  | **Deep Roots**           | Imune a knock-back e empurrões                         | Barkskin                  |
| 14  | **Master Shapeshifter**  | Pode trocar entre formas sem cooldown (1x turno)       | Shapeshifter              |
| 15  | **One with Nature**      | +50% todos stats em lua cheia, revive 1x/combate       | Avatar of Nature + Lvl 11 |

---

## 🏹 ELFO (Elf) - 30 Skills

### ✨ Skills Ativas (15)

| #   | Nome                   | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                                    | Requer                   |
| --- | ---------------------- | -------- | -------- | ------------ | ------------------------------------------------------------ | ------------------------ |
| 1   | **Arcane Arrow**       | 15 Mana  | 1 Turno  | **70**       | Flecha mágica, 70 dano + penetra defesa                      | Nível 1                  |
| 2   | **Elven Step**         | 20 Mana  | 2 Turnos | **26**       | Teleporta 12m, próximos 3 ataques +30% dano                  | Nível 1                  |
| 3   | **Moonlight Blessing** | 30 Mana  | 3 Turnos | -            | Aliados próximos ganham +20% Speed por 2 Turnos              | Nível 2                  |
| 4   | **Starfall**           | 50 Mana  | 4 Turnos | **350 AoE**  | 10 projéteis mágicos, 35 dano cada, rastreiam alvos          | Arcane Arrow             |
| 5   | **Protection Circle**  | 40 Mana  | 4 Turnos | -            | Zona 8m, aliados ganham +40% Defense por 2 Turnos            | Moonlight Blessing       |
| 6   | **Mystic Blade**       | 25 Mana  | 3 Turnos | **36**       | Espada de energia por 3 Turnos, +80% Attack médico           | Nível 3                  |
| 7   | **Spirit Bond**        | 45 Mana  | 5 Turnos | -            | Liga com aliado, compartilha 30% dano/cura por 4 Turnos      | Protection Circle        |
| 8   | **Arcane Barrage**     | 35 Mana  | 2 Turnos | **240**      | 6 flechas instantâneas, 40 dano cada                         | Starfall                 |
| 9   | **Elven Sanctuary**    | 60 Mana  | 6 Turnos | 20 HP/t Heal | Cria zona 10m, cura 20 HP/turno, +25% resistência mágica     | Protection Circle        |
| 10  | **Ethereal Form**      | 50 Mana  | 5 Turnos | -            | Imune a dano físico, ganha turno extra se esquivar           | Elven Step               |
| 11  | **Celestial Prism**    | 70 Mana  | 5 Turnos | **500 AoE**  | Raio que divide em 5, 100 dano cada                          | Starfall                 |
| 12  | **Arcane Resonance**   | 55 Mana  | 5 Turnos | -            | Próximas 3 skills custam 0 Mana                              | Nível 7                  |
| 13  | **Blade Storm**        | 65 Mana  | 5 Turnos | **80 AoE**   | Lâminas giram, atinge até 4 inimigos adjacentes              | Mystic Blade             |
| 14  | **Ascension**          | 80 Mana  | 8 Turnos | -            | Levita (imune corpo-a-corpo), Skills Instantâneas (3 Turnos) | Ethereal Form            |
| 15  | **Total Eclipse**      | 150 Mana | 1x comb. | Blind AoE    | Escurece área 25m, cega todos inimigos por 3 Turnos          | Celestial Prism + Lvl 12 |

### 🌟 Skills Passivas (15)

| #   | Nome                     | Efeito                                                 | Requer                 |
| --- | ------------------------ | ------------------------------------------------------ | ---------------------- |
| 1   | **Elven Grace**          | +25% Speed                                             | Nível 1                |
| 2   | **Mystic Vision**        | Detecta inimigos invisíveis e escondidos               | Nível 1                |
| 3   | **Longevity**            | +20% HP máximo, imune a doenças                        | Nível 2                |
| 4   | **Arcane Affinity**      | +20% dano mágico                                       | Arcane Arrow           |
| 5   | **Supernatural Evasion** | +18% chance de esquivar                                | Elven Grace            |
| 6   | **Ancestral Wisdom**     | +30% Mana máximo, -10% custo skills                    | Nível 3                |
| 7   | **Elven Precision**      | +15% chance de crítico, críticos ignoram 20% defesa    | Arcane Barrage         |
| 8   | **Lunar Protection**     | Durante a noite, +15% todos stats                      | Moonlight Blessing     |
| 9   | **Magic Harmony**        | Regenera 3% Mana máximo a cada skill usada             | Ancestral Wisdom       |
| 10  | **Shadow Cloak**         | +15% Esquiva contra magias e projéteis                 | Supernatural Evasion   |
| 11  | **Arcane Resilience**    | +35% resistência mágica                                | Longevity              |
| 12  | **Soul Link**            | Quando aliado morre próximo, ganha +50% dano por 30s   | Spirit Bond            |
| 13  | **Arcane Master**        | Cooldowns de skills -15%                               | Magic Harmony          |
| 14  | **Elven Immortality**    | Ao morrer, revive with 1 HP (1x/10min)                 | Longevity              |
| 15  | **Transcendence**        | +60% Mana, +40% dano mágico, habilidades custam metade | Total Eclipse + Lvl 11 |

---

## Sistema de Desbloqueio e Custos

### Investimento em Pesquisa (Ouro)

O Majesty não "compra" a skill para um herói, mas sim **pesquisa** a habilidade na guilda correspondente. Uma vez pesquisada, qualquer herói daquela classe que atenda aos requisitos de nível pode usá-la.

**Tabela de Custos por Tier:**

| Categoria                  | Nível Requerido | Custo em Ouro | Exemplo                         |
| :------------------------- | :-------------- | :------------ | :------------------------------ |
| **Tier 1 (Básica)**        | Nível 1         | 200g          | Fireball, Power Strike          |
| **Tier 2 (Intermediária)** | Nível 3+        | 400g          | Frost Bolt, Battle Cry          |
| **Tier 3 (Avançada)**      | Nível 5+        | 800g          | Meteor Shower, Taunt            |
| **Tier 4 (Elite)**         | Nível 8+        | 1.500g        | Teleport, Iron Skin             |
| **Tier 5 (Ultimate)**      | Nível 12+       | 5.000g        | Arcane Apocalypse, Battle Titan |

**Nota:** Skills Passivas seguem os mesmos custos de seus respectivos Tiers de pré-requisito.

### Árvore de Dependências

```
Skills seguem hierarquia:
- Básicas (Nível 1) → Intermediárias → Avançadas → Ultimate

Exemplo (Warrior):
Power Strike (Lvl 1)
    ↓
Battle Cry (Lvl 2)
    ↓
Taunt (Lvl 4)
    ↓
Menacing Presence (Passiva, Lvl 6)
```

### Interface no F2 (ADMIN)

No workspace F2, painel P2 mostra a árvore de skills interativa onde o Majesty pode:

- Ver quais skills estão disponíveis para pesquisa
- Desbloquear novas skills gastando **Ouro**
- Ver pré-requisitos e custos de manutenção da guilda

---

## Balanceamento

**Filosofia de Design:**

- **Skills Ativas**: Impacto imediato, requerem timing e estratégia
- **Skills Passivas**: Poder crescente, modificam playstyle permanentemente
- **Ultimates**: Extremamente poderosas, cooldowns longos, definem momentos épicos

**Progressão Esperada:**

- Dia 1-50: 10-15 skills desbloqueadas
- Dia 51-100: 20-25 skills desbloqueadas
- Dia 101-150: 25-28 skills desbloqueadas
- Dia 151-200: Chance de desbloquear todas 30 (partida perfeita)

---

# Skills das Novas Classes

## 🛡️ PALADINO (Paladin) - 30 Skills

### ⚔️ Skills Ativas (15)

| #   | Nome                  | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                            | Requer                |
| --- | --------------------- | -------- | -------- | ------------ | ---------------------------------------------------- | --------------------- |
| 1   | **Holy Strike**       | 15 Mana  | 1 Turno  | **70**       | Ataque sagrado, 70 dano + 30 HP de cura própria      | Nível 1               |
| 2   | **Devotion Aura**     | 20 Mana  | Passiva  | -            | Aliados em 12m ganham +15% Defense permanente        | Nível 1               |
| 3   | **Holy Light**        | 30 Mana  | 2 Turnos | 200 HP Heal  | Cura aliado em 200 HP                                | Holy Strike           |
| 4   | **Shield of Faith**   | 25 Mana  | 3 Turnos | 250 Shield   | Absorve 250 dano por 2 Turnos                        | Nível 2               |
| 5   | **Hammer of Justice** | 35 Mana  | 3 Turnos | **100**      | Arremessa martelo, 100 dano + atordoa 1 Turno        | Holy Strike           |
| 6   | **Divine Sacrifice**  | 40 Mana  | 4 Turnos | -            | Transfere 50% do dano de aliado para si por 3 Turnos | Holy Light            |
| 7   | **Judgment**          | 45 Mana  | 4 Turnos | **32**       | Marca inimigo maligno, +60% dano contra ele          | Nível 4               |
| 8   | **Resurrection**      | 80 Mana  | 1x comb. | 70% HP Heal  | Revive aliado com 70% HP (melhor que Druida)         | Holy Light            |
| 9   | **Consecration**      | 50 Mana  | 5 Turnos | Debuff AoE   | Zona 10m, inimigos malignos -30% Attack por 4 Turnos | Nível 5               |
| 10  | **Mirror Shield**     | 55 Mana  | 5 Turnos | -            | Próximos 5 ataques são refletidos 100%               | Shield of Faith       |
| 11  | **Divine Wrath**      | 60 Mana  | 5 Turnos | **40**       | +100% Attack por 3 Turnos, ganha Mana ao atacar      | Hammer of Justice     |
| 12  | **Grand Blessing**    | 70 Mana  | 6 Turnos | -            | Todos aliados em 15m ganham +30% stats (3 Turnos)    | Devotion Aura         |
| 13  | **Vow of Vengeance**  | 65 Mana  | 6 Turnos | **50**       | Se aliado morrer próximo, ganha +150% Attack         | Judgment              |
| 14  | **Sanctuary**         | 75 Mana  | 8 Turnos | -            | Cria zona 12m, aliados recebem -80% Dano (1 Turno)   | Consecration          |
| 15  | **Avatar of Light**   | 150 Mana | 1x comb. | **60**       | Forma angelical, cura em área/turno, +200% stats     | Resurrection + Lvl 12 |

### 🛡️ Skills Passivas (15)

| #   | Nome                   | Efeito                                           | Requer                   |
| --- | ---------------------- | ------------------------------------------------ | ------------------------ |
| 1   | **Unwavering Faith**   | +15% HP máximo, +10% Defense                     | Nível 1                  |
| 2   | **Devotion Gain**      | Ganha 10 Mana ao ser atingido                    | Nível 1                  |
| 3   | **Martyr**             | +20% Defense quando HP < 30%                     | Unwavering Faith         |
| 4   | **Natural Protector**  | Aliados próximos recebem -15% dano               | Devotion Aura            |
| 5   | **Holy Regen**         | Cura 5% HP máximo a cada turno                   | Holy Light               |
| 6   | **Unshakable Justice** | Imune a medo e corrupção                         | Nível 3                  |
| 7   | **Avenger**            | +30% dano contra mortos-vivos e demônios         | Judgment                 |
| 8   | **Eternal Blessing**   | Inicia combate com +20% todos stats por 3 Turnos | Grand Blessing           |
| 9   | **Divine Rebirth**     | Ao morrer, revive com 30% HP (1x/partida)        | Resurrection             |
| 10  | **Guardian Shield**    | Pode bloquear ataques destinados a aliados (5m)  | Natural Protector        |
| 11  | **Expanded Aura**      | Alcance de auras +50% (18m em vez de 12m)        | Natural Protector        |
| 12  | **Devoted**            | Curas custam -20% Mana                           | Holy Regen               |
| 13  | **Bastion**            | +50% Defense quando não se move por 3s           | Unwavering Faith         |
| 14  | **Purification**       | Remove todos debuffs de si mesmo a cada 4 Turnos | Unshakable Justice       |
| 15  | **Holy Warrior**       | +40% stats, imune a críticos, aliados +25% moral | Avatar of Light + Lvl 11 |

---

## 💀 NECROMANTE (Necromancer) - 30 Skills

### 🌑 Skills Ativas (15)

| #   | Nome                 | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                            | Requer                    |
| --- | -------------------- | -------- | -------- | ------------ | ---------------------------------------------------- | ------------------------- |
| 1   | **Shadow Bolt**      | 20 Mana  | 1 Turno  | **75**       | Projétil sombrio, 75 dano necrótico, drena 20 HP     | Nível 1                   |
| 2   | **Raise Skeleton**   | 30 Mana  | 1 Turno  | Summon       | Transforma cadáver em Esqueleto (dura 8 Turnos)      | Nível 1                   |
| 3   | **Drain Life**       | 25 Mana  | 2 Turnos | **40/t**     | Canaliza 1 Turno, drena 40 HP/t do alvo              | Shadow Bolt               |
| 4   | **Summon Zombie**    | 50 Mana  | 4 Turnos | Summon       | Invoca Zumbi resistente (dura 10 Turnos)             | Raise Skeleton            |
| 5   | **Curse of Frailty** | 30 Mana  | 3 Turnos | Debuff       | Alvo perde -40% Attack por 3 Turnos                  | Nível 3                   |
| 6   | **Corpse Explosion** | 40 Mana  | 3 Turnos | **150 AoE**  | Detona cadáver, 150 dano em 8m                       | Raise Skeleton            |
| 7   | **Bone Shield**      | 35 Mana  | 4 Turnos | 200 Shield   | Absorve 200 dano, dura até quebrar                   | Nível 4                   |
| 8   | **Pestilence**       | 45 Mana  | 5 Turnos | **10/t DoT** | Zona 10m, 10 dano/t necrótico, se espalha            | Drain Life                |
| 9   | **Summon Wraith**    | 70 Mana  | 6 Turnos | Summon       | Invoca fantasma que ignora Defense física (6 Turnos) | Summon Zombie             |
| 10  | **Death's Touch**    | 50 Mana  | 4 Turnos | Fatal        | Instakill inimigo não-elite com HP < 20%             | Drain Life                |
| 11  | **Army of the Dead** | 100 Mana | 1x comb. | Summon x3    | Invoca 3 esqueletos simultaneamente (6 Turnos)       | Summon Wraith             |
| 12  | **Dark Pact**        | 60 Mana  | 5 Turnos | **36**       | Sacrifica 30% HP, ganha +80% dano mágico (4 Turnos)  | Nível 7                   |
| 13  | **Necrosis**         | 55 Mana  | 5 Turnos | **80/t DoT** | DoT massivo, 80 dano/t por 3 Turnos, gera cadáver    | Pestilence                |
| 14  | **Lich Form**        | 80 Mana  | 8 Turnos | **40**       | Transforma em Lich, imune a físico, +100% dano (4t)  | Dark Pact                 |
| 15  | **Dark Apocalypse**  | 200 Mana | 1x comb. | Summon Max   | Reanima todos cadáveres (Max 3) permanentes          | Army of the Dead + Lvl 12 |

### 💀 Skills Passivas (15)

| #   | Nome                     | Efeito                                              | Requer                   |
| --- | ------------------------ | --------------------------------------------------- | ------------------------ |
| 1   | **Soul Harvest**         | Ganha 25 Mana ao matar inimigo                      | Nível 1                  |
| 2   | **Shadow Essence**       | +25% Mana máximo                                    | Nível 1                  |
| 3   | **Minion Mastery**       | Invocações têm +50% HP e Attack                     | Raise Skeleton           |
| 4   | **Necrotic Mastery**     | +20% dano necrótico                                 | Shadow Bolt              |
| 5   | **Vital Siphon**         | Spells de dano curam 15% do dano causado            | Drain Life               |
| 6   | **Undead Resilience**    | +30% resistência a necrótico e veneno               | Nível 3                  |
| 7   | **Chain Detonation**     | Corpse Explosion pode detonar outros cadáveres      | Corpse Explosion         |
| 8   | **Minion Longevity**     | Invocações duram +50% tempo                         | Minion Mastery           |
| 9   | **Undying Essence**      | Regenera 10 Mana/turno                              | Soul Harvest             |
| 10  | **Necrotic Aura**        | Inimigos próximos (8m) perdem 4% HP máximo/t        | Necrotic Mastery         |
| 11  | **Eternal Pact**         | Ao usar Dark Pact, não perde HP mas servos morrem   | Dark Pact                |
| 12  | **Lord of the Dead**     | Seus servos ganham +30% HP e Attack (Max Servos: 3) | Army of the Dead         |
| 13  | **Immortal**             | Ao morrer, vira Lich por 2 Turnos, pode lutar       | Lich Form                |
| 14  | **Dark Synergy**         | Cada servo vivo aumenta dano mágico em +10%         | Lord of the Dead         |
| 15  | **Overlord of Darkness** | +100% Mana, Servos reanimam 1x após morrerem        | Dark Apocalypse + Lvl 11 |

---

## 🎵 BARDO (Bard) - 30 Skills

### 🎶 Skills Ativas (15)

| #   | Nome                   | Custo    | Cooldown   | Ex: Dmg (L1) | Descrição                                            | Requer               |
| --- | ---------------------- | -------- | ---------- | ------------ | ---------------------------------------------------- | -------------------- |
| 1   | **War Song**           | 15 Mana  | Sustentada | **24 Buff**  | Canta, aliados 15m ganham +20% Attack (Gasta turno)  | Nível 1              |
| 2   | **Dissonant Chord**    | 20 Mana  | 1 Turno    | **60**       | Nota musical, 60 dano + confunde por 1 Turno         | Nível 1              |
| 3   | **Healing Lullaby**    | 25 Mana  | Sustentada | AoE Heal     | Canta, aliados 15m curam HP a cada Turno             | War Song             |
| 4   | **Inspiring Shout**    | 30 Mana  | 4 Turnos   | -            | Todos aliados ganham +30% Speed por 3 Turnos         | Nível 2              |
| 5   | **Throwing Knife**     | 20 Mana  | 1 Turno    | **150**      | Arremessa faca, 50 dano, 3 cargas                    | Dissonant Chord      |
| 6   | **Anthem of Stalwart** | 35 Mana  | Sustentada | -            | Canta, aliados 15m ganham +30% Defense               | Healing Lullaby      |
| 7   | **Devastating Solo**   | 40 Mana  | 4 Turnos   | **480 AoE**  | Toca solo, 15m AoE (até 4 alvos), 120 dano           | Dissonant Chord      |
| 8   | **Rally Allies**       | 40 Mana  | 5 Turnos   | -            | Aliados ganham Turno Extra Imediato (1x combate)     | Inspiring Shout      |
| 9   | **Ballad of Regen**    | 50 Mana  | Sustentada | AoE Regen    | Canta, aliados 15m regeneram HP a cada Turno         | Anthem of Stalwart   |
| 10  | **Siren's Song**       | 45 Mana  | 5 Turnos   | -            | Encanta inimigos 12m (3 alvos), perdem próximo Turno | Devastating Solo     |
| 11  | **Grand Symphony**     | 60 Mana  | 6 Turnos   | **28 Buff**  | Todos aliados ganham +40% stats (3 Turnos)           | Ballad of Regen      |
| 12  | **Counter-Melody**     | 50 Mana  | 5 Turnos   | -            | Cancela buffs inimigos em 20m                        | Siren's Song         |
| 13  | **Heroic Saga**        | 70 Mana  | 8 Turnos   | -            | Aliado ignora dano de 2 ataques recebidos            | Grand Symphony       |
| 14  | **Sonic Wave**         | 80 Mana  | 6 Turnos   | **200 AoE**  | Cone 25m, 200 dano + knock-back 10m                  | Devastating Solo     |
| 15  | **Requiem**            | 150 Mana | 1x comb.   | **40 Buff**  | Inimigos -50% stats, Aliados +100% (3 Turnos)        | Heroic Saga + Lvl 12 |

### 🎵 Skills Passivas (15)

| #   | Nome                  | Efeito                                                      | Requer           |
| --- | --------------------- | ----------------------------------------------------------- | ---------------- |
| 1   | **Inspiration Gain**  | Ganha 20 Mana ao ver aliado matar inimigo                   | Nível 1          |
| 2   | **Charismatic**       | +30% Affinity natural com todos heróis                      | Nível 1          |
| 3   | **Musical Reach**     | Canções afetam +5m de raio (20m em vez de 15m)              | War Song         |
| 4   | **Multitasking**      | Pode manter canção e atacar (com penalidade de dano)        | Healing Lullaby  |
| 5   | **Sonic Mastery**     | +15% dano de habilidades sonoras                            | Dissonant Chord  |
| 6   | **Natural Performer** | Canções custam -20% Mana                                    | Inspiration Gain |
| 7   | **Performance Speed** | Canções começam a fazer efeito 50% mais rápido              | Multitasking     |
| 8   | **Auto-Inspiration**  | Regenera 20 Mana/turno quando em grupo                      | Inspiration Gain |
| 9   | **Resonance**         | Canções persistem por 1 Turno após parar de cantar          | Musical Reach    |
| 10  | **High Morale**       | Aliados próximos nunca fogem                                | Charismatic      |
| 11  | **Virtuoso**          | Pode ter 2 canções ativas simultaneamente                   | Resonance        |
| 12  | **Charisma Aura**     | Grupo forma 3x mais rápido                                  | High Morale      |
| 13  | **Chorus Influence**  | Cada aliado próximo aumenta efeito de canções em +15%       | Virtuoso         |
| 14  | **Eternal Echo**      | Se morrer cantando, canção dura +4 Turnos                   | Nível 9          |
| 15  | **Living Legend**     | Presença proporciona +50% XP para aliados, +100% Mana Regen | Requiem + Lvl 11 |

---

## 👊 MONGE (Monk) - 30 Skills

### 🥋 Skills Ativas (15)

| #   | Nome                  | Custo    | Cooldown | Ex: Dmg (L1) | Descrição                                                 | Requer                 |
| --- | --------------------- | -------- | -------- | ------------ | --------------------------------------------------------- | ---------------------- |
| 1   | **Palm Strike**       | 10 Mana  | 1 Turno  | **55**       | Soco rápido, 55 dano, gera 1 combo                        | Nível 1                |
| 2   | **Spinning Kick**     | 15 Mana  | 1 Turno  | **280 AoE**  | Ataque 360°, 70 dano, atinge até 4 inimigos               | Palm Strike            |
| 3   | **Wind Dash**         | 20 Mana  | 1 Turno  | -            | Teleporta 15m instantly, gera 2 combos                    | Nível 2                |
| 4   | **Dragon Punch**      | 25 Mana  | 2 Turnos | **120**      | 3 socos rápidos (ação única), 40 dano cada, gera 3 combos | Spinning Kick          |
| 5   | **Meditation**        | 0 Mana   | 4 Turnos | -            | Regenera 50 Mana, gasta turno                             | Nível 3                |
| 6   | **Hundred-Hand Slap** | 30 Mana  | 3 Turnos | **200**      | Ataque frenético em alvo único, 10 hits                   | Dragon Punch           |
| 7   | **Paralyzing Touch**  | 35 Mana  | 3 Turnos | -            | Paralisa inimigo por 1 Turno                              | Nível 4                |
| 8   | **Cyclone**           | 40 Mana  | 4 Turnos | **100 AoE**  | Gira rapidamente, atinge todos adjacentes (max 5)         | Spinning Kick          |
| 9   | **Mana Aura**         | 45 Mana  | 4 Turnos | -            | +50% Velocidade de Ação por 3 Turnos, consome 5 combos    | Hundred-Hand Slap      |
| 10  | **Spirit Step**       | 50 Mana  | 5 Turnos | -            | Teleporta para qualquer local em 30m                      | Wind Dash              |
| 11  | **Fist of Fury**      | 60 Mana  | 5 Turnos | **300**      | Golpe massivo, 300 dano, consome combos (+20 dano/c)      | Hundred-Hand Slap      |
| 12  | **Transcendence**     | 70 Mana  | 8 Turnos | -            | Imune a dano por 1 Turno, atravessa inimigos              | Meditation             |
| 13  | **Mana Burst**        | 80 Mana  | 5 Turnos | **900 AoE**  | Libera Mana, 15m AoE (3-5 alvos), 180 dano + knock-back   | Mana Aura              |
| 14  | **Dragon Form**       | 90 Mana  | 1x comb. | **50**       | Espírito, +150% Attack, ignora terreno, 3 Turnos          | Fist of Fury           |
| 15  | **Enlightenment**     | 150 Mana | 1x comb. | -            | Velocidade 2x, +50% Esquiva, Combos infinitos (3 Turnos)  | Transcendence + Lvl 12 |

### 🧘 Skills Passivas (15)

| #   | Nome                    | Efeito                                          | Requer                 |
| --- | ----------------------- | ----------------------------------------------- | ---------------------- |
| 1   | **Mana Regen**          | Regenera 10 Mana/turno                          | Nível 1                |
| 2   | **Martial Arts Master** | +20% dano corpo-a-corpo                         | Nível 1                |
| 3   | **Combo System**        | Cada ataque gera 1 combo, máximo 10 combos      | Palm Strike            |
| 4   | **Combo Damage**        | +5% dano por combo ativo                        | Combo System           |
| 5   | **Superhuman Reflexes** | +25% Speed                                      | Wind Dash              |
| 6   | **Master Evasion**      | +20% chance de esquivar                         | Superhuman Reflexes    |
| 7   | **Perfect Counter**     | 30% chance de contra-atacar ao esquivar         | Master Evasion         |
| 8   | **Passive Meditation**  | Regenera 5% HP máximo/turno fora de combate     | Meditation             |
| 9   | **Infinite Mana**       | Mana máximo +50                                 | Mana Regen             |
| 10  | **Iron Discipline**     | Imune a atordoamentos quando tem 5+ combos      | Combo System           |
| 11  | **Critical Strikes**    | +30% chance de crítico                          | Martial Arts Master    |
| 12  | **Flash Speed**         | +40% Velocidade de Ação                         | Superhuman Reflexes    |
| 13  | **Fist Mastery**        | Sem arma equipada, +50% todos stats             | Martial Arts Master    |
| 14  | **Dragon Spirit**       | Ao atingir 10 combos, próximo ataque +300% dano | Combo Damage           |
| 15  | **Enlightened Master**  | Quando em Enlightenment, combos nunca resetam   | Enlightenment + Lvl 11 |

---

### 4.8. Combos de Afinidade (DUAL TECHS & SYNERGY)

Diferente de skills normais, **Combos de Afinidade** (baseados em Chrono Trigger) não consomem recursos e são ativados automaticamente quando dois heróis com **Alta Afinidade (+60)** atacam o mesmo alvo ou estão próximos. Eles proporcionam espetáculo visual (Console UX) e recompensam a socialização.

**Nota Importante:** Embora não consumam Mana, Combos possuem **Alto Delay** (tempo de preparação e recuperação maior), deixando os heróis vulneráveis se errarem ou se o inimigo não morrer.

#### ⚔️ Combos de Guerreiro (Iniciador)

| Parceiro     | Nome do Combo            | Efeito Visual & Mecânico                                                                         |
| :----------- | :----------------------- | :----------------------------------------------------------------------------------------------- |
| **Mago**     | **Flaming Blade**        | Mago encanta espada do Guerreiro. Dano Físico + Mágico explozivo em área cônica.                 |
| **Ladino**   | **Tactical Smoke**       | Ladino joga bomba de fumaça, Guerreiro executa ataque surpresa crítico (Insta-Stun).             |
| **Arqueiro** | **Skyward Toss**         | Guerreiro "arremessa" Arqueiro para o alto. Arqueiro chove flechas de cima (Dano em Área total). |
| **Paladino** | **Impenetrable Phalanx** | Ambos erguem escudos. Criam barreira que reflete 100% projéteis por 1 Turno.                     |

#### 🔮 Combos de Mago (Iniciador)

| Parceiro       | Nome do Combo          | Efeito Visual & Mecânico                                                                 |
| :------------- | :--------------------- | :--------------------------------------------------------------------------------------- |
| **Ladino**     | **Frost Rush**         | Mago congela o tempo, Ladino desfere 20 cortes instantâneos. Dano massivo single-target. |
| **Druida**     | **Blazing Briar**      | Mago lança ciclone de fogo, Druida adiciona espinhos. Tornado de fogo físico/mágico.     |
| **Necromante** | **Vital Paradox**      | Drenam vida de todos inimigos e curam todo o grupo instantaneamente (Inversão de Fluxo). |
| **Elfo**       | **Arcane Convergence** | Dois raios de energia se fundem em um feixe prismático (Dano Puro que ignora defesa).    |

#### 🏹 Combos de Arqueiro (Iniciador)

| Parceiro  | Nome do Combo       | Efeito Visual & Mecânico                                                                           |
| :-------- | :------------------ | :------------------------------------------------------------------------------------------------- |
| **Elfo**  | **Star Shower**     | Arqueiro dispara para o céu, Elfo encanta flechas. Caem como meteoros teleguiados.                 |
| **Monge** | **Sky Piercer**     | Monge chuta inimigo para o ar, Arqueiro o "prega" na parede com uma flecha gigante (Stun 1 Turno). |
| **Bardo** | **Hunter’s Groove** | Bardo toca acelerado, Arqueiro entra em modo "Metralhadora" (Dobro de Speed por 2 Turnos).         |

#### 🛡️ Combos de Suporte/Outros

| Parceiro A     | Parceiro B     | Nome do Combo        | Efeito                                                                                        |
| :------------- | :------------- | :------------------- | :-------------------------------------------------------------------------------------------- |
| **Paladino**   | **Necromante** | **Final Judgment**   | Luz e Trevas colidem. Elimina instantaneamente todos inimigos não-boss (Low HP).              |
| **Druida**     | **Bardo**      | **Wild Harmony**     | Invoca animais da floresta que dançam e lutam ao ritmo da música (+50% stats pets).           |
| **Monge**      | **Guerreiro**  | **Ground Slam**      | Ambos golpeiam o chão. Terremoto global que derruba (knock-down) todos inimigos.              |
| **Ladino**     | **Bardo**      | **The Bard's Grift** | Bardo distrai inimigos com monólogo, Ladino saqueia itens de TODOS os bolsos simultaneamente. |
| **Necromante** | **Guerreiro**  | **Death Knight**     | Necromante anima armadura do Guerreiro. Guerreiro luta com +200% Defesa mas perde HP/turno.   |

**Regras de Ativação:**

1.  Cooldown interno de 1x por combate por par.
2.  Requer ambos heróis vivos, próximos e sem status negativos (Stun/Silence).
3.  Combos possuem **Alto Delay** (Animação longa e pós-cast delay).
4.  Gera log diferenciado: `⚔️ [COMBO] Kaelen & Lila executaram "Tactical Smoke"! (850 Dano)`

---
