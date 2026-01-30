# PARTE VII: ARQUITETURA DE NARRATIVA GENERATIVA (GenAI)

## 16. O MOTOR DE NARRATIVA "INFINITE TALES"

### 16.1 Visão Geral: O Problema da "Fadiga de Texto"

Em jogos de simulação profunda (_Dwarf Fortress_, _Rimworld_), o jogador assiste a milhares de eventos. O método tradicional de **Templates de Texto** (ex: `"{HERO} atacou {MONSTER} com {WEAPON}"`) falha rapidamente porque o cérebro humano detecta padrões em poucas horas. Para um jogo projetado para **500+ horas**, a repetição quebra a imersão.

### 16.2 A Solução: Separação de Poderes (Dois Cérebros)

Para garantir variedade infinita sem alucinações (erros de lógica), o jogo opera com dois "cérebros" distintos:

1. **Cérebro Lógico (Determinístico - Deno/PostgreSQL):**
   - Decide **O QUE** acontece.
   - Responsável pela Verdade (Matemática, Regras, Drops).
   - _Exemplo:_ "Kaelen acertou um Crítico de 45 de dano no Goblin."

2. **Cérebro Criativo (Probabilístico - WebLLM/Llama 3.2):**
   - Decide **COMO** isso é contado.
   - Responsável pelo Estilo (Sensorial, Emocional, Descritivo).
   - _Exemplo:_ "A lâmina assobiou no ar, partindo a defesa do Goblin com um estalo brutal."

---

## 17. INFRAESTRUTURA DE DADOS (PostgreSQL & RAM)

Abandonamos arquivos estáticos (JSON) em favor de um banco relacional robusto para permitir modding, tradução e expansão facilitada.

### 17.1 Schema do Banco de Dados (`narrative_tags`)

Em vez de frases prontas, armazenamos **"Conceitos Atômicos"** (Tags).

```sql
CREATE TABLE narrative_tags (
    id SERIAL PRIMARY KEY,
    category VARCHAR(50) NOT NULL,  -- ex: 'WEATHER', 'WEAPON', 'EMOTION'
    key_name VARCHAR(50) NOT NULL,  -- ex: 'RAIN', 'SWORD', 'ANGRY'
    tag_content TEXT NOT NULL,      -- ex: 'cheiro de ozônio', 'metal cantando'
    weight INT DEFAULT 1            -- Probabilidade de sorteio
);

-- Índices para busca rápida
CREATE INDEX idx_narrative_lookup ON narrative_tags(category, key_name);
```

**Exemplo de Dados:**

| id  | category | key_name | tag_content      | weight |
| --- | -------- | -------- | ---------------- | ------ |
| 1   | WEATHER  | RAIN     | cheiro de ozônio | 3      |
| 2   | WEATHER  | RAIN     | gotas frias      | 2      |
| 3   | WEAPON   | SWORD    | metal cantando   | 5      |
| 4   | WEAPON   | SWORD    | reflexo prateado | 3      |
| 5   | EMOTION  | FOCUSED  | respiração lenta | 4      |
| 6   | EMOTION  | FOCUSED  | olhar fixo       | 4      |
| 7   | CRITICAL | HIT      | osso quebrando   | 6      |
| 8   | CRITICAL | HIT      | devastação       | 5      |

### 17.2 Estratégia de Cache (Deno In-Memory)

Como a narrativa é gerada a cada evento de combate (milissegundos), não podemos consultar o banco a cada _hit_.

**Fluxo de Cache:**

1. **Boot:** Ao iniciar o servidor Deno, ele carrega `SELECT * FROM narrative_tags` para a memória RAM.
2. **Estrutura em RAM:** Um `Map<Category, Map<Key, string[]>>` otimizado para leitura O(1).
3. **Hot-Reload:** Se o banco for atualizado (ex: novo patch de tradução), o Deno recarrega o cache sem reiniciar o jogo.

**Código Deno:**

