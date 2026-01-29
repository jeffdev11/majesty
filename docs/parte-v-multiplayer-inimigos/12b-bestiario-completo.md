# 📜 BESTIÁRIO TÉCNICO COMPLETO - HEROES OF MAJESTY

## 260 Entidades: Especificações de Combate e Visuais

Este documento serve como a base de dados definitiva para a implementação do sistema P.A.I.N. e do motor de combate.

---

## 🧮 1. REGRAS DE ESCALONAMENTO (CAP 10)

O nível (**NMG**) é o multiplicador central de poder. O teto máximo do jogo é o **Level 10**.

| Ciclo  | Nível (Comum) | Nível (Elites/Boss/Heróis) | Crescimento de Stats (Global) |
| :----- | :------------ | :------------------------- | :---------------------------- |
| **C1** | 1 - 2         | 1 - 2                      | Base (1.0x)                   |
| **C2** | 3 - 4         | 3 - 5                      | +50% HP/Atk                   |
| **C3** | 5 - 6         | 6 - 8                      | +150% HP/Atk                  |
| **C4** | 7 - 8         | 9 - **10 (MAX CAP)**       | +300% HP/Atk (Lua de Sangue)  |

### Fórmulas de Cálculo

- **HP Base:** `(NMG * 50) * Multiplicador_HP * (1 + (Ciclo * 0.2))`
- **Dano Base:** `(NMG * 8) * Multiplicador_ATK * (1 + (Ciclo * 0.1))`
- **Defesa:** `(NMG * 2) * Multiplicador_DEF`
- **Velocidade:** `100 / (1 + Bonus_Vel)` (Segundos/Turno)

---

## 🐲 2. OS 10 BOSSES FINAIS (ESPECIFICAÇÕES)

_Multiplicadores: HP x10 | ATK x3 | DEF x2 | Skills: 3_

| Boss          | Atk | Dmg (%) | Ex: Dmg (L1) | Visual Detalhado                                       | Skill 1 (Dano/Efeito/CD)                        | Skill 2 (Dano/Efeito/CD)                     | Skill 3 (Dano/Efeito/CD)                       |
| :------------ | :-- | :------ | :----------- | :----------------------------------------------------- | :---------------------------------------------- | :------------------------------------------- | :--------------------------------------------- |
| **Aeternus**  | Mag | 150%    | **36**       | Dragão carmesim colossal, escamas de obsidiana.        | **Sopro:** 150% Mag AoE + DoT. CD: 5 Turnos          | **Terror:** Stun Global 1 Turno. CD: 7 Turnos          | **Meteoros:** 180% Mag em 3 alvos. CD: 4 Turnos     |
| **Malphas**   | Mag | 120%    | **29**       | Esqueleto gigante em armadura de osso negro flutuante. | **Erguer:** Invoca 4 Esqueletos. CD: 10 Turnos        | **Dreno:** Rouba 10% HP. CD: 6 Turnos             | **Peste:** DoT AoE + -50% cura. CD: 8 Turnos        |
| **Grok**      | Phy | 180%    | **43**       | Gigante de 12m com braços de pedra e peles.            | **Esmagar:** 180% Phys + 1 Turno Stun. CD: 3 Turnos       | **Arremesso:** 120% Phys Retaguarda. CD: 3 Turnos  | **Fúria:** Atk Speed +100% se HP <40%.         |
| **Xandira**   | Phy | 110%    | **26**       | Aranha com torso humanoide pálido e muitos olhos.      | **Casulo:** Stun alvo por 2 Turnos. CD: 5 Turnos           | **Veneno:** DoT 8%/Turno por 2 Turnos. CD: 3 Turnos         | **Prole:** Invoca 8 Aranhas. CD: 7 Turnos           |
| **Hydros**    | Mag | 130%    | **31**       | Serpente marinha com barbatanas de serra azul neon.    | **Tsunami:** Pushback + Stun + 80% Mag. CD: 6 Turnos | **Jato:** 150% Mag em linha. CD: 3 Turnos         | **Vórtice:** Puxa alvos + Fuga Bloq. CD: 10 Turnos   |
| **Cyrus**     | Phy | 140%    | **34**       | Cavaleiro real negro, capa rasgada, espada de fogo.    | **Estocada:** 200% Phys + 50% Crit. CD: 2 Turnos      | **Comando:** Invoca 2 Elites. CD: 8 Turnos        | **Ripostar:** Reflete 30% dano por 2 Turnos. CD: 7 Turnos |
| **Valac**     | Mix | 120%    | **29**       | Demônio de lava com chicote de chamas.                 | **Chicote:** 110% Phys AoE + Queima. CD: 2 Turnos     | **Portal:** Invoca 2 Diabretes. CD: 5 Turnos      | **Corrupção:** -0.2 Ethics (Temp). CD: 13 Turnos     |
| **Yggdrasil** | Mag | 100%    | **24**       | Árvore distorcida com rostos negros no tronco.         | **Raízes:** Enraíza todos + Dreno Mana. CD: 7 Turnos | **Esporos:** Confusão (50% azar) 1 Turno. CD: 5 Turnos | **Fúria:** 140% Mag estacas AoE. CD: 3 Turnos       |
| **Magmator**  | Mag | 140%    | **34**       | Núcleo de cristal flutuante em lava viva.              | **Explosão:** 130% Mag AoE + Knockback. CD: 4 Turnos | **Escudo:** -80% dano recebido (1 Turno). CD: 7 Turnos | **Terremoto:** Stun 1 Turno AoE + 70% Phys. CD: 5 Turnos |
| **Oculus**    | Mag | 160%    | **38**       | Olho central gigante com tentáculos oculares.          | **Raio:** 200% Mag (Ignora 100% Def). CD: 7 Turnos   | **Salto:** Fica invisível por 1 Turno. CD: 5 Turnos    | **Loucura:** Mind = 0 por 3 Turnos. CD: 10 Turnos         |

---

## 🔶 3. MINI BOSSES (50 ELITES)

_Multiplicadores: HP x4 | ATK x2 | DEF x1.5 | Skills: 2_

