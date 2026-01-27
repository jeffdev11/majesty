# 4.7. SISTEMA DE SKILLS: ÁRVORE COMPLETA DE HABILIDADES

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

O Majesty pode **desbloquear** essas skills gastando **Pontos de Skill** obtidos através de:

- Construir/melhorar Guildas
- Completar missões especiais
- Atingir marcos de progressão

---

## 🗡️ GUERREIRO (Warrior) - 30 Skills

### ⚔️ Skills Ativas (15)

| #   | Nome                 | Custo    | Cooldown | Descrição                                        | Requer                  |
| --- | -------------------- | -------- | -------- | ------------------------------------------------ | ----------------------- |
| 1   | **Golpe Poderoso**   | 10 Mana  | 5s       | +50% dano no próximo ataque                      | Nível 1                 |
| 2   | **Grito de Guerra**  | 20 Mana  | 30s      | +20% Attack para aliados próximos por 10s        | Golpe Poderoso          |
| 3   | **Investida**        | 15 Mana  | 15s      | Carga rápida até o inimigo, atordoa 2s           | Nível 3                 |
| 4   | **Girar Lâmina**     | 25 Mana  | 20s      | Ataque em área 360°, atinge até 5 inimigos       | Investida               |
| 5   | **Quebra-Armadura**  | 30 Mana  | 25s      | Ignora 50% da defesa do alvo                     | Nível 5                 |
| 6   | **Estocada Mortal**  | 35 Mana  | 30s      | Golpe crítico garantido, +100% dano              | Quebra-Armadura         |
| 7   | **Provocação**       | 20 Mana  | 20s      | Força inimigos próximos a atacarem o guerreiro   | Grito de Guerra         |
| 8   | **Segundo Fôlego**   | 50 Mana  | 60s      | Recupera 30% HP instantaneamente                 | Nível 7                 |
| 9   | **Fúria Berserker**  | 40 Mana  | 45s      | +50% Attack, -30% Defense por 15s                | Estocada Mortal         |
| 10  | **Terremoto**        | 60 Mana  | 60s      | Golpeia o chão, atordoa todos em 10m por 3s      | Girar Lâmina            |
| 11  | **Escudo Vivo**      | 30 Mana  | 40s      | Bloqueia próximo ataque completamente            | Nível 9                 |
| 12  | **Vingança**         | 35 Mana  | 30s      | Próximo ataque causa dano = HP perdido           | Fúria Berserker         |
| 13  | **Executar**         | 25 Mana  | 35s      | Mata instantaneamente inimigo com HP < 15%       | Nível 10                |
| 14  | **Muralha de Aço**   | 70 Mana  | 90s      | Imune a dano por 5s, não pode se mover           | Escudo Vivo             |
| 15  | **Avatar da Guerra** | 100 Mana | 120s     | Cresce de tamanho, +200% Attack, ataques em área | Executar + Wyvern Scale |

### 🛡️ Skills Passivas (15)

| #   | Nome                       | Efeito                                                  | Requer                  |
| --- | -------------------------- | ------------------------------------------------------- | ----------------------- |
| 1   | **Pele de Ferro**          | +10% Defense permanente                                 | Nível 1                 |
| 2   | **Vitalidade**             | +15% HP máximo                                          | Pele de Ferro           |
| 3   | **Ameaça Aumentada**       | Inimigos priorizam atacar este herói                    | Provocação              |
| 4   | **Resistência à Dor**      | Ignora 20% do dano de DoT (sangramento, veneno)         | Vitalidade              |
| 5   | **Força Brutal**           | +15% Attack permanente                                  | Nível 4                 |
| 6   | **Regeneração em Combate** | Recupera 1% HP a cada 5s em combate                     | Segundo Fôlego          |
| 7   | **Imparável**              | Reduz duração de atordoamentos em 50%                   | Nível 6                 |
| 8   | **Contra-Ataque**          | 15% chance de revidar quando bloqueado                  | Escudo Vivo             |
| 9   | **Sede de Sangue**         | +5% Attack para cada inimigo morto (máx 50%)            | Fúria Berserker         |
| 10  | **Colosso**                | +20% HP máximo, -10% velocidade                         | Vitalidade              |
| 11  | **Armadura Pesada**        | +25% Defense, imune a knock-back                        | Pele de Ferro           |
| 12  | **Último Suspiro**         | Ao chegar a 1 HP, fica invulnerável por 3s (1x/combate) | Nível 8                 |
| 13  | **Aura de Proteção**       | Aliados próximos ganham +10% Defense                    | Ameaçar Aumentada       |
| 14  | **Mestre em Armas**        | +20% dano com espadas e machados                        | Força Brutal            |
| 15  | **Titã de Batalha**        | +30% todos stats quando HP < 30%                        | Último Suspiro + Lvl 11 |

---

## 🔮 MAGO (Mage) - 30 Skills

### ✨ Skills Ativas (15)

| #   | Nome                    | Custo    | Cooldown | Descrição                                      | Requer                   |
| --- | ----------------------- | -------- | -------- | ---------------------------------------------- | ------------------------ |
| 1   | **Bola de Fogo**        | 20 Mana  | 8s       | Projétil de fogo, 80 dano mágico               | Nível 1                  |
| 2   | **Raio Congelante**     | 25 Mana  | 10s      | Congela alvo por 3s, 60 dano                   | Bola de Fogo             |
| 3   | **Escudo Mágico**       | 30 Mana  | 20s      | Absorve 150 de dano por 8s                     | Nível 2                  |
| 4   | **Chuva de Meteoros**   | 60 Mana  | 40s      | 6 meteoros em área, 50 dano cada               | Bola de Fogo             |
| 5   | **Teletransporte**      | 40 Mana  | 25s      | Teleporta 15m instantaneamente                 | Nível 4                  |
| 6   | **Prisão de Gelo**      | 50 Mana  | 35s      | Congela inimigos em 8m por 5s                  | Raio Congelante          |
| 7   | **Relâmpago em Cadeia** | 45 Mana  | 30s      | Atinge até 4 alvos, 90 dano cada               | Nível 5                  |
| 8   | **Barreira Arcana**     | 35 Mana  | 30s      | Aliados próximos ganham +50% Defense por 10s   | Escudo Mágico            |
| 9   | **Tempestade de Fogo**  | 80 Mana  | 50s      | Área de 12m queima por 10s, 15 dano/s          | Chuva de Meteoros        |
| 10  | **Congelar Tempo**      | 70 Mana  | 60s      | Reduz velocidade de inimigos em 70% por 8s     | Prisão de Gelo           |
| 11  | **Explosão Arcana**     | 55 Mana  | 35s      | AoE de 10m, 120 dano + knock-back              | Nível 7                  |
| 12  | **Invocar Elemental**   | 100 Mana | 90s      | Invoca elemental de fogo que luta por 3 turnos | Tempestade de Fogo       |
| 13  | **Raio da Destruição**  | 90 Mana  | 45s      | Feixe contínuo, 200 dano total (Alto Delay)    | Relâmpago em Cadeia      |
| 14  | **Buraco Negro**        | 60 Mana  | 90s      | Puxa até 5 inimigos p/ centro, 100 dano        | Teletransporte           |
| 15  | **Apocalipse Arcano**   | 150 Mana | 180s     | Explosão 20m, 500 dano, atinge todos inimigos  | Raio Destruição + Lvl 12 |

