# 📜 BESTIÁRIO TÉCNICO COMPLETO - HEROES OF MAJESTY

## 260 Entidades: Especificações de Combate e Visuais

Este documento serve como a base de dados definitiva para a implementação do sistema P.A.I.N. e do motor de combate.

---

## 🧮 1. FÓRMULAS DE ESCALONAMENTO (CORE)

- **HP Base:** `(NMG * 50) * Multiplicador_HP * (1 + (Ciclo * 0.2))`
- **Dano Base:** `(NMG * 8) * Multiplicador_ATK * (1 + (Ciclo * 0.1))`
- **Defesa:** `(NMG * 2) * Multiplicador_DEF`
- **Velocidade de Ação:** `100 / (1 + Bonus_Velocidade)` (Segundos entre turnos)

---

## 🐲 2. OS 10 BOSSES FINAIS (ESPECIFICAÇÕES)

_Multiplicadores: HP x10 | ATK x3 | DEF x2 | Skills: 3_

| Boss           | Visual Detalhado                                       | Skill 1 (Dano/Efeito/CD)                        | Skill 2 (Dano/Efeito/CD)                     | Skill 3 (Dano/Efeito/CD)                       |
| :------------- | :----------------------------------------------------- | :---------------------------------------------- | :------------------------------------------- | :--------------------------------------------- |
| **Aeternus**   | Dragão carmesim colossal, escamas de obsidiana.        | **Sopro:** 150% Mag AoE + DoT. CD: 15s          | **Terror:** Stun Global 2s. CD: 20s          | **Meteoros:** 200% Mag em 3 alvos. CD: 12s     |
| **Malphas**    | Esqueleto gigante em armadura de osso negro flutuante. | **Erguer:** Invoca 4 Esqueletos. CD: 30s        | **Dreno:** Rouba 10% HP. CD: 18s             | **Peste:** DoT AoE + -50% cura. CD: 25s        |
| **Grok**       | Gigante de 12m com braços de pedra e peles.            | **Esmagar:** 180% Phys + 3s Stun. CD: 10s       | **Arremesso:** 120% Phys Retaguarda. CD: 8s  | **Fúria:** Atk Speed +100% se HP <40%.         |
| **Xandira**    | Aranha com torso humanoide pálido e muitos olhos.      | **Casulo:** Stun alvo por 5s. CD: 14s           | **Veneno:** DoT 8%/s por 5s. CD: 10s         | **Prole:** Invoca 8 Aranhas. CD: 20s           |
| **Hydros**     | Serpente marinha com barbatanas de serra azul neon.    | **Tsunami:** Pushback + Stun + 80% Mag. CD: 18s | **Jato:** 150% Mag em linha. CD: 10s         | **Vórtice:** Puxa alvos + Fuga Bloq. CD: 30s   |
| **Cyrus**      | Cavaleiro real negro, capa rasgada, espada de fogo.    | **Estocada:** 220% Phys + 50% Crit. CD: 6s      | **Comando:** Invoca 2 Elites. CD: 25s        | **Ripostar:** Reflete 30% dano por 5s. CD: 20s |
| **Valac**      | Demônio de lava com chicote de chamas.                 | **Chicote:** 110% Phys AoE + Queima. CD: 5s     | **Portal:** Invoca 2 Diabretes. CD: 15s      | **Corrupção:** -0.2 Ethics (Temp). CD: 40s     |
| **Yggdrasil**  | Árvore distorcida com rostos negros no tronco.         | **Raízes:** Enraíza todos + Dreno Mana. CD: 20s | **Esporos:** Confusão (50% azar) 4s. CD: 15s | **Fúria:** 140% Mag estacas AoE. CD: 10s       |
| **Magmator**   | Núcleo de cristal flutuante em lava viva.              | **Explosão:** 130% Mag AoE + Knockback. CD: 12s | **Escudo:** -80% dano recebido (4s). CD: 20s | **Terremoto:** Stun 2s AoE + 70% Phys. CD: 15s |
| **Observador** | Olho central gigante com tentáculos oculares.          | **Raio:** 250% Mag (Ignora 100% Def). CD: 20s   | **Salto:** Fica invisível por 2s. CD: 15s    | **Loucura:** Mind = 0 por 10s. CD: 30s         |

---

## 🔶 3. MINI BOSSES (50 ELITES)

_Multiplicadores: HP x4 | ATK x2 | DEF x1.5 | Skills: 2_