| ID      | Nome                   | Atk | Dmg (%) | Ex: Dmg (L1) | Visual                                  | Skill 1 (Dano/Efeito/CD)         | Skill 2 (Dano/Efeito/CD)         |
| :------ | :--------------------- | :-- | :------ | :----------- | :-------------------------------------- | :------------------------------- | :------------------------------- |
| **M1**  | **Headless Knight**    | Phy | 120%    | **19**       | Cavaleiro espectral com abóbora.        | Carga: 130% + Knockback (3 Turnos)     | Arremesso: 100% AoE (4 Turnos)        |
| **M2**  | **Lesser Lich**        | Mag | 110%    | **18**       | Esqueleto com mantos e cajado.          | Seta Gelo: 110% + Slow (2 Turnos)      | Barreira: Escudo 20% HP (7 Turnos)    |
| **M3**  | **Elder Banshee**      | Mag | 90%     | **14**       | Espectro pálido com mandíbula caída.    | Grito: Silence 1 Turno (5 Turnos)          | Pavor: Fear 1 Turno (6 Turnos)             |
| **M4**  | **Elite Wraith**       | Mag | 100%    | **16**       | Sombra translúcida gigante.             | Dreno: 15% HP Dreno (4 Turnos)        | Invisível: 1 Turno (8 Turnos)              |
| **M5**  | **Ghoul King**         | Phy | 130%    | **21**       | Zumbi enorme com garras roxas.          | Mordida: 120% + Infecção (3 Turnos)    | Frenesi: Atk Speed +50% (5 Turnos)    |
| **M6**  | **Pharaoh Mummy**      | Mag | 110%    | **18**       | Enrolada em ouro e faixas negras.       | Maldição: -30% Stats (7 Turnos)       | Prisão: Stun 1 Turno (4 Turnos)            |
| **M7**  | **Skeleton General**   | Phy | 140%    | **22**       | Armadura de placas completa.            | Comando: Buff Atk Aliados (5 Turnos)  | Golpe: 140% + Quebra Def (3 Turnos)   |
| **M8**  | **Noble Vampire**      | Mix | 120%    | **19**       | Nobre pálido em traje de gala.          | Forma Morcego: Dodge +80% (2 Turnos)   | Sedução: Alvo não ataca (4 Turnos)    |
| **M9**  | **Ravenous Shadow**    | Mag | 110%    | **18**       | Nuvem negra com dentes visíveis.        | Roubo Mana: 30 Mana (3 Turnos)        | Salto Sombrio: Blink (3 Turnos)        |
| **M10** | **Giant Zombie**       | Phy | 130%    | **21**       | Frankenstein de retalhos humanos.       | Arremesso: Lança cadáver (3 Turnos)   | Pancada: 140% + Stun (4 Turnos)       |
| **M11** | **Silver Alpha Wolf**  | Phy | 125%    | **20**       | Lobo enorme de pelagem branca.          | Uivo: Buff Atk Aliados (5 Turnos)     | Salto: 130% em longe (2 Turnos)        |
| **M12** | **Corrupted Bear**     | Phy | 135%    | **22**       | Urso com cristais roxos saindo.         | Abraço: Stun 1 Turno no alvo (6 Turnos)    | Rugido: -20% Atk Medo (4 Turnos)      |
| **M13** | **Elder Treant**       | Phy | 115%    | **18**       | Árvore com pernas e braços longos.      | Rocha: 140% AoE (3 Turnos)            | Raiz: Stun 1 Turno (5 Turnos)              |
| **M14** | **Shadow Panther**     | Phy | 130%    | **21**       | Pantera com fumaça negra.               | Furtivo: Hit 100% Crit (7 Turnos)     | Corte: Sangramento 5%/Turno (3 Turnos)     |
| **M15** | **Iron Boar**          | Phy | 140%    | **22**       | Javali com placas de metal crescidas.   | Investida: 160% + Stun (4 Turnos)     | Casco: Reflete 20% Dano Phys.    |
| **M16** | **Empress Serpent**    | Mag | 120%    | **19**       | Cobra gigante com crista dourada.       | Olhar: Petrificação 1 Turno (7 Turnos)     | Névoa: Veneno 4%/Turno AoE (3 Turnos)     |
| **M17** | **Storm Griffin**      | Mix | 130%    | **21**       | Meio águia, meio leão, penas elétricas. | Mergulho: 140% + Choque (3 Turnos)    | Choque: 100% Mag AoE (5 Turnos)       |
| **M18** | **Broodmother**        | Phy | 120%    | **19**       | Aranha que "tece" armadilhas.           | Armadilha: Imobiliza 2 Turnos (4 Turnos)    | Picada: 180% Dano Único (3 Turnos)     |
| **M19** | **Sand Worm**          | Phy | 140%    | **22**       | Verme segmentado gigante.               | Buraco: Puxa alvo pro solo (5 Turnos) | Cuspe: 100% Mag Ácido (3 Turnos)       |
| **M20** | **Carnivorous Plant**  | Mag | 110%    | **18**       | Boca gigante floral com dentes.         | Chicote: Puxa alvo (3 Turnos)          | Esporos: Sono 1 Turno (7 Turnos)           |
| **M21** | **Obsidian Golem**     | Phy | 150%    | **24**       | Gigante de rocha negra brilhante.       | Pulso: Afasta alvos (4 Turnos)        | Regenerar: +10% HP (10 Turnos)         |
| **M22** | **Infernal Elemental** | Mag | 130%    | **21**       | Fogo azulado com forma humana.          | Aura: 2%/Turno Dano em todos.        | Labareda: 120% Mag AoE (3 Turnos)     |
| **M23** | **Frost Spirit**       | Mag | 110%    | **18**       | Vulto de gelo translúcido.              | Prisão: Alvo congelado 1 Turno (5 Turnos)  | Nevasca: Slow Global (8 Turnos)       |
| **M24** | **Corrupted Djinn**    | Mag | 125%    | **20**       | Gênio em névoa roxa.                    | Desejo: Debuff aleatório (5 Turnos)   | Choque: 140% Mag (3 Turnos)            |
| **M25** | **Runic Sentinel**     | Mix | 135%    | **22**       | Estátua com runas neon azuis.           | Raio: 150% Mag (3 Turnos)             | Barreira: Imune a Mag por 2 Turnos.    |
| **M26** | **Storm Wraith**       | Mag | 120%    | **19**       | Nuvem de trovão em movimento.           | Cadeia: Relâmpago 3 alvos (4 Turnos)  | Voo: Speed +50% (3 Turnos)            |
| **M27** | **Gargoyle Patriarch** | Phy | 140%    | **22**       | Estátua alada gigante.                  | Forma Pedra: Cura 15% (8 Turnos)      | Investida: 130% + Stun (3 Turnos)     |
| **M28** | **Light Archon**       | Mag | 145%    | **23**       | Entidade de pura luz amarela.           | Clarão: Stun 1 Turno AoE (6 Turnos)        | Punição: 160% Mag (3 Turnos)          |
| **M29** | **Flesh Horror**       | Phy | 130%    | **21**       | Massa amorfa de braços e bocas.         | Regeneração: 2% HP/s.            | Multi-Atk: Ataca 2x (3 Turnos)         |
| **M30** | **Siege Automaton**    | Phy | 160%    | **26**       | Robô de engrenagens e vapor.            | Canhão: 180% Phys fura Def.      | Pisotear: 100% Phys AoE (3 Turnos)    |
| **M31** | **Orc Chieftain**      | Phy | 150%    | **24**       | Orc em armadura de espinhos.            | Grito: +20% Atk Aliados (5 Turnos)    | Salto: 140% + Stun (3 Turnos)         |
| **M32** | **Goblin Shaman**      | Mag | 100%    | **16**       | Máscara de crânio de dragão.            | Totem: Cura Aliados 5%/Turno (7 Turnos)   | Sapo: Transforma em sapo 1 Turno.     |
| **M33** | **Mercenary Captain**  | Phy | 130%    | **21**       | Armadura completa, espada longa.        | Bomba: Fumaça (Dodge 50%) (5 Turnos)  | Tiro: 120% Sangramento (3 Turnos)      |
| **M34** | **Archmage**           | Mag | 140%    | **22**       | Manto roxo, flutuando.                  | Meteoro: 160% Mag AoE (5 Turnos)      | Imagem: Cria 2 clones fak.       |
| **M35** | **Grand Assassin**     | Phy | 135%    | **22**       | Máscara ninja, dagas verdes.            | Veneno: DoT 10%/Turno (3 Turnos)          | Sumiço: Invisível 1 Turno (7 Turnos)       |
| **M36** | **High Inquisitor**    | Mag | 130%    | **21**       | Veste branca e prata.                   | Fogo Sagrado: 130% Mag (3 Turnos)      | Martelo: Stun 1 Turno (5 Turnos)           |
| **M37** | **Rogue Lord**         | Phy | 125%    | **20**       | Capa elegante, chapéu com pena.         | Roubo: Rouba Poção/Item (7 Turnos)    | Golpe Baixo: Stun 1 Turno (3 Turnos)       |
| **M38** | **Blood Barbarian**    | Phy | 155%    | **25**       | Sem camisa, machado gigante duplo.      | Fúria: Atk +50% (5 Turnos)            | Rodopio: 110% AoE Phys (3 Turnos)      |
| **M39** | **Chaos Cultist**      | Mag | 110%    | **18**       | Túnica negra com olhos pintados.        | Portal: Invoca 2 Diabretes (7 Turnos) | Sacrifício: Dmg em si = AoE Mag. |
| **M40** | **Black Knight**       | Phy | 145%    | **23**       | Armadura negra, olhos vermelhos.        | Puxão: Traz alvo pro melee (3 Turnos) | Aura: -20% Def Aliados.          |
| **M41** | **Succubus Queen**     | Mag | 120%    | **19**       | Asas de morcego, vestes pretas.         | Charme: Alvo ataca aliado (7 Turnos)  | Chicote: 100% + Stun 1 Turno (3 Turnos)     |
| **M42** | **Lesser Beholder**    | Mag | 130%    | **21**       | Olho gigante flutuante.                 | Paralisia: Raio Stun 1 Turno (5 Turnos)    | Debuff: -50% Atk Speed (4 Turnos)     |
| **M43** | **Minotaur**           | Phy | 150%    | **24**       | Homem-touro com machado.                | Carga: 150% + Knockback (3 Turnos)    | Parede: Separa grupo (7 Turnos)       |
| **M44** | **Elder Medusa**       | Mag | 120%    | **19**       | Cabelos de cobra, calda serpente.       | Pedra: Petro (Stun 2 Turnos) (10 Turnos)     | Sopro: 110% Mag Veneno (3 Turnos)     |
| **M45** | **Young Kraken**       | Phy | 140%    | **22**       | Tentacles saindo do chão/água.          | Tinta: Cega (Miss 80%) (5 Turnos)     | Mult: 4 atks de 40% (3 Turnos)        |
| **M46** | **Siren Songstress**   | Mag | 115%    | **18**       | Parte peixe, parte humana bela.         | Canto: Sono 2 Turnos (8 Turnos)             | Onda: 120% Mag AoE (3 Turnos)         |
| **M47** | **Bridge Troll**       | Phy | 140%    | **22**       | Troll de 4m cor de pedra.               | Regeneração: 5% HP/s.            | Rocha: 140% Phys (3 Turnos)           |
| **M48** | **Master Imp**         | Mag | 100%    | **16**       | Diabrete com tocha e poções.            | Piro: Fogo em todos (4 Turnos)        | Multi: Se divide em 3 (10 Turnos).     |
| **M49** | **Gorgon**             | Phy | 135%    | **22**       | Guerreira com escudo de serpente.       | Olhar: -50% Speed (3 Turnos)          | Cauda: 130% Phys Stun (4 Turnos)      |
| **M50** | **Royal Chimera**      | Mix | 140%    | **22**       | Leão, Bode e Cobra em um corpo.         | Sopro: 140% Mag Fogo (4 Turnos)       | Mordida: 120% Phys Veneno.       |

