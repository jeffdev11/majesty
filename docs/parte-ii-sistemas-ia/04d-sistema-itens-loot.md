# 4.9. SISTEMA DE ITENS E LOOT: A ARMA E A LENDA

O sistema de itens em _Heroes of Majesty_ é projetado para criar histórias, não apenas estatísticas. Cada item encontrado no mundo conta uma parte da saga procedural do reino.

## 4.9.1 Filosofia de Design e Escalonamento

Os heróis em _Majesty_ têm um **Level Cap rígido no Nível 10**. Isso significa que a escalada de poder não pode ser infinita ou baseada em números inflacionados (ex: danos de milhões). O progresso é **horizontal e qualitativo**.

- **Level Cap:** Nível 10 (Heroi) / Nível 10 (Item).
- **Tiers de Loot:** Diretamente ligados aos **4 Ciclos do Mundo**.
- **Durabilidade:** Itens NÃO quebram, mas podem ser "consumidos" ou "sacrificados" para upgrades.

### Escalonamento por Ciclo

Os itens encontrados no mundo progridem em poder junto com os Ciclos da Campanha.

| Ciclo             | Tier do Item    | Nível do Item | Raridade Comum    | Descrição Visual                                           |
| :---------------- | :-------------- | :------------ | :---------------- | :--------------------------------------------------------- |
| **1. Primavera**  | **Tier 1 (T1)** | Lvl 1-3       | Comum / Incomum   | Ferro, Couro, Madeira simples. Limpo e novo.               |
| **2. Verão**      | **Tier 2 (T2)** | Lvl 4-6       | Raro              | Aço, Malha, Runas brilhantes. Aspecto de veterano.         |
| **3. Inverno**    | **Tier 3 (T3)** | Lvl 7-9       | Épico             | Mithril, Obsidiana, Gelo eterno. Aura mágica visível.      |
| **4. Apocalipse** | **Tier 4 (T4)** | Lvl 10 (MAX)  | Lendário / Mítico | Adamantina, Fogo Sagrado. Itens com "nome próprio" e alma. |

---

## 4.9.2 Tipos de Itens

Os heróis possuem slots fixos de equipamento. A simplicidade é chave para a interface de log/terminal.

### Slots de Equipamento

1.  **Arma Principal (Main Hand):** Define o dano base e tipo de ataque.
2.  **Armadura (Body):** Define a defesa física e resistência.
3.  **Acessório (Relic):** Define bônus especiais e mecânicas passivas únicas.

### 1. Armas (Weapons)

As armas definem o "flavor" do combate.

| Tipo                 | Classes            | Stat Principal   | Exemplo T1                  | Exemplo T4                             |
| :------------------- | :----------------- | :--------------- | :-------------------------- | :------------------------------------- |
| **Espada Longa**     | Warrior, Paladin   | Attack           | Espada de Ferro (30 Dmg)    | _Lâmina do Rei Caído_ (300 Dmg + Holy) |
| **Cajado**           | Mage, Druid, Necro | Magic Attack     | Cajado de Carvalho (25 Mag) | _Vazio Eterno_ (280 Mag + Mana Regen)  |
| **Arco Curto/Longo** | Archer, Elf        | Ranged Dmg       | Arco de Caça (28 Dmg)       | _Sussurro do Vento_ (290 Dmg + Speed)  |
| **Adagas**           | Rogue              | Critical / Speed | Adaga Enferrujada (20 Dmg)  | _Presas de Viper_ (250 Dmg + Poison)   |
| **Instrumento**      | Bard               | Inspire / Buff   | Alaúde Velho (+10% Buff)    | _Harpa de Apolo_ (+100% Buff Effect)   |
| **Punhos/Manoplas**  | Monk               | Combo / Speed    | Faixas de Pano (+5% Speed)  | _Punhos de Dragão_ (+50% Dmg + Fire)   |

### 2. Armaduras (Armor)

| Tipo               | Classes                       | Stat Principal | Foco                                      |
| :----------------- | :---------------------------- | :------------- | :---------------------------------------- |
| **Placas (Heavy)** | Warrior, Paladin              | Defense        | Redução de Dano Físico Bruto.             |
| **Couro (Medium)** | Rogue, Archer, Monk           | Evasion        | Equilíbrio entre Defesa e Esquiva.        |
| **Tecido (Light)** | Mage, Druid, Necro, Bard, Elf | Mana / Resist  | Bônus de Mana Regen e Resistência Mágica. |

### 3. Acessórios (Relics) - O Loot que Importa

Enquanto armas e armaduras dão stats brutos, os acessórios mudam _como_ o herói joga.

| Nome (Exemplo)           | Efeito Passivo                             | Raridade |
| :----------------------- | :----------------------------------------- | :------- |
| **Anel da Fortuna**      | +20% Ouro encontrado em monstros.          | Incomum  |
| **Botas de Hermes**      | Permite fugir de combate com 100% chance.  | Raro     |
| **Amuleto de Sangue**    | Cura 5% HP ao matar inimigos.              | Épico    |
| **Orbe da Onisciência**  | Revela o mapa 2x mais rápido (Fog of War). | Lendário |
| **Coração de Tarrasque** | Revive 1x por batalha com 50% HP.          | Mítico   |

### 4. Consumíveis (Além de Poções)