### 🧙 Skills Passivas (15)

| #   | Nome                   | Efeito                                          | Requer              |
| --- | ---------------------- | ----------------------------------------------- | ------------------- |
| 1   | **Mente Brilhante**    | +20% Mana máximo                                | Nível 1             |
| 2   | **Regeneração Arcana** | +5 Mana/s fora de combate                       | Mente Brilhante     |
| 3   | **Pele Arcana**        | Converte 10% Mana em escudo mágico              | Escudo Mágico       |
| 4   | **Maestria Elemental** | +15% dano mágico                                | Nível 3             |
| 5   | **Foco Mental**        | -10% custo de Mana em todas skills              | Regeneração Arcana  |
| 6   | **Afinidade com Fogo** | +25% dano de fogo, imune a queimadura           | Bola de Fogo        |
| 7   | **Afinidade com Gelo** | +25% dano de gelo, reduz 50% lentidão           | Raio Congelante     |
| 8   | **Canalização Rápida** | -20% tempo de cast                              | Nível 5             |
| 9   | **Escudo Reflexivo**   | Reflete 20% do dano mágico recebido             | Pele Arcana         |
| 10  | **Mana Infinita**      | Regenera 2% Mana máximo a cada kill             | Foco Mental         |
| 11  | **Crítico Arcano**     | 15% chance de crítico mágico (+100% dano)       | Maestria Elemental  |
| 12  | **Presença Mágica**    | Aliados próximos ganham +10% resistência mágica | Nível 7             |
| 13  | **Absorção de Mana**   | Restaura 5% Mana ao matar inimigo               | Mana Infinita       |
| 14  | **Sobrecarga**         | Skills custam +50% Mana mas causam +40% dano    | Crítico Arcano      |
| 15  | **Arquimago**          | +50% Mana máximo, +30% dano mágico              | Sobrecarga + Lvl 11 |

---

## 🏹 ARQUEIRO (Archer) - 30 Skills

### 🎯 Skills Ativas (15)

| #   | Nome                    | Custo    | Cooldown | Descrição                                          | Requer            |
| --- | ----------------------- | -------- | -------- | -------------------------------------------------- | ----------------- |
| 1   | **Tiro Preciso**        | 10 Mana  | 3s       | +30% precisão, 60 dano                             | Nível 1           |
| 2   | **Flecha Explosiva**    | 25 Mana  | 15s      | AoE 5m, 80 dano total                              | Tiro Preciso      |
| 3   | **Recuo Tático**        | 15 Mana  | 12s      | Salta para longe e dispara flecha retardadora      | Nível 2           |
| 4   | **Chuva de Flechas**    | 40 Mana  | 30s      | 12 flechas em área 10m, 25 dano cada               | Flecha Explosiva  |
| 5   | **Tiro Perfurante**     | 20 Mana  | 10s      | Atravessa alvos, atinge até 3 inimigos             | Nível 3           |
| 6   | **Marca do Caçador**    | 30 Mana  | 25s      | Marca alvo, +50% dano nele por 15s                 | Tiro Preciso      |
| 7   | **Flecha Venenosa**     | 35 Mana  | 20s      | Envenena alvo, 5 dano/s por 10s                    | Nível 4           |
| 8   | **Tiro Rápido**         | 25 Mana  | 18s      | Dispara 3 flechas instantâneas no alvo             | Recuo Tático      |
| 9   | **Armadilha Explosiva** | 40 Mana  | 35s      | Coloca armadilha, 150 dano + atordoa 3s            | Nível 5           |
| 10  | **Headshot**            | 50 Mana  | 40s      | Crítico garantido, +200% dano, headshot instakill  | Marca do Caçador  |
| 11  | **Invocar Lobo**        | 60 Mana  | 90s      | Invoca lobo que luta por 40s                       | Nível 7           |
| 12  | **Flecha Gélida**       | 45 Mana  | 30s      | Congela alvo por 4s, 70 dano                       | Flecha Venenosa   |
| 13  | **Metralhadora Elfica** | 70 Mana  | 50s      | Dispara rajada rápida (atinge alvo 5 vezes)        | Tiro Perfurante   |
| 14  | **Passo Sombrio**       | 40 Mana  | 60s      | Fica invisível e reposiciona para flanco           | Nível 9           |
| 15  | **Flecha do Juízo**     | 100 Mana | 120s     | Flecha gigante, 600 dano, stuns área (até 3 alvos) | Headshot + Lvl 12 |

### 🦅 Skills Passivas (15)

| #   | Nome                    | Efeito                                             | Requer                      |
| --- | ----------------------- | -------------------------------------------------- | --------------------------- |
| 1   | **Olho de Águia**       | +20% alcance de visão e ataque                     | Nível 1                     |
| 2   | **Pés Ligeiros**        | +15% Speed                                         | Olho de Águia               |
| 3   | **Precisão Mortal**     | +10% chance de crítico                             | Tiro Preciso                |
| 4   | **Mestre Arqueiro**     | +15% dano com arcos                                | Nível 2                     |
| 5   | **Evasão**              | +15% chance de esquivar ataques corpo-a-corpo      | Recuo Rápido                |
| 6   | **Tiro em Movimento**   | Pode atacar e mover no mesmo turno (menor alcance) | Mestre Arqueiro             |
| 7   | **Postura de Atirador** | +20% dano se não mover no turno                    | Precisão Mortal             |
| 8   | **Alvo Fraco**          | +25% dano contra inimigos abaixo de 50% HP         | Marca do Caçador            |
| 9   | **Emboscada**           | Primeiro ataque de combate +100% dano              | Camuflagem                  |
| 10  | **Mira Estável**        | +10% Precisão, ignora cobertura leve               | Nível 5                     |
| 11  | **Veneno Aprimorado**   | DoTs duram +1 turno                                | Flecha Venenosa             |
| 12  | **Reflexos Felinos**    | +25% Velocidade de Ação (Turno chega mais rápido)  | Evasão                      |
| 13  | **Caçador Nato**        | +30% dano contra criaturas selvagens               | Invocar Lobo                |
| 14  | **Crítico Devastador**  | Críticos causam +150% dano em vez de +100%         | Precisão Mortal             |
| 15  | **Lenda Viva**          | +40% todos stats durante o dia                     | Crítico Devastador + Lvl 11 |