---

## 🟢 4. MONSTROS COMUNS (200 UNIDADES)

_Multiplicadores: HP x1 | ATK x1 | DEF x1 | Skills: 1 (Máx)_

### Goblins & Orcs (20)

| ID      | Nome              | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual                       | Skill (Dmg/Ef/CD)                 |
| :------ | :---------------- | :--- | :------ | :----------- | :--------------------------- | :-------------------------------- |
| **C1**  | Goblin Thief      | Phys | 90%     | **7**        | Verde, adaga ferrugem.       | Roubo: 5-10g. CD: 3 Turnos.            |
| **C2**  | Goblin Archer     | Phys | 80%     | **6**        | Arco de osso, capuz.         | Fogo: 5% HP DoT 1 Turno. CD: 3 Turnos.       |
| **C3**  | Goblin Shaman     | Mag  | 100%    | **8**        | Máscara de osso, penas.      | Raio: 90% Mag. CD: 2 Turnos.            |
| **C4**  | Goblin Warrior    | Phys | 110%    | **9**        | Escudo de tábua, clava.      | Bloqueio: -30% Dmg (1 Turno).          |
| **C5**  | Goblin Wolf Rider | Phys | 115%    | **9**        | Montado em lobo cinza.       | Carga: 110% Phys. CD: 2 Turnos.         |
| **C6**  | Goblin Assassin   | Phys | 105%    | **8**        | Adaga dupla, negro.          | Backstab: 150% Phys (4 Turnos).        |
| **C7**  | Orc Brute         | Phys | 125%    | **10**       | Verde escuro, pele grossa.   | Pancada: 120% + Stun 1 Turno. CD: 3 Turnos. |
| **C8**  | Orc Axeman        | Phys | 110%    | **9**        | Lança machados curtos.       | Atirar: 110% Phys. CD: 2 Turnos.        |
| **C9**  | Orc Sorcerer      | Mag  | 110%    | **9**        | Tatuagens tribais vermelhas. | Blood: +20% Atk Aliado (5 Turnos).     |
| **C10** | Orc Lancer        | Phys | 115%    | **9**        | Lança longa de bronze.       | Estocada: 115% Phys. CD: 2 Turnos.      |
| **C11** | Hobgoblin         | Phys | 120%    | **10**       | Mais alto, couro.            | Tática: +10% Def Aliados.         |
| **C12** | Orc Leader        | Phys | 110%    | **9**        | Capacete com crina.          | Grito: +10% Atk Speed (7 Turnos).      |
| **C13** | Orc Berserker     | Phys | 130%    | **10**       | Espadas duplas.              | Fúria: Atk +40% (HP <30%).        |
| **C14** | Goblin Tinker     | Phys | 90%     | **7**        | Mochila com frascos.         | Bomba: 80% Mag AoE (3 Turnos).         |
| **C15** | Goblin Drummer    | Mag  | 70%     | **6**        | Tambor gigante.              | Marcha: Speed +20% Aliados.       |
| **C16** | Orc Slave         | Phys | 100%    | **8**        | Chicote longo.               | Chicote: 90% + Sangue (3 Turnos).       |
| **C17** | Heavy Orc         | Phys | 120%    | **10**       | Ferro batido.                | Muralha: Def +40% (2 Turnos).           |
| **C18** | Goblin Trapper    | Phys | 80%     | **6**        | Segura rede.                 | Rede: Enraíza 1 Turno (5 Turnos).           |
| **C19** | Orc Scout         | Phys | 95%     | **8**        | Tapa olho, luneta.           | Mark: Alvo +10% Dmg.              |
| **C20** | Half-Orc          | Phys | 110%    | **9**        | Mistura humano.              | Saque: Dobra ouro loot.           |