```typescript
// narrative-cache.service.ts
import { Pool } from "https://deno.land/x/postgres/mod.ts";

class NarrativeCache {
  private cache: Map<string, Map<string, string[]>> = new Map();

  async loadCache(pool: Pool) {
    const result = await pool.query(
      "SELECT category, key_name, tag_content, weight FROM narrative_tags ORDER BY category, weight DESC",
    );

    for (const row of result.rows) {
      const [category, key, content] = row;

      if (!this.cache.has(category)) {
        this.cache.set(category, new Map());
      }

      if (!this.cache.get(category)!.has(key)) {
        this.cache.get(category)!.set(key, []);
      }

      this.cache.get(category)!.get(key)!.push(content);
    }

    console.log(`✅ Cache carregado: ${this.cache.size} categorias`);
  }

  getRandomTags(category: string, key: string, count: number = 3): string[] {
    const tags = this.cache.get(category)?.get(key) || [];
    return this.shuffle(tags).slice(0, count);
  }

  private shuffle<T>(array: T[]): T[] {
    const shuffled = [...array];
    for (let i = shuffled.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
    }
    return shuffled;
  }
}

export const narrativeCache = new NarrativeCache();
```

---

## 18. O CONCEITO DE ENTROPIA E "SOPA DE TAGS"

### 18.1 Por que não usar Templates?

Templates são rígidos. A **"Sopa de Tags"** é fluida.
Em vez de dizer à IA: _"Escreva sobre um ataque de espada"_, nós damos a ela **ingredientes aleatórios** do contexto atual.

### 18.2 O Algoritmo do "Liquidificador" (Combinatória)

A cada evento, o backend Deno realiza um sorteio de entropia:

**1. Coleta de Contexto:** O sistema identifica o estado atual.

- _Clima:_ Chuva (`RAIN`)
- _Arma:_ Espada (`SWORD`)
- _Humor:_ Focado (`FOCUSED`)
- _Intensidade:_ Crítico (`CRITICAL`)

**2. Amostragem Aleatória:** O sistema pega **3 a 4 tags aleatórias** do pool em RAM para cada categoria.

- _Sorteio Turno 1:_ `['lama', 'metal cantando', 'respiração lenta', 'osso quebrando']`
- _Sorteio Turno 2:_ `['gotas frias', 'reflexo prateado', 'olhar fixo', 'devastação']`

**Código de Geração:**

```typescript
// combat-narrator.service.ts
interface CombatEvent {
  hero: string;
  monster: string;
  weapon: string;
  weather: string;
  isCritical: boolean;
}

function generateNarrativePrompt(event: CombatEvent): string {
  const tags: string[] = [];

  // Sortear tags do clima
  tags.push(...narrativeCache.getRandomTags("WEATHER", event.weather, 2));

  // Sortear tags da arma
  tags.push(...narrativeCache.getRandomTags("WEAPON", event.weapon, 2));

  // Sortear tags de intensidade
  if (event.isCritical) {
    tags.push(...narrativeCache.getRandomTags("CRITICAL", "HIT", 2));
  }

  return `
    Contexto: ${event.isCritical ? "Ataque Crítico" : "Ataque Normal"}.
    Ator: ${event.hero}. Alvo: ${event.monster}.
    Tags Obrigatórias: [${tags.join(", ")}].
  `.trim();
}
```

### 18.3 A Matemática da Variedade

Se tivermos apenas 10 tags por categoria e usarmos 4 categorias:
`10 * 10 * 10 * 10` = **10.000 combinações únicas de prompt** para o _mesmo_ tipo de ataque.

Se a IA gerar 100 textos diferentes para cada prompt (Temperature 0.6): **144.000 textos únicos**.

### 18.4 Sopa de Tags na Geração de Backstory (História Pregressa)

A "Sopa" não serve apenas para combate. Ela é fundamental para criar a alma dos heróis no momento do recrutamento. O jogo sorteia tags de diferentes categorias de vida (Origem, Trauma, Ambição, Medo) para compor um personagem tridimensional.

**Exemplo de Geração de Herói (Sopa de Criação):**

- **Nome Gerado:** Kaelen, o Quebrado
- **Tags Sorteadas:**
  - `ORIGIN:` [Filho de Ferreiro, Vila Queimada]
  - `TRAUMA:` [Medo de Fogo, Cicatriz no Rosto]
  - `AMBITION:` [Reconstruir o Lar, Proteger os Fracos]
  - `SECRET:` [Roubou a espada do mestre]

**Prompt Gerado para a LLM:**

> "Crie uma breve biografia (2 frases) para Kaelen. O user quer um tom melancólico. Use as tags: [Vila Queimada, Medo de Fogo, Roubou a espada]."