---

## 🗝️ LADINO (Rogue) - 30 Skills

### 🔪 Skills Ativas (15)

| #   | Nome                       | Custo    | Cooldown | Descrição                                               | Requer             |
| --- | -------------------------- | -------- | -------- | ------------------------------------------------------- | ------------------ |
| 1   | **Apunhalar**              | 10 Mana  | 4s       | Ataque rápido pelas costas, +50% dano                   | Nível 1            |
| 2   | **Bomba de Fumaça**        | 20 Mana  | 20s      | Cria nuvem, invisível por 4s                            | Apunhalar          |
| 3   | **Cortar Tendão**          | 15 Mana  | 15s      | Causa dano leve e reduz Speed do alvo em 30%            | Nível 2            |
| 4   | **Envenenar Lâmina**       | 25 Mana  | 25s      | Próximos 5 ataques aplicam veneno (Dano por turno)      | Apunhalar          |
| 5   | **Sombra Mortal**          | 30 Mana  | 30s      | Teleporta atrás do alvo, +100% dano crítico             | Bomba de Fumaça    |
| 6   | **Lâminas Giratórias**     | 40 Mana  | 35s      | Gira rapidamente, 8 ataques em 2s                       | Nível 4            |
| 7   | **Paralisar (Golpe Sujo)** | 35 Mana  | 40s      | Atordoa alvo por 5s                                     | Sombra Mortal      |
| 8   | **Esquiva Sombria**        | 20 Mana  | 15s      | Esquiva garantida do próximo ataque e recupera mana     | Nível 3            |
| 9   | **Golpe Oportunista**      | 45 Mana  | 30s      | Se alvo estiver atordoado/congelado, +300% dano         | Paralisar          |
| 10  | **Ilusão Sombria**         | 60 Mana  | 60s      | Cria clone que dura 15s e causa 50% dano                | Bomba de Fumaça    |
| 11  | **Hemorragia**             | 50 Mana  | 35s      | Causa sangramento severo, 10 dano/s por 10s             | Envenenar Lâmina   |
| 12  | **Execução Furtiva**       | 55 Mana  | 45s      | Invisível + teleporta atrás, instakill inimigo < 30% HP | Sombra Mortal      |
| 13  | **Chuva de Adagas**        | 70 Mana  | 50s      | 20 adagas em cone, 20 dano cada                         | Lâminas Giratórias |
| 14  | **Mestre das Sombras**     | 40 Mana  | 60s      | Invisível por 20s, +50% velocidade                      | Ilusão Sombria     |
| 15  | **Dança da Morte**         | 100 Mana | 120s     | Teleporta entre 5 inimigos, causando dano crítico fatal | Execução + Lvl 12  |

### 🌑 Skills Passivas (15)

| #   | Nome                    | Efeito                                                 | Requer               |
| --- | ----------------------- | ------------------------------------------------------ | -------------------- |
| 1   | **Furtividade**         | -30% chance de ser detectado                           | Nível 1              |
| 2   | **Dedos Ágeis**         | -20% tempo de cooldown em skills                       | Furtividade          |
| 3   | **Ataque pelas Costas** | +50% dano se atacar por trás                           | Apunhalar            |
| 4   | **Mestre em Adagas**    | +20% dano com adagas                                   | Nível 2              |
| 5   | **Pilhagem**            | Chance maior de encontrar itens raros                  | Cortar Tendão        |
| 6   | **Veneno Letal**        | DoTs de veneno causam +40% dano                        | Envenenar Lâmina     |
| 7   | **Esquiva Mortal**      | +20% chance de esquivar                                | Finta                |
| 8   | **Imunidade a Veneno**  | Imune a todos venenos                                  | Veneno Letal         |
| 9   | **Golpe Crítico**       | +25% chance de crítico                                 | Ataque pelas Costas  |
| 10  | **Acrobata**            | +30% Speed                                             | Esquiva Mortal       |
| 11  | **Preparação**          | Reduz todos cooldowns em 30% ao entrar em combate      | Dedos Ágeis          |
| 12  | **Sangue Frio**         | +40% dano contra alvos com HP cheio                    | Golpe Crítico        |
| 13  | **Assassino Nato**      | +50% dano contra alvos solitários                      | Furtividade          |
| 14  | **Sombra Viva**         | Regenera 3% HP/s quando invisível                      | Mestre das Sombras   |
| 15  | **Morte Silenciosa**    | Kills não alertam inimigos próximos, +60% dano crítico | Assassinato + Lvl 11 |

---

## 🌿 DRUIDA (Druid) - 30 Skills

### 🍃 Skills Ativas (15)