### Mortos-Vivos (30)

| ID      | Nome              | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual               | Skill (Dmg/Ef/CD)            |
| :------ | :---------------- | :--- | :------ | :----------- | :------------------- | :--------------------------- |
| **C21** | Basic Skeleton    | Phys | 105%    | **8**        | Ossos.               | Golpe: 105% Phys (1 Turno).       |
| **C22** | Skeleton Archer   | Phys | 90%     | **7**        | Aljava nas costelas. | Salva: 2x 60% Phys (2 Turnos).     |
| **C23** | Skeleton Mage     | Mag  | 110%    | **9**        | Mastro roxo.         | Seta: 100% Mag (2 Turnos).         |
| **C24** | Skeleton Guard    | Phys | 100%    | **8**        | Escudo podre.        | Bloqueio: Def +20% (3 Turnos).     |
| **C25** | Armored Skeleton  | Phys | 105%    | **8**        | Peitoral velho.      | Passivo: Resist Phys +10%.   |
| **C26** | Starving Zombie   | Phys | 115%    | **9**        | Sem um braço.        | Mordida: Veneno 2%/Turno (3 Turnos).  |
| **C27** | Slow Zombie       | Phys | 120%    | **10**       | Camponês.            | Passivo: +50% HP.            |
| **C28** | Bloated Zombie    | Mag  | 130%    | **10**       | Barriga cinza.       | Explode: 150% AoE (Morte).   |
| **C29** | Fast Ghoul        | Phys | 125%    | **10**       | 4 patas.             | Garra: 110% Atk Speed +.     |
| **C30** | Corrupted Ghoul   | Phys | 115%    | **9**        | Olhos amarelos.      | Salto: 120% Dmg (3 Turnos).        |
| **C31** | Lesser Wraith     | Mag  | 100%    | **8**        | Fumaça cinza.        | Dreno: 10 Mana (5 Turnos).        |
| **C32** | Apparition        | Mag  | 110%    | **9**        | Véu branco.          | Passivo: Esquiva Phys +20%.  |
| **C33** | Shadow            | Mag  | 120%    | **10**       | Silhueta negra.      | Invisível: 1 Turno (7 Turnos).         |
| **C34** | Dried Mummy       | Phys | 110%    | **9**        | Faixas amarelas.     | Fragil: Alvo -20% Def (4 Turnos). |
| **C35** | Headless Skeleton | Phys | 120%    | **10**       | Carrega crânio.      | Arremesso: 100% Phys (3 Turnos).  |
| **C36** | Floating Skull    | Mag  | 130%    | **10**       | Aura azul.           | Raio: 120% Mag (3 Turnos).         |
| **C37** | Corpse Remnants   | Phys | 80%     | **6**        | Pilha de ossos.      | Reforma: Cura 5% HP (7 Turnos).   |
| **C38** | Skeleton Knight   | Phys | 125%    | **10**       | Espada quebrada.     | Estocada: 130% Phys (3 Turnos).   |
| **C39** | Lesser Hellhound  | Phys | 115%    | **9**        | Olhos fogo.          | Mordida: Queima 1 Turno (2 Turnos).     |
| **C40** | Giant Skeleton    | Phys | 140%    | **11**       | 3 metros.            | Pisotear: 100% AoE (4 Turnos).    |
| **C41** | Wandering Spirit  | Mag  | 100%    | **8**        | Rosto agonia.        | Grito: -15% Atk (5 Turnos).       |
| **C42** | Runner Zombie     | Phys | 120%    | **10**       | Atleta morto.        | Rapidez: Speed +30%.         |
| **C43** | Scarecrow         | Mag  | 90%     | **7**        | Palha/Sacos.         | Medo: Fuga 1 Turno (7 Turnos).         |
| **C44** | Possessed Doll    | Mag  | 110%    | **9**        | Madeira/Pano.        | Alfinete: 110% Mag (3 Turnos).     |
| **C45** | Hollow Armor      | Phys | 130%    | **10**       | Sem corpo.           | Passivo: Imune a Veneno.     |
| **C46** | Explosive Corpse  | Mag  | 200%    | **16**       | Com bomba.           | Explode: 200% Mag (Morte).   |
| **C47** | Ravenous Shadow   | Mag  | 120%    | **10**       | Boca enorme.         | Dreno: 5% Dmg = Heal.        |
| **C48** | Ghost Child       | Mag  | 80%     | **6**        | Criança chora.       | Choro: -30% Speed (5 Turnos).     |
| **C49** | Tomb Warrior      | Phys | 135%    | **11**       | Runas antigas.       | Golpe: 140% Phys (4 Turnos).      |
| **C50** | Necro Mage        | Mag  | 120%    | **10**       | Cajado fêmur.        | Sombra: 130% Mag (3 Turnos).       |