Itens que heróis compram ou encontram e usam automaticamente.

- **Poção de Vida (P/M/G):** Cura HP instantâneo.
- **Poção de Mana (P/M/G):** Restaura Mana.
- **Elixir de Força:** +20% Attack por 10 min (200 Turnos).
- **Pó de Desaparecimento:** Fuga instantânea (Ladino/Mago).
- **Kit de Reparo:** Repara equipamento em campo (sem voltar vila).
- **Tocha:** Ilumina o Local no escuro (Ciclo Dia/Noite).

---

## 4.9.3 Geração Procedural: Sufixos e Prefixos

Para criar variedade infinita dentro do level cap limitado, os itens usam um sistema de afixos.

**Nome do Item = [Prefixo] + [Item Base] + [Sufixo]**

Ex: _Espada Longa Flamejante da Rapidez_

### Prefixos (Qualidade/Material)

Definem o nível base de stats do item.

| Prefixo         | Efeito Stats | Tier      |
| :-------------- | :----------- | :-------- |
| **Enferrujado** | -10%         | T0 (Lixo) |
| **Comum**       | +0%          | T1        |
| **Reforçado**   | +10%         | T1/T2     |
| **Mestre**      | +20%         | T2        |
| **Ancião**      | +30%         | T3        |
| **Divino**      | +50%         | T4 (Max)  |

### Sufixos (Encantamento)

Adicionam efeitos secundários ou elementais.

| Sufixo             | Efeito                    |
| :----------------- | :------------------------ |
| **...do Urso**     | +HP Max                   |
| **...da Águia**    | +Precisão/Crítico         |
| **...do Gelo**     | Aplica Slow (Lentidão)    |
| **...da Fênix**    | Regeneração de HP passiva |
| **...do Vampiro**  | Roubo de Vida (Lifesteal) |
| **...da Ganância** | +Geração de Ouro          |

---

## 4.9.4 Materiais e Crafting Simplificado

Embora o jogador não "crafte" diretamente (quem crafta é o Ferreiro), o sistema de materiais alimenta a economia.

### Materiais de Drop (Loot de Monstros)

Monstros não dropam apenas ouro. Eles dropam materiais que os heróis **vendem** para o Ferreiro ou Alquimista. O jogador (Rei) pode então usar esses estoques para encomendar itens melhores nas lojas.

| Material             | Origem (Mob)  | Uso                        |
| :------------------- | :------------ | :------------------------- |
| **Couro de Lobo**    | Lobos         | Armaduras Leves T1         |
| **Presa de Aranha**  | Aranhas       | Adagas venenosas / Flechas |
| **Ferro Negro**      | Goblins       | Armas T1                   |
| **Pó de Osso**       | Esqueletos    | Poções de Necromancia      |
| **Essência de Fogo** | Elementais    | Encantamentos de Fogo      |
| **Escama de Dragão** | Dragão (Boss) | Armadura Lendária T4       |

### A "Corrente de Upgrade"

1.  **Herói mata Lobo:** Dropa "Couro de Lobo".
2.  **Herói vende:** Ganha Ouro na loja.
3.  **Loja estoca:** O Ferreiro agora tem "1x Couro de Lobo".
4.  **Rei (Jogador):** Vê notificação "Novo Equipamento Disponível: Armadura de Lobo".
5.  **Rei Pesquisa:** Gasta Ouro para desbloquear a receita.
6.  **Heróis Compram:** O item agora aparece na loja para todos os heróis comprarem.

Isso cria um ciclo onde **caçar monstros específicos** libera equipamentos temáticos para o reino.

---

## 4.9.5 Itens Lendários (Lore Items)

Alguns itens não são gerados proceduralmente. Eles são únicos e possuem uma história. Só existe 1 cópia por partida.

**Exemplos:**

1.  **A Espada da Pedra (Excalibur):**
    - _Origem:_ Evento aleatório em Floresta (Tier 2).
    - _Efeito:_ +100 Dano. O portador se torna o "Líder" (todos heróis ganham +10 Lealdade a ele).
    - _Maldição:_ Se o portador morrer, a espada retorna à pedra em local aleatório.

2.  **O Anel de Giges:**
    - _Origem:_ Drop raro de Ladino Chefe (Tier 3).
    - _Efeito:_ Invisibilidade permanente fora de combate.
    - _Maldição:_ Ethics cai para 0.1 lentamente ao longo dos dias.

3.  **Necronomicon:**
    - _Origem:_ Drop de Lich (Tier 3).
    - _Efeito:_ Skills de Necromante custam 0 Mana.
    - _Maldição:_ O usuário invoca esqueletos hostis aleatoriamente ao seu redor quando dorme.

---

## 4.9.6 Log de Loot (Exemplo UX)

```
[COMBAT] ⚔️ Kaelen derrotou Ogro Berserker! (XP +450)
[LOOT] ✨ Kaelen encontrou:
       ├─ 💰 150 Ouro
       ├─ 🦴 2x Osso Grande (Material)
       └─ 🗡️ [RARO] Espada Bastarda da Fúria (T2)
          (Dano: 95 | Efeito: +10% Speed se HP < 50%)
[EQUIP] 🦾 Kaelen equipou a nova espada! (Atk 60 -> 95)
```

---