| #   | Nome                        | Custo    | Cooldown | Descrição                                             | Requer                |
| --- | --------------------------- | -------- | -------- | ----------------------------------------------------- | --------------------- |
| 1   | **Raízes Enredantes**       | 20 Mana  | 12s      | Prende inimigo por 4s, 40 dano                        | Nível 1               |
| 2   | **Cura da Natureza**        | 30 Mana  | 15s      | Cura alvo em 150 HP                                   | Nível 1               |
| 3   | **Forma de Urso**           | 40 Mana  | 45s      | Transforma em urso por 20s, +100% HP, +50% Attack     | Nível 2               |
| 4   | **Espinhos Venenosos**      | 25 Mana  | 18s      | Cria barreira de espinhos, 60 dano + 3 dano/s por 8s  | Raízes Enredantes     |
| 5   | **Invocar Lobo Espiritual** | 50 Mana  | 60s      | Invoca lobo espiritual que luta por 30s               | Nível 3               |
| 6   | **Regeneração em Área**     | 45 Mana  | 35s      | Cura todos aliados em 12m, 80 HP + 5 HP/s por 10s     | Cura da Natureza      |
| 7   | **Fúria da Natureza**       | 55 Mana  | 40s      | Tempestade 8m, atinge 3-5 inimigos, dano + lentidão   | Nível 4               |
| 8   | **Forma de Treante**        | 30 Mana  | 30s      | Vira árvore, +200% Defesa, imune a Knockback, Lento   | Nível 5               |
| 9   | **Presas Selvagens**        | 35 Mana  | 25s      | Transforma mãos em garras, 5 ataques rápidos, 40 cada | Forma de Urso         |
| 10  | **Renascimento**            | 80 Mana  | 120s     | Revive herói morto com 50% HP (aliado ou próprio)     | Regeneração em Área   |
| 11  | **Enxame de Insetos**       | 60 Mana  | 50s      | Nuvem 10m, cega inimigos, 8 dano/s por 12s            | Espinhos Venenosos    |
| 12  | **Forma de Pantera**        | 45 Mana  | 40s      | +80% velocidade, +50% dano crítico por 15s            | Forma de Coruja       |
| 13  | **Terremoto Natural**       | 70 Mana  | 55s      | Fissura 15m, atordoa 4s, 150 dano                     | Fúria da Natureza     |
| 14  | **Comunhão com Gaia**       | 50 Mana  | 90s      | Imune a controle de grupo por 20s, +30% todos stats   | Nível 8               |
| 15  | **Avatar da Natureza**      | 120 Mana | 150s     | Forma definitiva, +200% HP/Attack, cura 5%/s, 25s     | Renascimento + Lvl 12 |

### 🌳 Skills Passivas (15)

| #   | Nome                      | Efeito                                                 | Requer                   |
| --- | ------------------------- | ------------------------------------------------------ | ------------------------ |
| 1   | **Guardião da Floresta**  | +15% stats em terreno de floresta                      | Nível 1                  |
| 2   | **Vínculo Natural**       | Heals sobre-curam viram escudo temporário (máx 20% HP) | Cura da Natureza         |
| 3   | **Pele de Casca**         | +12% Defense, imune a sangramento                      | Nível 2                  |
| 4   | **Instintos Selvagens**   | +20% chance de esquivar quando HP < 50%                | Forma de Urso            |
| 5   | **Comunhão Animal**       | Animais neutros ajudam em combate                      | Invocar Lobo             |
| 6   | **Regeneração Acelerada** | +3 HP/s fora de combate, +1 HP/s em combate            | Nível 3                  |
| 7   | **Resistência ElementaI** | +30% resistência a fogo, gelo e veneno                 | Pele de Casca            |
| 8   | **Sabedoria Anciã**       | +25% Mana máximo                                       | Nível 4                  |
| 9   | **Metamorfo**             | Formas animais duram +50% tempo                        | Forma de Pantera         |
| 10  | **Espírito da Floresta**  | Aliados próximos regeneram +2 HP/s                     | Regeneração Acelerada    |
| 11  | **Fúria Primordial**      | Em forma animal, +40% Attack                           | Instintos Selvagens      |
| 12  | **Simbiose**              | Heals em aliados curam o druida por 30% do valor       | Vínculo Natural          |
| 13  | **Raízes Profundas**      | Imune a knock-back e empurrões                         | Pele de Casca            |
| 14  | **Mestre Metamorfo**      | Pode trocar entre formas sem cooldown (1x turno)       | Metamorfo                |
| 15  | **Um com a Natureza**     | +50% todos stats em lua cheia, revive 1x/combate       | Avatar Natureza + Lvl 11 |

---

## 🏹 ELFO (Elf) - 30 Skills

### ✨ Skills Ativas (15)

| #   | Nome                      | Custo    | Cooldown | Descrição                                                    | Requer                    |
| --- | ------------------------- | -------- | -------- | ------------------------------------------------------------ | ------------------------- |
| 1   | **Flecha Arcana**         | 15 Mana  | 5s       | Flecha mágica, 70 dano + penetra defesa                      | Nível 1                   |
| 2   | **Passo Élfico**          | 20 Mana  | 15s      | Teleporta 12m, próximos 3 ataques +30% dano                  | Nível 1                   |
| 3   | **Benção da Lua**         | 30 Mana  | 25s      | Aliados próximos ganham +20% Speed por 12s                   | Nível 2                   |
| 4   | **Chuva Estelar**         | 50 Mana  | 35s      | 10 projéteis mágicos, 35 dano cada, rastreiam alvos          | Flecha Arcana             |
| 5   | **Círculo de Proteção**   | 40 Mana  | 30s      | Zona 8m, aliados ganham +40% Defense por 10s                 | Benção da Lua             |
| 6   | **Lâmina Mística**        | 25 Mana  | 20s      | Espada de energia por 15s, +80% Attack mágico                | Nível 3                   |
| 7   | **Vínculo Espiritual**    | 45 Mana  | 40s      | Liga com aliado, compartilha 30% dano/cura por 20s           | Círculo de Proteção       |
| 8   | **Rajada Arcana**         | 35 Mana  | 18s      | 6 flechas instantâneas, 40 dano cada                         | Chuva Estelar             |
| 9   | **Santuário Élfico**      | 60 Mana  | 60s      | Cria zona 10m, cura 10 HP/s, +25% resistência mágica         | Círculo de Proteção       |
| 10  | **Forma Etérea**          | 50 Mana  | 50s      | Intangível a dano físico, atravessa unidades (não paredes)   | Passo Élfico              |
| 11  | **Prisma Celestial**      | 70 Mana  | 45s      | Raio que divide em 5, 100 dano cada                          | Chuva Estelar             |
| 12  | **Ressonância Mágica**    | 55 Mana  | 40s      | Próximas 3 skills custam 0 Mana                              | Nível 7                   |
| 13  | **Tempestade de Lâminas** | 65 Mana  | 50s      | Lâminas giram, atinge até 4 inimigos adjacentes              | Lâmina Mística            |
| 14  | **Ascensão**              | 80 Mana  | 90s      | Levita (imune corpo-a-corpo), Skills Instantâneas (3 turnos) | Forma Etérea              |
| 15  | **Eclipse Total**         | 150 Mana | 180s     | Escurece área 25m, cega todos inimigos por 3 turnos          | Prisma Celestial + Lvl 12 |

### 🌟 Skills Passivas (15)