### Bestas & Animais (30)

| ID      | Nome                | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual                  | Skill (Dmg/Ef/CD)                  |
| :------ | :------------------ | :--- | :------ | :----------- | :---------------------- | :--------------------------------- |
| **C51** | Forest Wolf         | Phys | 110%    | **9**        | Marrom.                 | Mordida: 110% Phys (2 Turnos).           |
| **C52** | Grey Wolf           | Phys | 100%    | **8**        | Cinza espessa.          | Uivo: +10% Atk matilha (5 Turnos).      |
| **C53** | Starving Wolf       | Phys | 120%    | **10**       | Magro.                  | Frenesi: Atk Speed +20% (<50% HP). |
| **C54** | White Wolf          | Phys | 115%    | **9**        | Albino.                 | Salto: 120% Phys (3 Turnos).             |
| **C55** | Brown Bear          | Phys | 130%    | **10**       | Grande.                 | Patada: 130% + Knockback (3 Turnos).    |
| **C56** | Black Bear          | Phys | 115%    | **9**        | Menor.                  | Garras: 110% Phys (2 Turnos).            |
| **C57** | Polar Bear          | Phys | 125%    | **10**       | Branco.                 | Abraço: Stun 1 Turno (5 Turnos).             |
| **C58** | Wild Boar           | Phys | 125%    | **10**       | Presas.                 | Investida: 125% + Stun 1 Turno (3 Turnos).   |
| **C59** | Frost Boar          | Phys | 115%    | **9**        | Cristais.               | Frio: -20% Speed (3 Turnos).             |
| **C60** | Saber-toothed Tiger | Phys | 135%    | **11**       | Caninos.                | Corte: Sangue 3%/Turno (2 Turnos).           |
| **C61** | Snow Leopard        | Phys | 130%    | **10**       | Manchas cinza.          | Bote: 140% Phys (Início).          |
| **C62** | Giant Eagle         | Phys | 120%    | **10**       | 5 metros.               | Rasante: 120% + Pushback (3 Turnos).     |
| **C63** | Hunting Falcon      | Phys | 90%     | **7**        | Rápido.                 | Cego: Miss +20% (3 Turnos).             |
| **C64** | Shadow Owl          | Mag  | 100%    | **8**        | Penas que absorvem luz. | Confundir: Erra prox atk (5 Turnos).    |
| **C65** | Blood Bat           | Phys | 85%     | **7**        | Orelhas G.              | Drito: Drena 5 HP (2 Turnos).            |
| **C66** | Giant Bat           | Phys | 110%    | **9**        | 2 metros.               | Eco: Revela invisíveis (7 Turnos).      |
| **C67** | Sewer Rat           | Phys | 80%     | **6**        | Sujo.                   | Peste: Stats -10% (5 Turnos).           |
| **C68** | Plague Rat          | Phys | 95%     | **8**        | Olhos Verm.             | Infecção: DoT 2%/Turno (3 Turnos).          |
| **C69** | Venom Snake         | Phys | 100%    | **8**        | Verde.                  | Veneno: DoT 4%/Turno (3 Turnos).             |
| **C70** | Constrictor Snake   | Phys | 120%    | **10**       | Grossa.                 | Constringir: Stun 1 Turno (7 Turnos).        |
| **C71** | Crocodile           | Phys | 140%    | **11**       | Verde musgo.            | Mordida: 150% Phys (4 Turnos).          |
| **C72** | Common Spider       | Phys | 90%     | **7**        | Oito olhos.             | Teia: Slow 30% (3 Turnos).              |
| **C73** | Weaver Spider       | Phys | 105%    | **8**        | Listrada.               | Prisão: Imobiliza 1 Turno (6 Turnos).        |
| **C74** | Fire Fox            | Mag  | 110%    | **9**        | Faíscas.                | Ignição: 80% Mag + Queima (3 Turnos).   |
| **C75** | Tundra Elk          | Phys | 110%    | **9**        | Chifres gelo.           | Chifrada: 130% Phys (3 Turnos).         |
| **C76** | Fire Boar           | Phys | 120%    | **10**       | Presas incan.           | Calor: 90% Phys + Queima (3 Turnos).     |
| **C77** | Lightning Wolf      | Mag  | 115%    | **9**        | Estática.               | Choque: 100% Mag (2 Turnos).             |
| **C78** | Runic Bear          | Mag  | 120%    | **10**       | Runas.                  | Escudo: Absorve 50 (7 Turnos).          |
| **C79** | Shadow Spider       | Mag  | 100%    | **8**        | Translúcida.            | Sombra: Invisível 1 Turno (5 Turnos).        |
| **C80** | Stone Boar          | Phys | 130%    | **10**       | Granito.                | Resist: +30% Phys Def (5 Turnos).       |