| ID      | Nome                 | Tipo    | Visual                                  | Skill 1 (Dano/Efeito/CD)         | Skill 2 (Dano/Efeito/CD)         |
| :------ | :------------------- | :------ | :-------------------------------------- | :------------------------------- | :------------------------------- |
| **M1**  | Cavaleiro Sem Cabeça | Phys    | Cavaleiro espectral com abóbora.        | Carga: 130% + Knockback (8s)     | Arremesso: 100% AoE (12s)        |
| **M2**  | Lich Menor           | Mag     | Esqueleto com mantos e cajado.          | Seta Gelo: 110% + Slow (5s)      | Barreira: Escudo 20% HP (20s)    |
| **M3**  | Banshee Anciã        | Mag     | Espectro pálido com mandíbula caída.    | Grito: Silence 4s (15s)          | Pavor: Fear 3s (18s)             |
| **M4**  | Wraith de Elite      | Mag     | Sombra translúcida gigante.             | Dreno: 15% HP Dreno (12s)        | Invisível: 3s (25s)              |
| **M5**  | Carniçal Rei         | Phys    | Zumbi enorme com garras roxas.          | Mordida: 120% + Infecção (8s)    | Frenesi: Atk Speed +50% (15s)    |
| **M6**  | Múmia do Faraó       | Mag     | Enrolada em ouro e faixas negras.       | Maldição: -30% Stats (20s)       | Prisão: Stun 2s (12s)            |
| **M7**  | Esqueleto General    | Phys    | Armadura de placas completa.            | Comando: Buff Atk Aliados (15s)  | Golpe: 150% + Quebra Def (10s)   |
| **M8**  | Vampiro Nobre        | Mag/Phy | Nobre pálido em traje de gala.          | Forma Morcego: Dodge +80% (5s)   | Sedução: Alvo não ataca (12s)    |
| **M9**  | Sombra Voraz         | Mag     | Nuvem negra com dentes visíveis.        | Roubo Mana: 30 Mana (10s)        | Salto Sombrio: Blink (8s)        |
| **M10** | Zumbi Gigante        | Phys    | Frankenstein de retalhos humanos.       | Arremesso: Lança cadáver (10s)   | Pancada: 140% + Stun (12s)       |
| **M11** | Lobo Alfa Prata      | Phys    | Lobo enorme de pelagem branca.          | Uivo: Buff Atk Aliados (15s)     | Salto: 130% em longe (7s)        |
| **M12** | Urso Corrompido      | Phys    | Urso com cristais roxos saindo.         | Abraço: Stun 4s no alvo (18s)    | Rugido: -20% Atk Medo (12s)      |
| **M13** | Ent Ancião           | Phys    | Árvore com pernas e braços longos.      | Rocha: 140% AoE (10s)            | Raiz: Stun 2s (15s)              |
| **M14** | Pantera Sombra       | Phys    | Pantera com fumaça negra.               | Furtivo: Hit 100% Crit (20s)     | Corte: Sangramento 5%/s (8s)     |
| **M15** | Javali de Ferro      | Phys    | Javali com placas de metal crescidas.   | Investida: 160% + Stun (12s)     | Casco: Reflete 20% Dano Phys.    |
| **M16** | Serpente Imperatriz  | Mag     | Cobra gigante com crista dourada.       | Olhar: Petrificação 3s (20s)     | Névoa: Veneno 4%/s AoE (10s)     |
| **M17** | Grifo Tempestade     | Mag/Phy | Meio águia, meio leão, penas elétricas. | Mergulho: 150% + Choque (10s)    | Choque: 100% Mag AoE (15s)       |
| **M18** | Aranha Brodeira      | Phys    | Aranha que "tece" armadilhas.           | Armadilha: Imobiliza 5s (12s)    | Picada: 180% Dano Único (8s)     |
| **M19** | Verme de Areia       | Phys    | Verme segmentado gigante.               | Buraco: Puxa alvo pro solo (15s) | Cuspe: 100% Mag Ácido (8s)       |
| **M20** | Planta Carnívora     | Mag     | Boca gigante floral com dentes.         | Chicote: Puxa alvo (8s)          | Esporos: Sono 4s (20s)           |
| **M21** | Golem Obsidiana      | Phys    | Gigante de rocha negra brilhante.       | Pulso: Afasta alvos (12s)        | Regenerar: +10% HP (30s)         |
| **M22** | Elemental Infernal   | Mag     | Fogo azulado com forma humana.          | Aura: 2%/s Dano em todos.        | Labareda: 120% Mag AoE (10s)     |
| **M23** | Espírito Geada       | Mag     | Vulto de gelo translúcido.              | Prisão: Alvo congelado 3s (15s)  | Nevasca: Slow Global (25s)       |
| **M24** | Djinn Corrompido     | Mag     | Gênio em névoa roxa.                    | Desejo: Debuff aleatório (15s)   | Choque: 140% Mag (8s)            |
| **M25** | Sentinela Rúnico     | Phys    | Estátua com runas neon azuis.           | Raio: 150% Mag (10s)             | Barreira: Imune a Mag por 5s.    |
| **M26** | Vulto Tempestade     | Mag     | Nuvem de trovão em movimento.           | Cadeia: Relâmpago 3 alvos (12s)  | Voo: Speed +50% (10s)            |
| **M27** | Gárgula Patriarca    | Phys    | Estátua alada gigante.                  | Forma Pedra: Cura 15% (25s)      | Investida: 130% + Stun (10s)     |
| **M28** | Arconte Luz          | Mag     | Entidade de pura luz amarela.           | Clarão: Stun 2s AoE (18s)        | Punição: 160% Mag (10s)          |
| **M29** | Horror de Carne      | Phys    | Massa amorfa de braços e bocas.         | Regeneração: 2% HP/s.            | Multi-Atk: Ataca 2x (8s)         |
| **M30** | Autômato Cerco       | Phys    | Robô de engrenagens e vapor.            | Canhão: 200% Phys fura Def.      | Pisotear: 100% Phys AoE (10s)    |
| **M31** | Chefe Orc            | Phys    | Orc em armadura de espinhos.            | Grito: +20% Atk Aliados (15s)    | Salto: 140% + Stun (10s)         |
| **M32** | Xamã Goblin          | Mag     | Máscara de crânio de dragão.            | Totem: Cura Aliados 5%/s (20s)   | Sapo: Transforma em sapo 4s.     |
| **M33** | Capitão Mercenário   | Phys    | Armadura completa, espada longa.        | Bomba: Fumaça (Dodge 50%) (15s)  | Tiro: 120% Sangramento (8s)      |
| **M34** | Arquimago            | Mag     | Manto roxo, flutuando.                  | Meteoro: 180% Mag AoE (15s)      | Imagem: Cria 2 clones fak.       |
| **M35** | Grão-Assassino       | Phys    | Máscara ninja, dagas verdes.            | Veneno: DoT 10%/s (10s)          | Sumiço: Invisível 4s (20s)       |
| **M36** | Inquisidor           | Mag     | Veste branca e prata.                   | Fogo Sagrado: 130% Mag (8s)      | Martelo: Stun 3s (15s)           |
| **M37** | Lorde Ladino         | Phys    | Capa elegante, chapéu com pena.         | Roubo: Rouba Poção/Item (20s)    | Golpe Baixo: Stun 2s (10s)       |
| **M38** | Bárbaro Sangrento    | Phys    | Sem camisa, machado gigante duplo.      | Fúria: Atk +50% (15s)            | Rodopio: 110% AoE Phys (8s)      |
| **M39** | Cultista Caos        | Mag     | Túnica negra com olhos pintados.        | Portal: Invoca 2 Diabretes (20s) | Sacrifício: Dmg em si = AoE Mag. |
| **M40** | Cavaleiro Negro      | Phys    | Armadura negra, olhos vermelhos.        | Puxão: Traz alvo pro melee (10s) | Aura: -20% Def Aliados.          |
| **M41** | Succubus Rainha      | Mag     | Asas de morcego, vestes pretas.         | Charme: Alvo ataca aliado (20s)  | Chicote: 100% + Stun 1s (8s)     |
| **M42** | Beholder Menor       | Mag     | Olho gigante flutuante.                 | Paralisia: Raio Stun 3s (15s)    | Debuff: -50% Atk Speed (12s)     |
| **M43** | Minotauro            | Phys    | Homem-touro com machado.                | Carga: 150% + Knockback (10s)    | Parede: Separa grupo (20s)       |
| **M44** | Medusa Anciã         | Mag     | Cabelos de cobra, calda serpente.       | Pedra: Petro (Stun 5s) (30s)     | Sopro: 110% Mag Veneno (10s)     |
| **M45** | Kraken Jovem         | Phys    | Tentáculos saindo do chão/água.         | Tinta: Cega (Miss 80%) (15s)     | Mult: 4 atks de 40% (10s)        |
| **M46** | Sereia Cantora       | Mag     | Parte peixe, parte humana bela.         | Canto: Sono 5s (25s)             | Onda: 120% Mag AoE (10s)         |
| **M47** | Troll da Ponte       | Phys    | Troll de 4m cor de pedra.               | Regeneração: 5% HP/s.            | Rocha: 140% Phys (10s)           |
| **M48** | Diabrete Mestre      | Mag     | Diabrete com tocha e poções.            | Piro: Fogo em todos (12s)        | Multi: Se divide em 3 (30s).     |
| **M49** | Gorgona              | Phys    | Guerreira com escudo de serpente.       | Olhar: -50% Speed (10s)          | Cauda: 130% Phys Stun (12s)      |
| **M50** | Quimera Real         | Mix     | Leão, Bode e Cobra em um corpo.         | Sopro: 140% Mag Fogo (12s)       | Mordida: 120% Phys Veneno.       |