| #   | Nome                     | Efeito                                                 | Requer                 |
| --- | ------------------------ | ------------------------------------------------------ | ---------------------- |
| 1   | **Graça Élfica**         | +25% Speed                                             | Nível 1                |
| 2   | **Visão Mística**        | Detecta inimigos invisíveis e escondidos               | Nível 1                |
| 3   | **Longevidade**          | +20% HP máximo, imune a doenças                        | Nível 2                |
| 4   | **Afinidade Arcana**     | +20% dano mágico                                       | Flecha Arcana          |
| 5   | **Esquiva Sobrenatural** | +18% chance de esquivar                                | Graça Élfica           |
| 6   | **Sabedoria Ancestral**  | +30% Mana máximo, -10% custo skills                    | Nível 3                |
| 7   | **Precisão Élfica**      | +15% chance de crítico, críticos ignoram 20% defesa    | Rajada Arcana          |
| 8   | **Proteção Lunar**       | Durante a noite, +15% todos stats                      | Benção da Lua          |
| 9   | **Harmonia Mágica**      | Regenera 3% Mana máximo a cada skill usada             | Sabedoria Ancestral    |
| 10  | **Passo Silencioso**     | Não faz barulho, inimigos demoram +3s para detectar    | Esquiva Sobrenatural   |
| 11  | **Resiliência Arcana**   | +35% resistência mágica                                | Longevidade            |
| 12  | **Vínculo de Almas**     | Quando aliado morre próximo, ganha +50% dano por 30s   | Vínculo Espiritual     |
| 13  | **Mestre Arcano**        | Cooldowns de skills -15%                               | Harmonia Mágica        |
| 14  | **Imortalidade Élfica**  | Ao morrer, revive com 1 HP (1x/10min)                  | Longevidade            |
| 15  | **Transcendência**       | +60% Mana, +40% dano mágico, habilidades custam metade | Eclipse Total + Lvl 11 |

---

## Sistema de Desbloqueio

### Como Funcionam os Pontos de Skill

**Fontes de Pontos de Skill:**

1. **Construção de Guildas:**
   - Guilda Nível 1: 3 pontos
   - Guilda Nível 2: 5 pontos
   - Guilda Nível 3: 8 pontos
   - Guilda Nível 4: 12 pontos
   - Guilda Nível 5: 20 pontos

2. **Progressão de Heróis:**
   - 1 ponto a cada 2 níveis (heróis individuais)

3. **Missões Especiais:**
   - Derrotar Boss: 5 pontos
   - Sobreviver Lua de Sangue: 10 pontos
   - Completar Ciclo: 15 pontos

### Árvore de Dependências

```
Skills seguem hierarquia:
- Básicas (Nível 1) → Intermediárias → Avançadas → Ultimate

Exemplo (Guerreiro):
Golpe Poderoso (Lvl 1)
    ↓
Grito de Guerra (Lvl 2)
    ↓
Provocação (Lvl 4)
    ↓
Ameaça Aumentada (Passiva, Lvl 6)
```

### Interface no F2 (ADMIN)

No workspace F2, painel P2 mostra a árvore de skills interativa onde o Majesty pode:

- Ver quais skills estão disponíveis
- Desbloquear novas skills gastando pontos
- Ver pré-requisitos e custos

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

| #   | Nome                   | Custo    | Cooldown | Descrição                                           | Requer                |
| --- | ---------------------- | -------- | -------- | --------------------------------------------------- | --------------------- |
| 1   | **Golpe Sagrado**      | 15 Mana  | 6s       | Ataque sagrado, 70 dano + 30 HP de cura própria     | Nível 1               |
| 2   | **Aura de Proteção**   | 20 Mana  | Passiva  | Aliados em 12m ganham +15% Defense permanente       | Nível 1               |
| 3   | **Cura Divina**        | 30 Mana  | 12s      | Cura aliado em 200 HP                               | Golpe Sagrado         |
| 4   | **Escudo da Fé**       | 25 Mana  | 20s      | Absorve 250 dano por 10s                            | Nível 2               |
| 5   | **Martelo da Justiça** | 35 Mana  | 25s      | Arremessa martelo, 100 dano + atordoa 3s            | Golpe Sagrado         |
| 6   | **Sacrifício Divino**  | 40 Mana  | 30s      | Transfere 50% do dano de aliado para si por 15s     | Cura Divina           |
| 7   | **Julgamento**         | 45 Mana  | 35s      | Marca inimigo maligno, +60% dano contra ele         | Nível 4               |
| 8   | **Ressurreição**       | 80 Mana  | 150s     | Revive aliado com 70% HP (melhor que Druida)        | Cura Divina           |
| 9   | **Consagrar Terreno**  | 50 Mana  | 40s      | Zona 10m, inimigos malignos -30% Attack por 20s     | Nível 5               |
| 10  | **Escudo Refletor**    | 55 Mana  | 45s      | Próximos 5 ataques são refletidos 100%              | Escudo da Fé          |
| 11  | **Ira Divina**         | 60 Mana  | 50s      | +100% Attack por 15s, ganha Mana ao atacar          | Martelo da Justiça    |
| 12  | **Benção em Massa**    | 70 Mana  | 60s      | Todos aliados em 15m ganham +30% stats (3 turnos)   | Aura de Proteção      |
| 13  | **Voto de Vingança**   | 65 Mana  | 55s      | Se aliado morrer próximo, ganha +150% Attack        | Julgamento            |
| 14  | **Santuário**          | 75 Mana  | 90s      | Cria zona 12m, aliados recebem -80% Dano (2 turnos) | Consagrar Terreno     |
| 15  | **Avatar da Luz**      | 150 Mana | 200s     | Forma angelical, cura em área/turno, +200% stats    | Ressurreição + Lvl 12 |

### 🛡️ Skills Passivas (15)

| #   | Nome                        | Efeito                                           | Requer                 |
| --- | --------------------------- | ------------------------------------------------ | ---------------------- |
| 1   | **Fé Inabalável**           | +15% HP máximo, +10% Defense                     | Nível 1                |
| 2   | **Ganho de Devoção**        | Ganha 10 Mana ao ser atingido                    | Nível 1                |
| 3   | **Mártir**                  | +20% Defense quando HP < 30%                     | Fé Inabalável          |
| 4   | **Protetor Nato**           | Aliados próximos recebem -15% dano               | Aura de Proteção       |
| 5   | **Regeneração Sagrada**     | Cura 2% HP máximo a cada 10s                     | Cura Divina            |
| 6   | **Justiça Inabalável**      | Imune a medo e corrupção                         | Nível 3                |
| 7   | **Vingador**                | +30% dano contra mortos-vivos e demônios         | Julgamento             |
| 8   | **Benção Permanente**       | Inicia combate com +20% todos stats por 30s      | Benção em Massa        |
| 9   | **Ressurreição Automática** | Ao morrer, revive com 30% HP (1x/partida)        | Ressurreição           |
| 10  | **Escudo de Aliados**       | Pode bloquear ataques destinados a aliados (5m)  | Protetor Nato          |
| 11  | **Aura Expandida**          | Alcance de auras +50% (18m em vez de 12m)        | Protetor Nato          |
| 12  | **Devotado**                | Curas custam -20% Mana                           | Regeneração Sagrada    |
| 13  | **Bastião**                 | +50% Defense quando não se move por 3s           | Fé Inabalável          |
| 14  | **Purificação**             | Remove todos debuffs de si mesmo a cada 30s      | Justiça Inabalável     |
| 15  | **Santo Guerreiro**         | +40% stats, imune a críticos, aliados +25% moral | Avatar da Luz + Lvl 11 |