### Insetos (20)

| ID       | Nome                    | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual        | Skill (Dmg/Ef/CD)           |
| :------- | :---------------------- | :--- | :------ | :----------- | :------------ | :-------------------------- |
| **C81**  | Giant Wasp              | Phys | 100%    | **8**        | Neon, ferrão. | Ferrada: Veneno 3%/Turno (2 Turnos).  |
| **C82**  | Soldier Bee             | Phys | 90%     | **7**        | Zumbido.      | Sacrifício: 200% Morre.     |
| **C83**  | Horned Beetle           | Phys | 115%    | **9**        | Casco preto.  | Carga: 130% + Knock (100).  |
| **C84**  | Bombardier Beetle       | Mag  | 105%    | **8**        | Laranja.      | Explode: 120% AoE (Morte).  |
| **C85**  | Giant Centipede         | Phys | 110%    | **9**        | Vermelha.     | Enroscar: Stun 1 Turno (3 Turnos).     |
| **C86**  | Yellow Scorpion         | Phys | 95%     | **8**        | Pequeno.      | Paralisia: Stun 1 Turno (5 Turnos).   |
| **C87**  | Black Scorpion          | Phys | 120%    | **10**       | Pinças.       | Esmagar: 140% Phys (3 Turnos).   |
| **C88**  | Mantis                  | Phys | 130%    | **10**       | Foice.        | Corte: 150% Phys (2 Turnos).      |
| **C89**  | Silk Caterpillar        | Mag  | 80%     | **6**        | Felpuda.      | Casulo: Imobiliza 1 Turno (7 Turnos). |
| **C90**  | Hallucination Butterfly | Mag  | 85%     | **7**        | Colorida.     | Pó: Confusão 1 Turno AoE (6 Turnos).  |
| **C91**  | Jumping Spider          | Phys | 115%    | **9**        | Pula alto.    | Salto: 130% Atk (4 Turnos).      |
| **C92**  | Devouring Termite       | Phys | 100%    | **8**        | Mandíbulas.   | Corrosão: -10 Def (5 Turnos).    |
| **C93**  | Sewer Roach             | Phys | 105%    | **8**        | Marrom.       | Casco: Imune a Crit.        |
| **C94**  | Thunder Cricket         | Mag  | 90%     | **7**        | Elétrico.     | Chirp: Silêncio 1 Turno (5 Turnos).   |
| **C95**  | Magical Firefly         | Mag  | 80%     | **6**        | Luz Azul.     | Cego: Miss +30% (4 Turnos).      |
| **C96**  | Soldier Ant             | Phys | 110%    | **9**        | Vermelha.     | Mordida: 110% (2 Turnos).         |
| **C97**  | Acid Ant                | Phys | 105%    | **8**        | Verde.        | Ácido: DoT 2%/Turno (3 Turnos).       |
| **C98**  | Crystal Spider          | Mag  | 115%    | **9**        | Quartzo.      | Raio: 110% Mag (3 Turnos).       |
| **C99**  | Jewel Beetle            | Mag  | 95%     | **8**        | Brilhante.    | Reflexo: 10% Refletido.     |
| **C100** | Plague Fly              | Mag  | 85%     | **7**        | Vermelho.     | Doença: -10% Speed (5 Turnos).   |

### Elementais (20)

| ID       | Nome                | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual        | Skill (Dmg/Ef/CD)           |
| :------- | :------------------ | :--- | :------ | :----------- | :------------ | :-------------------------- |
| **C101** | Will-o'-the-Wisp    | Mag  | 90%     | **7**        | Esfera azul.  | Choque: 90% (2 Turnos).           |
| **C102** | Fire Elemental      | Mag  | 115%    | **9**        | Humano chama. | Queima: 5%/Turno (3 Turnos).          |
| **C103** | Magma Hand          | Phys | 120%    | **10**       | Pedra/Lava.   | Calor: 120% + Queima (3 Turnos). |
| **C104** | Ice Elemental       | Mag  | 105%    | **8**        | Escultura.    | Congelar: Slow 50% (4 Turnos).   |
| **C105** | Ice Shard           | Phys | 110%    | **9**        | Estalactite.  | Estocada: 130% (2 Turnos).        |
| **C106** | Clay Golem          | Phys | 125%    | **10**       | Massa barro.  | Regen: 3% HP/s (7 Turnos).       |
| **C107** | Sand Golem          | Phys | 115%    | **9**        | Redemoinho.   | Cego: Visão Baixa (5 Turnos).    |
| **C108** | Water Elemental     | Mag  | 100%    | **8**        | Bolha.        | Prisão: Stun 1 Turno (6 Turnos).      |
| **C109** | Breeze Spirit       | Mag  | 85%     | **7**        | Ar visível.   | Vento: Empurra (3 Turnos).       |
| **C110** | Lightning Elemental | Mag  | 110%    | **9**        | Faíscas.      | Cadeia: 2 alvos (3 Turnos).      |
| **C111** | Stone Gargoyle      | Phys | 125%    | **10**       | Cinza.        | Queda: 140% AoE (5 Turnos).      |
| **C112** | Ruby Gargoyle       | Mag  | 120%    | **10**       | Vermelho.     | Raio: 150% (4 Turnos).           |
| **C113** | Mud Elemental       | Phys | 115%    | **9**        | Barro preto.  | Lento: -40% Speed (3 Turnos).    |
| **C114** | Steam Elemental     | Mag  | 100%    | **8**        | Nuvem branca. | Queima: 100% AoE (5 Turnos).     |
| **C115** | Iron Golem          | Phys | 140%    | **11**       | Blocos.       | Resist: Imune Sangue.       |
| **C116** | Earth Spirit        | Phys | 120%    | **10**       | Pedras flu.   | Terremoto: Stun 1 Turno (7 Turnos).   |
| **C117** | Ash Elemental       | Mag  | 100%    | **8**        | Fumaça.       | Sufocar: Silêncio 1 Turno (5 Turnos). |
| **C118** | Plant Elemental     | Mag  | 95%     | **8**        | Raízes.       | Laço: Imobiliza (4 Turnos).      |
| **C119** | Glass Golem         | Phys | 120%    | **10**       | Afiado.       | Sangue: 5%/Turno (3 Turnos).          |
| **C120** | Lesser Archon       | Mag  | 130%    | **10**       | Luz pura.     | Banir: Remove Buff (10 Turnos).   |