---

## 🟢 4. MONSTROS COMUNS (200 UNIDADES)

_Multiplicadores: HP x1 | ATK x1 | DEF x1 | Skills: 1 (Máx)_

### Goblins & Orcs (20)

| ID      | Nome           | Atk  | Visual                       | Skill (Dmg/Ef/CD)                 |
| :------ | :------------- | :--- | :--------------------------- | :-------------------------------- |
| **C1**  | Gob Ladrão     | Phys | Verde, adaga ferrugem.       | Roubo: 5-10g. CD: 10s.            |
| **C2**  | Gob Arqueiro   | Phys | Arco de osso, capuz.         | Fogo: 5% HP DoT 3s. CD: 8s.       |
| **C3**  | Gob Xamã       | Mag  | Máscara de osso, penas.      | Raio: 90% Mag. CD: 6s.            |
| **C4**  | Gob Guerreiro  | Phys | Escudo de tábua, clava.      | Bloqueio: -30% Dmg (3s).          |
| **C5**  | Gob Lobo       | Phys | Montado em lobo cinza.       | Carga: 110% Phys. CD: 5s.         |
| **C6**  | Gob Assassino  | Phys | Adaga dupla, negro.          | Backstab: 150% Phys (12s).        |
| **C7**  | Orc Bruto      | Phys | Verde escuro, pele grossa.   | Pancada: 120% + Stun 1s. CD: 10s. |
| **C8**  | Orc Atirador   | Phys | Lança machados curtos.       | Atirar: 110% Phys. CD: 7s.        |
| **C9**  | Orc Feiticeiro | Mag  | Tatuagens tribais vermelhas. | Blood: +20% Atk Aliado (15s).     |
| **C10** | Orc Lanceiro   | Phys | Lança longa de bronze.       | Estocada: 115% Phys. CD: 6s.      |
| **C11** | Hobgoblin      | Phys | Mais alto, couro.            | Tática: +10% Def Aliados.         |
| **C12** | Orc Líder      | Phys | Capacete com crina.          | Grito: +10% Atk Speed (20s).      |
| **C13** | Orc Berserker  | Phys | Espadas duplas.              | Fúria: Atk +40% (HP <30%).        |
| **C14** | Gob Inventor   | Phys | Mochila com frascos.         | Bomba: 80% Mag AoE (10s).         |
| **C15** | Gob Tambor     | Mag  | Tambor gigante.              | Marcha: Speed +20% Aliados.       |
| **C16** | Orc Escravo    | Phys | Chicote longo.               | Chicote: 90% + Sangue (8s).       |
| **C17** | Orc Pesado     | Phys | Ferro batido.                | Muralha: Def +40% (5s).           |
| **C18** | Gob Rede       | Phys | Segura rede.                 | Rede: Enraíza 3s (15s).           |
| **C19** | Orc Explorador | Phys | Tapa olho, luneta.           | Mark: Alvo +10% Dmg.              |
| **C20** | Meio-Orc       | Phys | Mistura humano.              | Saque: Dobra ouro loot.           |