---

## 💀 NECROMANTE (Necromancer) - 30 Skills

### 🌑 Skills Ativas (15)

| #   | Nome                     | Custo    | Cooldown | Descrição                                                      | Requer                   |
| --- | ------------------------ | -------- | -------- | -------------------------------------------------------------- | ------------------------ |
| 1   | **Bola Sombria**         | 20 Mana  | 7s       | Projétil negro, 75 dano necrótico, drena 20 HP                 | Nível 1                  |
| 2   | **Reanimar Cadáver**     | 30 Mana  | 10s      | Transforma cadáver em Esqueleto (dura 60s)                     | Nível 1                  |
| 3   | **Drenar Vida**          | 25 Mana  | 12s      | Canaliza por 4s, drena 15 HP/s do alvo                         | Bola Sombria             |
| 4   | **Invocar Zumbi**        | 50 Mana  | 30s      | Invoca Zumbi resistente (dura 90s)                             | Reanimar Cadáver         |
| 5   | **Maldição de Fraqueza** | 30 Mana  | 20s      | Alvo perde -40% Attack por 15s                                 | Nível 3                  |
| 6   | **Explosão Cadavérica**  | 40 Mana  | 25s      | Detona cadáver, 150 dano em 8m                                 | Reanimar Cadáver         |
| 7   | **Escudo Ósseo**         | 35 Mana  | 30s      | Absorve 200 dano, dura até quebrar                             | Nível 4                  |
| 8   | **Peste**                | 45 Mana  | 40s      | Zona 10m, 5 dano/s necrótico, se espalha entre inimigos        | Drenar Vida              |
| 9   | **Invocar Espectro**     | 70 Mana  | 60s      | Invoca fantasma que atravessa paredes (dura 60s)               | Invocar Zumbi            |
| 10  | **Toque da Morte**       | 50 Mana  | 35s      | Instakill inimigo não-elite com HP < 20%                       | Drenar Vida              |
| 11  | **Exército dos Mortos**  | 100 Mana | 120s     | Invoca 3 esqueletos simultaneamente (duram 45s)                | Invocar Espectro         |
| 12  | **Pacto Sombrio**        | 60 Mana  | 50s      | Sacrifica 30% HP, ganha +80% dano mágico por 20s               | Nível 7                  |
| 13  | **Necrose**              | 55 Mana  | 45s      | DoT massivo, 50 dano/s por 10s, mata = vira cadáver utilizável | Peste                    |
| 14  | **Lich Form**            | 80 Mana  | 90s      | Transforma em Lich, imune a físico, +100% dano mágico, 25s     | Pacto Sombrio            |
| 15  | **Apocalipse Sombrio**   | 200 Mana | 180s     | Reanima todos cadáveres (Max 3) como servos permanentes        | Exército Mortos + Lvl 12 |

### 💀 Skills Passivas (15)

| #   | Nome                       | Efeito                                                | Requer                      |
| --- | -------------------------- | ----------------------------------------------------- | --------------------------- |
| 1   | **Colheita Sombria**       | Ganha 25 Mana ao matar inimigo                        | Nível 1                     |
| 2   | **Mana das Sombras**       | +25% Mana máximo                                      | Nível 1                     |
| 3   | **Servos Aprimorados**     | Invocações têm +50% HP e Attack                       | Reanimar Cadáver            |
| 4   | **Maestria Necrótica**     | +20% dano necrótico                                   | Bola Sombria                |
| 5   | **Drenagem Vital**         | Spells de dano curam 15% do dano causado              | Drenar Vida                 |
| 6   | **Resistência Morta-Viva** | +30% resistência a necrótico e veneno                 | Nível 3                     |
| 7   | **Explosões em Cadeia**    | Explosão Cadavérica pode detonar outros cadáveres     | Explosão Cadavérica         |
| 8   | **Longevidade de Servos**  | Invocações duram +50% tempo                           | Servos Aprimorados          |
| 9   | **Essência Infinita**      | Regenera 5 Mana/s                                     | Colheita Sombria            |
| 10  | **Aura Necrótica**         | Inimigos próximos (8m) perdem 2% HP máximo/s          | Maestria Necrótica          |
| 11  | **Pacto Eterno**           | Ao usar Pacto Sombrio, não perde HP mas servos morrem | Pacto Sombrio               |
| 12  | **Comandante dos Mortos**  | Seus servos ganham +30% HP e Attack (Max Servos: 3)   | Exército dos Mortos         |
| 13  | **Imortal**                | Ao morrer, vira Lich por 20s, pode continuar lutando  | Lich Form                   |
| 14  | **Sinergia Sombria**       | Cada servo vivo aumenta dano mágico em +10%           | Comandante dos Mortos       |
| 15  | **Senhor das Trevas**      | +100% Mana, Servos reanimam 1x após morrerem          | Apocalipse Sombrio + Lvl 11 |

---

## 🎵 BARDO (Bard) - 30 Skills

### 🎶 Skills Ativas (15)