### Demônios (20)

| ID       | Nome             | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual        | Skill (Dmg/Ef/CD)         |
| :------- | :--------------- | :--- | :------ | :----------- | :------------ | :------------------------ |
| **C121** | Imp              | Mag  | 100%    | **8**        | Vermelho.     | Fogo: 100% (2 Turnos).          |
| **C122** | Shadow Demon     | Mag  | 110%    | **9**        | Negro.        | Sombra: Invisível (7 Turnos).  |
| **C123** | Hellhound        | Phys | 115%    | **9**        | Chama olhos.  | Mordida: Queima (3 Turnos).     |
| **C124** | Lesser Succubus  | Mag  | 95%     | **8**        | Sedução.      | Charme: Não ataca (8 Turnos).  |
| **C125** | Winged Demon     | Phys | 110%    | **9**        | Carnudo.      | Rasante: Ataca longe.     |
| **C126** | Corrupted Spirit | Mag  | 105%    | **8**        | Distorcido.   | Grito: -20% Atk (5 Turnos).    |
| **C127** | Floating Eye     | Mag  | 115%    | **9**        | Pupila G.     | Raio: Stun 1 Turno (5 Turnos).      |
| **C128** | Tentacle         | Phys | 100%    | **8**        | Negro.        | Agarrar: Imobiliza (7 Turnos). |
| **C129** | Abyss Voice      | Mag  | 110%    | **9**        | Névoa boca.   | Silêncio: 1 Turno (7 Turnos).       |
| **C130** | Stitched Horror  | Phys | 130%    | **10**       | Retalhos.     | Pancada: 140% (4 Turnos).      |
| **C131** | Treasure Imp     | Mag  | 70%     | **6**        | Saco ouro.    | Fuga: Turno 3 some.       |
| **C132** | Nightmare        | Mag  | 120%    | **10**       | Cavalo fogo.  | Pavor: Fear 1 Turno (6 Turnos).     |
| **C133** | Flame Lord       | Mag  | 135%    | **11**       | Roxo.         | Inferno: 130% AoE (5 Turnos).  |
| **C134** | Void Spawn       | Mag  | 110%    | **9**        | Estelar.      | Dreno: 20 Mana (5 Turnos).     |
| **C135** | Occultist        | Mag  | 100%    | **8**        | Olhos negros. | Mald: Luck = 0 (10 Turnos).     |
| **C136** | Chained Demon    | Phys | 125%    | **10**       | Algemas.      | Chicote: Puxa (3 Turnos).      |
| **C137** | Devourer         | Phys | 140%    | **11**       | Boca peito.   | Engolir: Dmg p/ HP.       |
| **C138** | Blood Gargoyle   | Phys | 120%    | **10**       | Sangue.       | Sede: Cura 50% Dmg.       |
| **C139** | Cursed Statue    | Mag  | 115%    | **9**        | 4 braços.     | Maldição: -50% Cura.      |
| **C140** | Chaos Wraith     | Mag  | 110%    | **9**        | Instável.     | Caos: Elem aleatório.     |

### Dracônicos (10)

| ID       | Nome             | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual         | Skill (Dmg/Ef/CD)       |
| :------- | :--------------- | :--- | :------ | :----------- | :------------- | :---------------------- |
| **C141** | Green Dragonet   | Mag  | 105%    | **8**        | Verde.         | Ácido: -15 Def (4 Turnos).   |
| **C142** | Red Dragonet     | Mag  | 110%    | **9**        | Vermelho.      | Faísca: 110% (3 Turnos).      |
| **C143** | Blue Dragonet    | Mag  | 105%    | **8**        | Azul.          | Choque: Stun 1 Turno (5 Turnos).  |
| **C144** | Fire Lizard      | Phys | 115%    | **9**        | Fogo.          | Calor: Queima toque.    |
| **C145** | Lightning Lizard | Phys | 115%    | **9**        | Raio.          | Carga: 120% + Choque.   |
| **C146** | Pseudo-Dragon    | Mag  | 100%    | **8**        | Camaleão.      | Invis: 2 Turnos (10 Turnos).        |
| **C147** | Young Wurm       | Phys | 140%    | **11**       | Metálico.      | Bote: 140% (2 Turnos).        |
| **C148** | Mountain Drake   | Phys | 130%    | **10**       | Alado.         | Vento: Knock AoE (5 Turnos). |
| **C149** | Bone Drake       | Phys | 125%    | **10**       | Esqueleto dra. | Sopro: 110% + Medo.     |
| **C150** | Sand Dragon      | Phys | 145%    | **12**       | Terra.         | Emboscada: +50% 1º Atk. |

### Humanos/Bandidos (20)

| ID       | Nome                  | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual         | Skill (Dmg/Ef/CD)        |
| :------- | :-------------------- | :--- | :------ | :----------- | :------------- | :----------------------- |
| **C151** | Thief                 | Phys | 90%     | **7**        | Capuz.         | Roubo: Rouba Item.       |
| **C152** | Mugger                | Phys | 100%    | **8**        | Porrete.       | Atordoar: Stun 1 Turno (4 Turnos). |
| **C153** | Bandit Archer         | Phys | 85%     | **7**        | Arco.          | Veneno: Flecha Ven.      |
| **C154** | Dark Mage             | Mag  | 110%    | **9**        | Túnica.        | Seta: 12 Mag Somb. (3 Turnos). |
| **C155** | Mercenary             | Phys | 115%    | **9**        | Couro/Espada.  | Bloqueio: Def +30% (2 Turnos). |
| **C156** | Brawler               | Phys | 105%    | **8**        | Enfaixado.     | Combo: 2x 60% Dmg.       |
| **C157** | Cultist               | Mag  | 95%     | **8**        | Máscara cabra. | Mald: -20% Atk (5 Turnos).    |
| **C158** | Soldier               | Phys | 110%    | **9**        | Desertor.      | União: +20% Def Al.      |
| **C159** | Assassin              | Phys | 100%    | **8**        | Capa verde.    | Sangue: 5%/Turno (3 Turnos).      |
| **C160** | River Pirate          | Phys | 110%    | **9**        | Tapa olho.     | Gancho: Puxa (4 Turnos).      |
| **C161** | Smuggler              | Phys | 120%    | **10**       | Fardos.        | Carga: 130% Lento.       |
| **C162** | Ninja                 | Phys | 105%    | **8**        | Preto.         | Shuriken: 80% (Veloz).   |
| **C163** | Rogue Monk            | Phys | 110%    | **9**        | Robe sujo.     | Palma: Knockback (3 Turnos).  |
| **C164** | Fanatic               | Mag  | 120%    | **10**       | Livro fogo.    | Julgar: 140% (4 Turnos).      |
| **C165** | Necromancer           | Mag  | 115%    | **9**        | Pálido.        | Erguer: Cria Esq Raso.   |
| **C166** | Hunter                | Phys | 90%     | **7**        | Besta/Rede.    | Rede: Imobiliza (7 Turnos).   |
| **C167** | Duelist               | Phys | 115%    | **9**        | Vendado.       | Riposte: Contra-atk.     |
| **C168** | Executioner           | Phys | 140%    | **11**       | Capuz/Machad.  | Decap: 300% (HP <20%).   |
| **C169** | Repeating Crossbowman | Phys | 95%     | **8**        | Mecânica.      | Tiro: 3x 40% (3 Turnos).      |
| **C170** | Spy                   | Phys | 85%     | **7**        | Camponês.      | Veneno: Infecção Sile.   |