### Mortos-Vivos (30)

| ID      | Nome           | Atk  | Visual               | Skill (Dmg/Ef/CD)            |
| :------ | :------------- | :--- | :------------------- | :--------------------------- |
| **C21** | Esqueleto Raso | Phys | Ossos.               | Golpe: 105% Phys (4s).       |
| **C22** | Esq. Arqueiro  | Phys | Aljava nas costelas. | Salva: 2x 60% Phys (7s).     |
| **C23** | Esq. Mago      | Mag  | Mastro roxo.         | Seta: 100% Mag (6s).         |
| **C24** | Esq. Aluguel   | Phys | Escudo podre.        | Bloqueio: Def +20% (8s).     |
| **C25** | Esq. Blindado  | Phys | Peitoral velho.      | Passivo: Resist Phys +10%.   |
| **C26** | Zumbi Fome     | Phys | Sem um braço.        | Mordida: Veneno 2%/s (10s).  |
| **C27** | Zumbi Lento    | Phys | Camponês.            | Passivo: +50% HP.            |
| **C28** | Zumbi Incho    | Mag  | Barriga cinza.       | Explode: 150% AoE (Morte).   |
| **C29** | Carniçal V.    | Phys | 4 patas.             | Garra: 110% Atk Speed +.     |
| **C30** | Carniçal C.    | Phys | Olhos amarelos.      | Salto: 120% Dmg (8s).        |
| **C31** | Wraith Fraco   | Mag  | Fumaça cinza.        | Dreno: 10 Mana (15s).        |
| **C32** | Aparição       | Mag  | Véu branco.          | Passivo: Esquiva Phys +20%.  |
| **C33** | Sombra         | Mag  | Silhueta negra.      | Invisível: 2s (20s).         |
| **C34** | Múmia Seca     | Phys | Faixas amarelas.     | Fragil: Alvo -20% Def (12s). |
| **C35** | Esq. SemCab    | Phys | Carrega crânio.      | Arremesso: 100% Phys (10s).  |
| **C36** | Caveira Flu    | Mag  | Aura azul.           | Raio: 120% Mag (8s).         |
| **C37** | Resto Cada     | Phys | Pilha de ossos.      | Reforma: Cura 5% HP (20s).   |
| **C38** | Cavaleiro Esq  | Phys | Espada quebrada.     | Estocada: 130% Phys (10s).   |
| **C39** | Cão Inf (M)    | Phys | Olhos fogo.          | Mordida: Queima 3s (5s).     |
| **C40** | Esq. Gigante   | Phys | 3 metros.            | Pisotear: 100% AoE (12s).    |
| **C41** | Espírito V.    | Mag  | Rosto agonia.        | Grito: -15% Atk (15s).       |
| **C42** | Zumbi Corr     | Phys | Atleta morto.        | Rapidez: Speed +30%.         |
| **C43** | Espantalho     | Mag  | Palha/Sacos.         | Medo: Fuga 2s (20s).         |
| **C44** | Boneco Poss    | Mag  | Madeira/Pano.        | Alfinete: 110% Mag (8s).     |
| **C45** | Armadura Vaz   | Phys | Sem corpo.           | Passivo: Imune a Veneno.     |
| **C46** | Cadaver Exp    | Mag  | Com bomba.           | Explode: 200% Mag (Morte).   |
| **C47** | Sombra Fame    | Mag  | Boca enorme.         | Dreno: 5% Dmg = Heal.        |
| **C48** | Fantasma C.    | Mag  | Criança chora.       | Choro: -30% Speed (15s).     |
| **C49** | Guerreiro T.   | Phys | Runas antigas.       | Golpe: 140% Phys (12s).      |
| **C50** | Mago Necro     | Mag  | Cajado fêmur.        | Sombra: 130% Mag (8s).       |