**Resultado Narrativo:**

> "Kaelen empunha uma lâmina que não é sua, roubada das cinzas da forja de seu pai. Ele luta não pela glória, mas para abafar o estalo da madeira queimando que ainda ouve em seus pesadelos."

Isso cria um herói com **motivações reais**. O sistema de jogo (Lógico) lerá a tag `Medo de Fogo` e aplicará um debuff quando ele lutar contra Dragões, fechando o ciclo entre a narrativa gerada e a mecânica de jogo.

### 18.5 Expansão: Sopa Universal (Ouro em Palavras)

A técnica de "Sopa de Tags" permeia todos os sistemas do Majesty, convertendo dados frios em calor narrativo e mecânico.

#### A. Sopa de Mundo (World Gen & Clima)

O ambiente não é apenas um fundo estático. As tags de clima e bioma alteram a percepção e as regras.

- **Tags Sorteadas:** `[Chuva Ácida, Pântano, Névoa Tóxica]`
- **Narrativa Gerada:** "A chuva chia ao tocar a armadura de Kaelen, o metal escurecendo sob a corrosão."
- **Efeito de Gameplay:** Tags como `Ácida` ativam a regra `Corrosion_Tick`, danificando durabilidade de armaduras a cada turno.

#### B. Sopa de Loot (A Alma dos Itens)

Cada item lendário nasce de uma sopa de tags baseada no momento do drop (Quem matou? Onde? Como?).

- **Contexto:** Kaelen matou o Rei Lich com um acerto crítico de fogo.
- **Tags Sorteadas:** `[Ossos, Cinzas, Realeza Caída, Chama Eterna]`
- **Item Gerado:** _Coroa de Cinzas do Rei Morto_
- **Descrição:** "Ainda quente ao toque, esta coroa de osso cheira a soberania queimada."
- **Stats Derivados:** A tag `Chama Eterna` adiciona o efeito `Burn Chance +10%`.

#### C. Sopa Social (Banter & Fofoca)

Conversas entre heróis (Banter) usam tags de personalidade e histórico recente.

- **Contexto:** Lila (Gananciosa) e Kaelen (Honrado) descansando após batalha.
- **Tags:** `[Roubo Recente, Cicatriz Nova (Kaelen), Saco de Ouro (Lila)]`
- **Diálogo Gerado:**
  - _Lila:_ "Bela cicatriz, Kaelen. Combina com sua carteira vazia."
  - _Kaelen:_ "E esse ouro pesa na sua consciência, ladra?"
- **Efeito:** Gera um log de `Affinity Change: -5` (Rivalidade).

#### D. Sopa de Logs Contextuais (O Historiador)

O sistema gera resumos inteligentes de períodos longos, condensando centenas de linhas de log em um parágrafo coerente.

- **Input:** [Kaelen matou 50 Goblins, Kaelen quase morreu 2x, Kaelen ganhou 500g]
- **Tags:** `[Massacre, Sobrevivente, Riqueza Súbita]`
- **Log de Fim de Dia:** "O dia foi um banho de sangue lucrativo para Kaelen, que emergiu de uma montanha de cadáveres goblins com os bolsos cheios e a armadura quase destruída."

---

## 19. CONCLUSÃO DA ARQUITETURA

Esta arquitetura resolve o trilema da narrativa em jogos:

### ✅ Vantagens do Modelo Híbrido

1.  **Imprevisibilidade Controlada:** A IA gera prosa infinita, mas o jogo dita as regras, impedindo alucinações.
2.  **Profundidade Psicológica:** Através das Sopas de Tags de Backstory e Personalidade, os heróis deixam de ser números e viram personagens.
3.  **Custo Zero:** Todo o processamento é local, usando a GPU do jogador, sem depender de APIs externas pagas.
4.  **Imersão Total:** O jogador não vê números subindo, vê histórias acontecendo.

**Métrica 1: Taxa de Repetição**

- Objetivo: < 0.1% em 100 horas de jogo
- Medição: Hash de cada texto gerado, detector de duplicatas

**Métrica 2: Qualidade Narrativa**

- Objetivo: 80% dos textos classificados como "Imersivos" por playtesters
- Medição: Survey pós-sessão

**Métrica 3: Performance**

- Objetivo: 95% das gerações < 150ms
- Medição: Telemetria integrada

---