### Aquáticos (15)

| ID       | Nome                   | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual         | Skill (Dmg/Ef/CD)         |
| :------- | :--------------------- | :--- | :------ | :----------- | :------------- | :------------------------ |
| **C171** | Piranha                | Phys | 80%     | **6**        | Vermelho.      | Enxame: +10% Dmg/un.      |
| **C172** | Swamp Squid            | Phys | 110%    | **9**        | Verde.         | Tinta: Miss 50% (5 Turnos).    |
| **C173** | Fishman                | Phys | 105%    | **8**        | Lança osso.    | Estocada: 120% (Veloz).   |
| **C174** | Sea Siren              | Mag  | 90%     | **7**        | Algas.         | Canto: Sono 1 Turno (7 Turnos).     |
| **C175** | Water Snake            | Phys | 100%    | **8**        | Listrada.      | Paralisia: 1 Turno (3 Turnos).      |
| **C176** | Water Elemental Spirit | Mag  | 115%    | **9**        | Corrente.      | Bolha: Silêncio 1 Turno (5 Turnos). |
| **C177** | Shark Hybrid           | Phys | 135%    | **11**       | Híbrido.       | Mordida: 160% (4 Turnos).      |
| **C178** | Turtle                 | Phys | 90%     | **7**        | Coral.         | Retrair: Def +80% (7 Turnos).  |
| **C179** | Poisonous Jellyfish    | Mag  | 100%    | **8**        | Luz.           | Choque: 110% AoE (5 Turnos).   |
| **C180** | Giant Octopus          | Phys | 125%    | **10**       | Gigante.       | Agarrar: 2 alvos (8 Turnos).   |
| **C181** | Giant Toad             | Phys | 115%    | **9**        | Língua G.      | Língua: Puxa/Stun (3 Turnos).  |
| **C182** | Shadow Dugong          | Mag  | 110%    | **9**        | Negro.         | Eco: Stun 1 Turno AoE (6 Turnos).   |
| **C183** | Lake Spirit            | Mag  | 85%     | **7**        | Água pura.     | Cura: 20% Heal (5 Turnos).     |
| **C184** | Hard-shell Crustacean  | Phys | 120%    | **10**       | Carranguejo F. | Pinça: Quebra Escudo.     |
| **C185** | Nereid                 | Mag  | 105%    | **8**        | Escamas N.     | Maldição: Drena 2%.       |

### Plantas/Fungos (15)

| ID       | Nome                   | Atk  | Dmg (%) | Ex: Dmg (L1) | Visual         | Skill (Dmg/Ef/CD)         |
| :------- | :--------------------- | :--- | :------ | :----------- | :------------- | :------------------------ |
| **C186** | Spore Mushroom         | Mag  | 100%    | **8**        | Manchado spot. | Explode: 140% AoE.        |
| **C187** | Hallucination Mushroom | Mag  | 85%     | **7**        | Roxo.          | Confuse: Atk Al (1 Turno).     |
| **C188** | Thorny Bush            | Phys | 110%    | **9**        | Arbusto.       | Sangue: 3%/Turno (3 Turnos).        |
| **C189** | Black Lotus            | Mag  | 115%    | **9**        | Aura roxa.     | Veneno: 6%/Turno (5 Turnos).       |
| **C190** | Walking Root           | Phys | 100%    | **8**        | Galhos.        | Tropeço: Pula turno (12). |
| **C191** | Rotting Fungus         | Mag  | 95%     | **8**        | Fumaça.        | Doença: -20% Stats.       |
| **C192** | Vining Creeper         | Phys | 110%    | **9**        | Cipó dentes.   | Stun 1 Turno (5 Turnos).            |
| **C193** | Cursed Tree            | Phys | 130%    | **10**       | Rosto tronco.  | Esmagar: 130% (3 Turnos).      |
| **C194** | Shadow Sprout          | Mag  | 90%     | **7**        | Pétalas N.     | Dreno: 5 Mana (3 Turnos).      |
| **C195** | Ent Sapling            | Phys | 110%    | **9**        | 1.5 metro.     | Chute: Knock (3 Turnos).        |
| **C196** | Cactus                 | Phys | 105%    | **8**        | Redondo.       | Espinhos: Reflete 15%.    |
| **C197** | Silver Fern            | Mag  | 80%     | **6**        | Prateada.      | Clarão: Miss 50% (7 Turnos).   |
| **C198** | Parasitic Moss         | Mag  | 100%    | **8**        | Verde tapete.  | Dreno: 2% p/ Cura Al.     |
| **C199** | Carnivorous Orchid     | Phys | 120%    | **10**       | Boca aberta.   | Mordida: 120% (3 Turnos).      |
| **C200** | Slime                  | Phys | 100%    | **8**        | Gelatina V.    | Ácido: Reduz Def (3 Turnos).   |

---

**[BESTIÁRIO TÉCNICO COMPLETO FINALIZADO - 260 UNIDADES DETALHADAS PARA PROGRAMAÇÃO]**