### Bestas & Animais (30)

| ID      | Nome           | Atk  | Visual                  | Skill (Dmg/Ef/CD)                  |
| :------ | :------------- | :--- | :---------------------- | :--------------------------------- |
| **C51** | Lobo Florestal | Phys | Marrom.                 | Mordida: 110% Phys (5s).           |
| **C52** | Lobo Cinzento  | Phys | Cinza espessa.          | Uivo: +10% Atk matilha (15s).      |
| **C53** | Lobo Faminto   | Phys | Magro.                  | Frenesi: Atk Speed +20% (<50% HP). |
| **C54** | Lobo Branco    | Phys | Albino.                 | Salto: 120% Phys (8s).             |
| **C55** | Urso Pardo     | Phys | Grande.                 | Patada: 130% + Knockback (10s).    |
| **C56** | Urso Negro     | Phys | Menor.                  | Garras: 110% Phys (5s).            |
| **C57** | Urso Polar     | Phys | Branco.                 | Abraço: Stun 2s (15s).             |
| **C58** | Javali Bravo   | Phys | Presas.                 | Investida: 125% + Stun 1s (10s).   |
| **C59** | Javali Gelo    | Phys | Cristais.               | Frio: -20% Speed (8s).             |
| **C60** | Tigre Dentes S | Phys | Caninos.                | Corte: Sangue 3%/s (6s).           |
| **C61** | Leopardo Neve  | Phys | Manchas cinza.          | Bote: 140% Phys (Início).          |
| **C62** | Águia Gigante  | Phys | 5 metros.               | Rasante: 120% + Pushback (8s).     |
| **C63** | Falcão Caça    | Phys | Rápido.                 | Cego: Miss +20% (10s).             |
| **C64** | Coruja Somb    | Mag  | Penas que absorvem luz. | Confundir: Erra prox atk (15s).    |
| **C65** | Morcego Sede   | Phys | Orelhas G.              | Drito: Drena 5 HP (6s).            |
| **C66** | Morcego Gigan  | Phys | 2 metros.               | Eco: Revela invisíveis (20s).      |
| **C67** | Rato Esgoto    | Phys | Sujo.                   | Peste: Stats -10% (15s).           |
| **C68** | Rato Peste     | Phys | Olhos Verm.             | Infecção: DoT 2%/s (10s).          |
| **C69** | Cobra Veneno   | Phys | Verde.                  | Veneno: DoT 4%/s (8s).             |
| **C70** | Cobra Jiboia   | Phys | Grossa.                 | Constringir: Stun 3s (20s).        |
| **C71** | Crocodilo      | Phys | Verde musgo.            | Mordida: 150% Phys (12s).          |
| **C72** | Aranha Comum   | Phys | Oito olhos.             | Teia: Slow 30% (10s).              |
| **C73** | Aranha Tecelã  | Phys | Listrada.               | Prisão: Imobiliza 2s (18s).        |
| **C74** | Raposa Fogo    | Mag  | Faíscas.                | Ignição: 80% Mag + Queima (10s).   |
| **C75** | Alce Tundra    | Phys | Chifres gelo.           | Chifrada: 130% Phys (10s).         |
| **C76** | Javali Fogo    | Phys | Presas incan.           | Calor: 90% Phys + Queima (8s).     |
| **C77** | Lobo Raios     | Mag  | Estática.               | Choque: 100% Mag (7s).             |
| **C78** | Urso Rúnico    | Mag  | Runas.                  | Escudo: Absorve 50 (20s).          |
| **C79** | Aranha Somb    | Mag  | Translúcida.            | Sombra: Invisível 2s (15s).        |
| **C80** | Javali Pedra   | Phys | Granito.                | Resist: +30% Phys Def (15s).       |

