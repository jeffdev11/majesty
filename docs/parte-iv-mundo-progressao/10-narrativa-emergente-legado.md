# 10. NARRATIVA EMERGENTE E LEGADO

## 10.1 Crônicas do Reino: O PDF Ilustrado

### O Sistema de Legado Permanente

Ao final de cada partida (vitória ou derrota no Dia 150), o jogo gera um **PDF ilustrado** contendo a história única daquela partida.

### Conteúdo das Crônicas

```
═══════════════════════════════════════════
     CRÔNICAS DO REINO DE [PLAYER_NAME]
       Partida #7 - Seed: a7x9k2
═══════════════════════════════════════════

CAPÍTULO 1: A FUNDAÇÃO (Dias 1-50)
───────────────────────────────────────────

[IMAGEM: Vila inicial gerada por IA]

No primeiro dia, o reino era apenas uma vila
cercada por névoa. Sir Kaelen foi o primeiro
herói a jurar lealdade. Ele, um guerreiro sem
medo, enfrentou sozinho uma horda de 12 Goblins
no Dia 5.

[ESTATÍSTICA]
Heróis recrutados: 8
Ouro acumulado: 2,400
Mortes: 1 (Gandalf, Dia 23, morto por Ogro)

[EVENTO MEMORÁVEL]
Dia 18: Lila roubou o kill de Kaelen.
Iniciou-se a rivalidade que duraria 80 dias.

───────────────────────────────────────────

CAPÍTULO 2: A EXPANSÃO (Dias 51-100)
───────────────────────────────────────────

[IMAGEM: Posto Avançado na floresta]

Kaelen fundou o Posto Norte no Dia 63, levando
Lila e Elara. A tensão entre ele e Lila crescia.
No Dia 71, após salvar Lila de um Troll, a
afinidade entre eles aumentou de -20 para +40.

[SUSSURRO GERADO]
"Dizem que Lila chorou ao ver Kaelen defendê-la.
Foi a primeira vez que confiou em alguém."

───────────────────────────────────────────

CAPÍTULO 3: O APOCALIPSE (Dias 101-150)
───────────────────────────────────────────

[IMAGEM: Castelo Amaldiçoado]

Gandalf retornou. Mas não como aliado. O feiticeiro
foi corrompido e se tornou o Rei Vilão. A batalha
final durou 3 dias. Kaelen, em seu último suspiro,
desferiu o golpe final.

[RESULTADO FINAL]
Vitória! Reino Salvo.
Heróis Sobreviventes: 5/12
Herói MVP: Sir Kaelen (87 kills, 2 mortes)
Duo Inseparável: Kaelen & Lila (Affinity: +95)

───────────────────────────────────────────
Partida concluída em 14h32min.
Score Final: S (Lendário)
───────────────────────────────────────────
```

### Geração de Imagens

As **imagens são geradas por IA** (Stable Diffusion/DALL-E) usando prompts dos eventos:

```typescript
const prompt = `Fantasy pixel art, ${event.hero} fighting ${event.monster} 
in ${event.location}, dramatic lighting, retro game style`;

const image = await generateImage(prompt);
chronicle.addImage(image, event.day);
```

---

## 10.2 Sonhos e Sussurros: Balões de Pensamento

### Sistema de "Thought Bubbles"

Heróis exibem **pensamentos aleatórios** baseados em personalidade e eventos recentes.

#### Triggers de Sussurros

| Situação                 | Sussurro Gerado                                                                          |
| ------------------------ | ---------------------------------------------------------------------------------------- |
| Após matar boss sozinho  | _"Sou invencível! Talvez eu não precise desses fracos..."_ (Power Alto)                  |
| Ver aliado morrer        | _"Poderia ter salvado ele... mas o baú estava tão perto."_ (Resource Alto, Ethics Baixo) |
| Receber carta do jogador | _"O Rei lembrou de mim! Talvez eu seja especial."_                                       |
| Noite sem tochas         | _"Odeio a escuridão... minha mãe sempre dizia para evitar florestas à noite."_           |

### Visualização

```
P5: TIMELINE SOCIAL
[12:45] 💭 Sir Kaelen pensa: "Preciso provar meu valor..."
[12:46] Kaelen atacou Ogro Elite (HP: 100%)
[12:47] 💀 Kaelen foi derrotado.
[12:48] 💭 Kaelen (fantasma): "Argh... orgulho me matou."
```

---

## 10.3 Títulos e Epítetos Dinâmicos

### Sistema de Conquistas Narrativas

Heróis ganham **títulos** baseados em feitos:

| Título                 | Condição                  | Efeito                 |
| ---------------------- | ------------------------- | ---------------------- |
| **"O Bravo"**          | Derrotar 3 elites sozinho | +5% Attack             |
| **"Matador de Ogros"** | Matar 20 Ogros            | +20% dano vs Ogros     |
| **"O Covarde"**        | Fugir 10x de combates     | -15 Affinity com todos |
| **"Salvador"**         | Salvar 5 aliados da morte | +15 Affinity com todos |
| **"O Corrompido"**     | Trair o reino             | Torna-se boss          |