| #   | Nome                      | Custo    | Cooldown   | Descrição                                            | Requer                 |
| --- | ------------------------- | -------- | ---------- | ---------------------------------------------------- | ---------------------- |
| 1   | **Melodia de Ataque**     | 15 Mana  | Sustentada | Canta, aliados 15m ganham +20% Attack (Gasta turno)  | Nível 1                |
| 2   | **Acorde Dissonante**     | 20 Mana  | 8s         | Nota musical, 60 dano + confunde por 1 turno         | Nível 1                |
| 3   | **Canção de Cura**        | 25 Mana  | Sustentada | Canta, aliados 15m curam HP a cada turno             | Melodia de Ataque      |
| 4   | **Grito de Guerra**       | 30 Mana  | 30s        | Todos aliados ganham +30% Speed por 3 turnos         | Nível 2                |
| 5   | **Faca Lançada**          | 20 Mana  | 5s         | Arremessa faca, 50 dano, 3 cargas                    | Acorde Dissonante      |
| 6   | **Hino de Resistência**   | 35 Mana  | Sustentada | Canta, aliados 15m ganham +30% Defense               | Canção de Cura         |
| 7   | **Solo Devastador**       | 40 Mana  | 35s        | Toca solo, 15m AoE (até 4 alvos), 120 dano           | Acorde Dissonante      |
| 8   | **Inspirar Aliados**      | 40 Mana  | 40s        | Aliados ganham Turno Extra Imediato (1x combate)     | Grito de Guerra        |
| 9   | **Balada da Regeneração** | 50 Mana  | Sustentada | Canta, aliados 15m regeneram HP a cada turno         | Hino de Resistência    |
| 10  | **Canto de Sirene**       | 45 Mana  | 45s        | Encanta inimigos 12m (3 alvos), perdem próximo turno | Solo Devastador        |
| 11  | **Sinfonia de Grupo**     | 60 Mana  | 60s        | Todos aliados ganham +40% stats (3 turnos)           | Balada da Regeneração  |
| 12  | **Contra-Melodia**        | 50 Mana  | 50s        | Cancela buffs inimigos em 20m                        | Canto de Sirene        |
| 13  | **Épico Heróico**         | 70 Mana  | 90s        | Aliado ignora dano de 2 ataques recebidos            | Sinfonia de Grupo      |
| 14  | **Onda Sônica**           | 80 Mana  | 55s        | Cone 25m, 200 dano + knock-back 10m                  | Solo Devastador        |
| 15  | **Requiem**               | 150 Mana | 180s       | Inimigos -50% stats, Aliados +100% (3 turnos)        | Épico Heróico + Lvl 12 |

### 🎵 Skills Passivas (15)

| #   | Nome                      | Efeito                                                      | Requer              |
| --- | ------------------------- | ----------------------------------------------------------- | ------------------- |
| 1   | **Ganho de Inspiração**   | Ganha 20 Mana ao ver aliado matar inimigo                   | Nível 1             |
| 2   | **Carismático**           | +30% Affinity natural com todos heróis                      | Nível 1             |
| 3   | **Alcance Musical**       | Canções afetam +5m de raio (20m em vez de 15m)              | Melodia de Ataque   |
| 4   | **Multitarefa**           | Pode manter canção e atacar (com penalidade de dano)        | Canção de Cura      |
| 5   | **Maestria Sonic a**      | +15% dano de habilidades sonoras                            | Acorde Dissonante   |
| 6   | **Performer Nato**        | Canções custam -20% Mana                                    | Ganho de Inspiração |
| 7   | **Velocidade de Canto**   | Canções começam a fazer efeito 50% mais rápido              | Multitarefa         |
| 8   | **Inspiração Automática** | Regenera 10 Mana/s quando em grupo                          | Ganho de Inspiração |
| 9   | **Ressonância**           | Canções persistem por 5s após parar de cantar               | Alcance Musical     |
| 10  | **Moral Elevado**         | Aliados próximos nunca fogem                                | Carismático         |
| 11  | **Virtuoso**              | Pode ter 2 canções ativas simultaneamente                   | Ressonância         |
| 12  | **Aura de Carisma**       | Grupo forma 3x mais rápido                                  | Moral Elevado       |
| 13  | **Coro**                  | Cada aliado próximo aumenta efeito de canções em +15%       | Virtuoso            |
| 14  | **Imortalidade Musical**  | Se morrer durante canção, canção continua por 30s           | Nível 9             |
| 15  | **Lenda Viva**            | Presença proporciona +50% XP para aliados, +100% Mana Regen | Requiem + Lvl 11    |

---

## 👊 MONGE (Monk) - 30 Skills

### 🥋 Skills Ativas (15)

| #   | Nome                     | Custo    | Cooldown | Descrição                                                      | Requer                  |
| --- | ------------------------ | -------- | -------- | -------------------------------------------------------------- | ----------------------- |
| 1   | **Golpe de Palma**       | 10 Mana  | 3s       | Soco rápido, 55 dano, gera 1 combo                             | Nível 1                 |
| 2   | **Chute Giratório**      | 15 Mana  | 8s       | Ataque 360°, 70 dano, atinge até 4 inimigos                    | Golpe de Palma          |
| 3   | **Dash do Vento**        | 20 Mana  | 10s      | Teleporta 15m instantly, gera 2 combos                         | Nível 2                 |
| 4   | **Soco do Dragão**       | 25 Mana  | 15s      | 3 socos rápidos (ação única), 40 dano cada, gera 3 combos      | Chute Giratório         |
| 5   | **Meditação**            | 0 Mana   | 30s      | Regenera 50 Mana, gasta turno                                  | Nível 3                 |
| 6   | **Rajada de Mil Punhos** | 30 Mana  | 20s      | Ataque frenético em alvo único, 10 hits                        | Soco do Dragão          |
| 7   | **Toque Paralisante**    | 35 Mana  | 25s      | Paralisa inimigo por 1 turno                                   | Nível 4                 |
| 8   | **Ciclone**              | 40 Mana  | 30s      | Gira rapidamente, atinge todos adjacentes (max 5)              | Chute Giratório         |
| 9   | **Aura de Mana**         | 45 Mana  | 35s      | +50% Velocidade de Ação por 20s, consome 5 combos              | Rajada de Mil Punhos    |
| 10  | **Teletransporte**       | 50 Mana  | 40s      | Teleporta para qualquer local em 30m                           | Dash do Vento           |
| 11  | **Punho da Fúria**       | 60 Mana  | 45s      | Golpe massivo, 300 dano, consome todos combos (+20 dano/combo) | Rajada de Mil Punhos    |
| 12  | **Transcendência**       | 70 Mana  | 90s      | Imune a dano por 8s, atravessa inimigos                        | Meditação               |
| 13  | **Explosão de Mana**     | 80 Mana  | 50s      | Libera Mana, 15m AoE (3-5 alvos), 180 dano + knock-back        | Aura de Mana            |
| 14  | **Forma do Dragão**      | 90 Mana  | 120s     | Espírito, +150% Attack, ignora terreno, 3 turnos               | Punho da Fúria          |
| 15  | **Iluminação**           | 150 Mana | 180s     | Velocidade 2x, +50% Esquiva, Combos infinitos (3 turnos)       | Transcendência + Lvl 12 |

### 🧘 Skills Passivas (15)