### Insetos (20)

| ID       | Nome          | Atk  | Visual        | Skill (Dmg/Ef/CD)           |
| :------- | :------------ | :--- | :------------ | :-------------------------- |
| **C81**  | Vespa Gigante | Phys | Neon, ferrão. | Ferrada: Veneno 3%/s (6s).  |
| **C82**  | Abelha Sold   | Phys | Zumbido.      | Sacrifício: 200% Morre.     |
| **C83**  | Besouro Chif  | Phys | Casco preto.  | Carga: 130% + Knock (10s).  |
| **C84**  | Besouro Bomba | Mag  | Laranja.      | Explode: 120% AoE (Morte).  |
| **C85**  | Centopeia G   | Phys | Vermelha.     | Enroscar: Stun 1s (8s).     |
| **C86**  | Escorpião Am  | Phys | Pequeno.      | Paralisia: Stun 2s (15s).   |
| **C87**  | Escorpião N   | Phys | Pinças.       | Esmagar: 140% Phys (10s).   |
| **C88**  | Louva-a-Deus  | Phys | Foice.        | Corte: 150% Phys (7s).      |
| **C89**  | Lagarta Seda  | Mag  | Felpuda.      | Casulo: Imobiliza 3s (20s). |
| **C90**  | Borboleta Alu | Mag  | Colorida.     | Pó: Confusão 3s AoE (18s).  |
| **C91**  | Aranha Salt   | Phys | Pula alto.    | Salto: 130% Atk (12s).      |
| **C92**  | Cupim Devora  | Phys | Mandíbulas.   | Corrosão: -10 Def (15s).    |
| **C93**  | Barata Esgoto | Phys | Marrom.       | Casco: Imune a Crit.        |
| **C94**  | Grilo Trovão  | Mag  | Elétrico.     | Chirp: Silêncio 2s (15s).   |
| **C95**  | Vaga-lume M   | Mag  | Luz Azul.     | Cego: Miss +30% (12s).      |
| **C96**  | Formiga Sold  | Phys | Vermelha.     | Mordida: 110% (5s).         |
| **C97**  | Formiga Ácid  | Phys | Verde.        | Ácido: DoT 2%/s (8s).       |
| **C98**  | Aranha Crist  | Mag  | Quartzo.      | Raio: 110% Mag (10s).       |
| **C99**  | Besouro Joia  | Mag  | Brilhante.    | Reflexo: 10% Refletido.     |
| **C100** | Mosca Peste   | Mag  | Vermelho.     | Doença: -10% Speed (15s).   |

### Elementais (20)

| ID       | Nome          | Atk  | Visual        | Skill (Dmg/Ef/CD)           |
| :------- | :------------ | :--- | :------------ | :-------------------------- |
| **C101** | Fogo Fátuo    | Mag  | Esfera azul.  | Choque: 90% (5s).           |
| **C102** | Elem. Fogo    | Mag  | Humano chama. | Queima: 5%/s (8s).          |
| **C103** | Mão Magma     | Phys | Pedra/Lava.   | Calor: 120% + Queima (10s). |
| **C104** | Elem. Gelo    | Mag  | Escultura.    | Congelar: Slow 50% (12s).   |
| **C105** | Frag. Gelo    | Phys | Estalactite.  | Estocada: 130% (7s).        |
| **C106** | Golem Barro   | Phys | Massa barro.  | Regen: 3% HP/s (20s).       |
| **C107** | Golem Areia   | Phys | Redemoinho.   | Cego: Visão Baixa (15s).    |
| **C108** | Elem. Água    | Mag  | Bolha.        | Prisão: Stun 2s (18s).      |
| **C109** | Esp. Brisa    | Mag  | Ar visível.   | Vento: Empurra (10s).       |
| **C110** | Elem. Raio    | Mag  | Faíscas.      | Cadeia: 2 alvos (10s).      |
| **C111** | Gárgula Pedra | Phys | Cinza.        | Queda: 140% AoE (15s).      |
| **C112** | Gárgula Rubi  | Mag  | Vermelho.     | Raio: 150% (12s).           |
| **C113** | Elem. Lama    | Phys | Barro preto.  | Lento: -40% Speed (10s).    |
| **C114** | Elem. Vapor   | Mag  | Nuvem branca. | Queima: 100% AoE (15s).     |
| **C115** | Golem Ferro   | Phys | Blocos.       | Resist: Imune Sangue.       |
| **C116** | Esp. Terra    | Phys | Pedras flu.   | Terremoto: Stun 1s (20s).   |
| **C117** | Elem. Cinzas  | Mag  | Fumaça.       | Sufocar: Silêncio 3s (15s). |
| **C118** | Elem. Planta  | Mag  | Raízes.       | Laço: Imobiliza (12s).      |
| **C119** | Golem Vidro   | Phys | Afiado.       | Sangue: 5%/s (8s).          |
| **C120** | Arconte M.    | Mag  | Luz pura.     | Banir: Remove Buff (30s).   |