### Visualização no Roster

```
P1: LISTA DE HERÓIS
[1] Sir Kaelen 🏆
    "O Bravo" | "Matador de Ogros"
    HP: 85% | Lvl 9
```

---

## 10.4 Modo Historiador: Replay com Onisciência

### O Conceito

Após completar a partida, o jogador pode **assistir a um replay** com visão total.

### Funcionalidades

#### 1. Visão Onisciente

- Remove Névoa de Guerra
- Mostra **tudo** que aconteceu, mesmo longe da capital

#### 2. Filtros de Eventos

```
[F3] LIBRARY → MODO HISTORIADOR

Filtros disponíveis:
☑ Combates
☐ Comércio
☑ Diálogos
☐ Construções
☑ Eventos Raros

[Linha do Tempo]
Dia 1  ━━━━━━━━━━ Dia 50 ━━━━━━━━━ Dia 100 ━━━ Dia 150
  ^cursor (Dia 23: Morte de Gandalf)
```

#### 3. Câmera Livre

- Jogador pode "voar" pelo mapa
- Ver combates que heróis tiveram longe
- Descobrir segredos (ex: "Lila estava apaixonada por Kaelen desde o Dia 10!")

---

## 10.5 Ecos do Passado: Itens Lendários de Partidas Anteriores

### Sistema de Meta-Progressão

Heróis de partidas anteriores **deixam lendas** no mundo.

#### Mecânica

```typescript
// Ao final da partida
if (hero.kills > 50 && hero.survived) {
  const legendaryItem = {
    name: `${hero.name}'s ${hero.weapon.name}`,
    stats: hero.weapon.stats * 1.5,
    lore: `Forjada nas mãos de ${hero.name}, esta arma 
           derrotou ${hero.kills} inimigos.`,
  };

  saveToLegacyDatabase(legendaryItem);
}

// Em partidas futuras
const rareDrop = getRandomLegacyItem(); // 1% chance
spawnItem(rareDrop, randomLocation);
```

#### Exemplo de Drop

```
[LOOT RARO!]
Item encontrado: "Espada de Kaelen, O Bravo"
Origem: Partida #7 (sua partida anterior)
Stats: +50 Attack, +10% Crit
Lore: "Sir Kaelen, o lendário matador de ogros,
       empunhou esta lâmina por 87 dias antes de
       desaparecer nas névoas do tempo."
```

---

## 10.6 O Livro dos Mortos: Memorial Permanente

### Cada Herói Morto é Lembrado

No **[F3] LIBRARY → MEMORIAL**, há uma lista de **todos os heróis mortos** de todas as partidas.

```
═══════════════════════════════════════════
           MEMORIAL DOS CAÍDOS
═══════════════════════════════════════════

🕯️ Gandalf, O Sábio
   Partida: #7
   Nível: 5
   Morto por: Ogro das Cavernas
   Dia: 23
   Kills: 18
   Última palavra: "Cuidado com... *ugh*"

   [VER BIOGRAFIA] [VER ÚLTIMA BATALHA]

───────────────────────────────────────────

🕯️ Elara, A Arqueira
   Partida: #5
   Nível: 8
   Morto por: Dragão de Fogo
   Dia: 142
   Kills: 76
   Epíteto: "A Caçadora Silenciosa"

   [VER CRÔNICAS] [HONRAR] (-10 IP gera oração)
```

---

## 10.7 Amanaevements Narrativos (Conquistas)

### Conquistas Baseadas em História, Não Grind

| Conquista                    | Condição                                       | Raridade |
| ---------------------------- | ---------------------------------------------- | -------- |
| **"Novela Mexicana"**        | 5+ PvP entre heróis em uma partida             | Rara     |
| **"Pacifista Acidental"**    | Completar Ciclo 1 sem nenhuma morte            | Lendária |
| **"Traição Shakespeariana"** | Ter herói traidor que era amigo (+60 Affinity) | Épica    |
| **"O Nécio"**                | Enviar herói lvl 1 contra boss lvl 10          | Comum    |
| **"Dinastia"**               | Ter 3 itens lendários de partidas anteriores   | Mítica   |
| **"Último Suspiro"**         | Ganhar com apenas 1 herói vivo no Dia 150      | Lendária |

---

## 10.8 Compartilhamento Social

### Exportar e Mostrar Crônicas

```
[FIM DA PARTIDA]

Opções:
> [A] Salvar PDF localmente
> [B] Compartilhar link público (upload opcional)
> [C] Postar no Discord/Twitter (com screenshot)

[Se escolher B]
"Suas Crônicas foram publicadas!
Link: heroesofmajesty.com/chronicles/a7x9k2

Amigos podem ler e ver estatísticas (sem spoilers)."
```

---