| #   | Nome                         | Efeito                                          | Requer                   |
| --- | ---------------------------- | ----------------------------------------------- | ------------------------ |
| 1   | **Regeneração de Mana**      | Regenera 5 Mana/s                               | Nível 1                  |
| 2   | **Mestre em Artes Marciais** | +20% dano corpo-a-corpo                         | Nível 1                  |
| 3   | **Sistema de Combos**        | Cada ataque gera 1 combo, máximo 10 combos      | Golpe de Palma           |
| 4   | **Dano de Combo**            | +5% dano por combo ativo                        | Sistema de Combos        |
| 5   | **Reflexos Sobre-Humanos**   | +25% Speed                                      | Dash do Vento            |
| 6   | **Esquiva de Mestre**        | +20% chance de esquivar                         | Reflexos Sobre-Humanos   |
| 7   | **Contra-Ataque Perfeito**   | 30% chance de contra-atacar ao esquivar         | Esquiva de Mestre        |
| 8   | **Meditação Passiva**        | Regenera 2% HP máximo/s quando fora de combate  | Meditação                |
| 9   | **Mana Infinito**            | Mana máximo +50                                 | Regeneração de Mana      |
| 10  | **Disciplina de Ferro**      | Imune a atordoamentos quando tem 5+ combos      | Sistema de Combos        |
| 11  | **Golpes Críticos**          | +30% chance de crítico                          | Mestre em Artes Marciais |
| 12  | **Velocidade da Luz**        | +40% Velocidade de Ação                         | Reflexos Sobre-Humanos   |
| 13  | **Sem Armas, Sem Problemas** | Sem arma equipada, +50% todos stats             | Mestre em Artes Marciais |
| 14  | **Espírito do Dragão**       | Ao atingir 10 combos, próximo ataque +300% dano | Dano de Combo            |
| 15  | **Mestre Iluminado**         | Quando em Iluminação, combos nunca resetam      | Iluminação + Lvl 11      |

---

### 4.8. Combos de Afinidade (DUAL TECHS & SYNERGY)

Diferente de skills normais, **Combos de Afinidade** (baseados em Chrono Trigger) não consomem recursos e são ativados automaticamente quando dois heróis com **Alta Afinidade (+60)** atacam o mesmo alvo ou estão próximos. Eles proporcionam espetáculo visual (Console UX) e recompensam a socialização.

**Nota Importante:** Embora não consumam Mana, Combos possuem **Alto Delay** (tempo de preparação e recuperação maior), deixando os heróis vulneráveis se errarem ou se o inimigo não morrer.

#### ⚔️ Combos de Guerreiro (Iniciador)

| Parceiro     | Nome do Combo            | Efeito Visual & Mecânico                                                                         |
| :----------- | :----------------------- | :----------------------------------------------------------------------------------------------- |
| **Mago**     | **Espada Flamejante**    | Mago encanta espada do Guerreiro. Dano Físico + Mágico explozivo em área cônica.                 |
| **Ladino**   | **Distração Brutal**     | Ladino joga bomba de fumaça, Guerreiro executa ataque surpresa crítico (Insta-Stun).             |
| **Arqueiro** | **Lançamento Humano**    | Guerreiro "arremessa" Arqueiro para o alto. Arqueiro chove flechas de cima (Dano em Área total). |
| **Paladino** | **Falange Impenetrável** | Ambos erguem escudos. Criam barreira que reflete 100% projéteis por 5s.                          |

#### 🔮 Combos de Mago (Iniciador)

| Parceiro       | Nome do Combo              | Efeito Visual & Mecânico                                                                 |
| :------------- | :------------------------- | :--------------------------------------------------------------------------------------- |
| **Ladino**     | **Sombra Elementar**       | Mago congela o tempo, Ladino desfere 20 cortes em 1 segundo. Dano massivo single-target. |
| **Druida**     | **Tempestade de Espinhos** | Mago lança ciclone de fogo, Druida adiciona espinhos. Tornado de fogo físico/mágico.     |
| **Necromante** | **Paradoxo Vital**         | Drenam vida de todos inimigos e curam todo o grupo instantaneamente (Inversão de Fluxo). |
| **Elfo**       | **Convergência Arcana**    | Dois raios de energia se fundem em um feixe prismático (Dano Puro que ignora defesa).    |

#### 🏹 Combos de Arqueiro (Iniciador)

| Parceiro  | Nome do Combo         | Efeito Visual & Mecânico                                                                      |
| :-------- | :-------------------- | :-------------------------------------------------------------------------------------------- |
| **Elfo**  | **Chuva de Estrelas** | Arqueiro dispara para o céu, Elfo encanta flechas. Caem como meteoros teleguiados.            |
| **Monge** | **Acupuntura Aérea**  | Monge chuta inimigo para o ar, Arqueiro o "prega" na parede com uma flecha gigante (Stun 5s). |
| **Bardo** | **Ritmo da Caçada**   | Bardo toca acelerado, Arqueiro entra em modo "Metralhadora" (Dobro de Speed por 10s).         |

#### 🛡️ Combos de Suporte/Outros

| Parceiro A     | Parceiro B     | Nome do Combo          | Efeito                                                                                        |
| :------------- | :------------- | :--------------------- | :-------------------------------------------------------------------------------------------- |
| **Paladino**   | **Necromante** | **Juízo Final**        | Luz e Trevas colidem. Elimina instantaneamente todos inimigos não-boss (Low HP).              |
| **Druida**     | **Bardo**      | **Sons da Natureza**   | Invoca animais da floresta que dançam e lutam ao ritmo da música (+50% stats pets).           |
| **Monge**      | **Guerreiro**  | **Tremor de Terra**    | Ambos golpeiam o chão. Terremoto global que derruba (knock-down) todos inimigos.              |
| **Ladino**     | **Bardo**      | **Peça Trágica**       | Bardo distrai inimigos com monólogo, Ladino saqueia itens de TODOS os bolsos simultaneamente. |
| **Necromante** | **Guerreiro**  | **Cavaleiro da Morte** | Necromante anima armadura do Guerreiro. Guerreiro luta com +200% Defesa mas perde HP/s.       |

**Regras de Ativação:**

1.  Cooldown interno de 60s por par.
2.  Requer ambos heróis vivos, próximos e sem status negativos (Stun/Silence).
3.  Combos possuem **Alto Delay** (Animação longa e pós-cast delay).
4.  Gera log diferenciado: `⚔️ [COMBO] Kaelen & Lila executaram "Distração Brutal"! (850 Dano)`

---