### Demônios (20)

| ID       | Nome        | Atk  | Visual        | Skill (Dmg/Ef/CD)         |
| :------- | :---------- | :--- | :------------ | :------------------------ |
| **C121** | Diabrete    | Mag  | Vermelho.     | Fogo: 100% (6s).          |
| **C122** | Demônio Som | Mag  | Negro.        | Sombra: Invisível (20s).  |
| **C123** | Cão Inferno | Phys | Chama olhos.  | Mordida: Queima (8s).     |
| **C124** | Succubus M. | Mag  | Sedução.      | Charme: Não ataca (25s).  |
| **C125** | Demônio Ala | Phys | Carnudo.      | Rasante: Ataca longe.     |
| **C126** | Esp. Corr.  | Mag  | Distorcido.   | Grito: -20% Atk (15s).    |
| **C127** | Olho Flutu  | Mag  | Pupila G.     | Raio: Stun 2s (15s).      |
| **C128** | Tentáculo   | Phys | Negro.        | Agarrar: Imobiliza (20s). |
| **C129** | Voz Abismo  | Mag  | Névoa boca.   | Silêncio: 4s (20s).       |
| **C130** | Horror Mas  | Phys | Retalhos.     | Pancada: 140% (12s).      |
| **C131** | Diabrete T  | Mag  | Saco ouro.    | Fuga: Turno 3 some.       |
| **C132** | Pesadelo    | Mag  | Cavalo fogo.  | Pavor: Fear 3s (18s).     |
| **C133** | Lorde Cham  | Mag  | Roxo.         | Inferno: 130% AoE (15s).  |
| **C134** | Cria Vazio  | Mag  | Estelar.      | Dreno: 20 Mana (15s).     |
| **C135** | Ocultista   | Mag  | Olhos negros. | Mald: Luck = 0 (30s).     |
| **C136** | Demônio C   | Phys | Algemas.      | Chicote: Puxa (10s).      |
| **C137** | Devorador   | Phys | Boca peito.   | Engolir: Dmg p/ HP.       |
| **C138** | Gárgula S   | Phys | Sangue.       | Sede: Cura 50% Dmg.       |
| **C139** | Estátua M   | Mag  | 4 braços.     | Maldição: -50% Cura.      |
| **C140** | Vulto Caos  | Mag  | Instável.     | Caos: Elem aleatório.     |

### Dracônicos (10)

| ID       | Nome        | Atk  | Visual         | Skill (Dmg/Ef/CD)       |
| :------- | :---------- | :--- | :------------- | :---------------------- |
| **C141** | Dragonete V | Mag  | Verde.         | Ácido: -15 Def (12s).   |
| **C142** | Dragonete R | Mag  | Vermelho.      | Faísca: 110% (8s).      |
| **C143** | Dragonete A | Mag  | Azul.          | Choque: Stun 1s (15s).  |
| **C144** | Lagarto F   | Phys | Fogo.          | Calor: Queima toque.    |
| **C145** | Lagarto R   | Phys | Raio.          | Carga: 120% + Choque.   |
| **C146** | Pseudo-Dra  | Mag  | Camaleão.      | Invis: 5s (30s).        |
| **C147** | Wurm Jovem  | Phys | Metálico.      | Bote: 140% (7s).        |
| **C148** | Drake Mont  | Phys | Alado.         | Vento: Knock AoE (15s). |
| **C149** | Draco Osso  | Phys | Esqueleto dra. | Sopro: 110% + Medo.     |
| **C150** | Dragão Arei | Phys | Terra.         | Emboscada: +50% 1º Atk. |

### Humanos/Bandidos (20)

| ID       | Nome       | Atk  | Visual         | Skill (Dmg/Ef/CD)        |
| :------- | :--------- | :--- | :------------- | :----------------------- |
| **C151** | Ladrão     | Phys | Capuz.         | Roubo: Rouba Item.       |
| **C152** | Assaltante | Phys | Porrete.       | Atordoar: Stun 2s (12s). |
| **C153** | Arqueiro B | Phys | Arco.          | Veneno: Flecha Ven.      |
| **C154** | Mago Negro | Mag  | Túnica.        | Seta: 12 Mag Somb. (8s). |
| **C155** | Mercenário | Phys | Couro/Espada.  | Bloqueio: Def +30% (5s). |
| **C156** | Lutador    | Phys | Enfaixado.     | Combo: 2x 60% Dmg.       |
| **C157** | Cultista   | Mag  | Máscara cabra. | Mald: -20% Atk (15s).    |
| **C158** | Soldado    | Phys | Desertor.      | União: +20% Def Al.      |
| **C159** | Assassino  | Phys | Capa verde.    | Sangue: 5%/s (10s).      |
| **C160** | Pirata Rio | Phys | Tapa olho.     | Gancho: Puxa (12s).      |
| **C161** | Contraband | Phys | Fardos.        | Carga: 130% Lento.       |
| **C162** | Ninja      | Phys | Preto.         | Shuriken: 80% (Veloz).   |
| **C163** | Monge R    | Phys | Robe sujo.     | Palma: Knockback (10s).  |
| **C164** | Fanático   | Mag  | Livro fogo.    | Julgar: 140% (12s).      |
| **C165** | Necromante | Mag  | Pálido.        | Erguer: Cria Esq Raso.   |
| **C166** | Caçador    | Phys | Besta/Rede.    | Rede: Imobiliza (20s).   |
| **C167** | Duelista   | Phys | Vendado.       | Riposte: Contra-atk.     |
| **C168** | Executor   | Phys | Capuz/Machad.  | Decap: 300% (HP <20%).   |
| **C169** | Besta Rep  | Phys | Mecânica.      | Tiro: 3x 40% (10s).      |
| **C170** | Espião     | Phys | Camponês.      | Veneno: Infecção Sile.   |

### Aquáticos (15)

| ID       | Nome        | Atk  | Visual        | Skill (Dmg/Ef/CD)         |
| :------- | :---------- | :--- | :------------ | :------------------------ |
| **C171** | Piranha     | Phys | Vermelho.     | Enxame: +10% Dmg/un.      |
| **C172** | Lula Pân    | Phys | Verde.        | Tinta: Miss 50% (15s).    |
| **C173** | Homem-Peixe | Phys | Lança osso.   | Estocada: 120% (Veloz).   |
| **C174** | Sereia M    | Mag  | Algas.        | Canto: Sono 2s (20s).     |
| **C175** | Cobra D'Á   | Phys | Listrada.     | Paralisia: 1s (10s).      |
| **C176** | Elem Água   | Mag  | Corrente.     | Bolha: Silêncio 3s (15s). |
| **C177** | Tubarão C   | Phys | Híbrido.      | Mordida: 160% (12s).      |
| **C178** | Tartaruga   | Phys | Coral.        | Retrair: Def +80% (20s).  |
| **C179** | Medusa V    | Mag  | Luz.          | Choque: 110% AoE (15s).   |
| **C180** | Polvo G     | Phys | Gigante.      | Agarrar: 2 alvos (25s).   |
| **C181** | Sapo G      | Phys | Língua G.     | Língua: Puxa/Stun (10s).  |
| **C182** | Dugongo S   | Mag  | Negro.        | Eco: Stun 1s AoE (18s).   |
| **C183** | Esp. Lago   | Mag  | Água pura.    | Cura: 20% Heal (15s).     |
| **C184** | Crustáceo   | Phys | Caranguejo F. | Pinça: Quebra Escudo.     |
| **C185** | Nereida     | Mag  | Escamas N.    | Maldição: Drena 2%.       |

### Plantas/Fungos (15)

| ID       | Nome       | Atk  | Visual         | Skill (Dmg/Ef/CD)         |
| :------- | :--------- | :--- | :------------- | :------------------------ |
| **C186** | Cogumelo E | Mag  | Manchado spot. | Explode: 140% AoE.        |
| **C187** | Cogumelo A | Mag  | Roxo.          | Confuse: Atk Al (4s).     |
| **C188** | Planta Esp | Phys | Arbusto.       | Sangue: 3%/s (8s).        |
| **C189** | Lótus N    | Mag  | Aura roxa.     | Veneno: 6%/s (15s).       |
| **C190** | Raiz And   | Phys | Galhos.        | Tropeço: Pula turno (12). |
| **C191** | Fungo Pod  | Mag  | Fumaça.        | Doença: -20% Stats.       |
| **C192** | Trepadeira | Phys | Cipó dentes.   | Stun 2s (15s).            |
| **C193** | Árvore M   | Phys | Rosto tronco.  | Esmagar: 130% (10s).      |
| **C194** | Broto Som  | Mag  | Pétalas N.     | Dreno: 5 Mana (10s).      |
| **C195** | Muda Ent   | Phys | 1.5 metro.     | Chute: Knock (8s).        |
| **C196** | Cacto      | Phys | Redondo.       | Espinhos: Reflete 15%.    |
| **C197** | Samambaia  | Mag  | Prateada.      | Clarão: Miss 50% (20s).   |
| **C198** | Musgo Par  | Mag  | Verde tapete.  | Dreno: 2% p/ Cura Al.     |
| **C199** | Orquídea   | Phys | Boca aberta.   | Mordida: 120% (10s).      |
| **C200** | Limo       | Phys | Gelatina V.    | Ácido: Reduz Def (10s).   |

---

**[BESTIÁRIO TÉCNICO COMPLETO FINALIZADO - 260 UNIDADES DETALHADAS PARA PROGRAMAÇÃO]**
