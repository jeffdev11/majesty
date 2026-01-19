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

Como a IA (Temperature 0.6) escreve cada combinação de forma diferente a cada vez, a repetição textual se torna **estatisticamente impossível**.

**Exemplo Real:**

Com apenas **50 tags no banco** distribuídas em 8 categorias:

- 6 tags de WEATHER
- 8 tags de WEAPON
- 6 tags de EMOTION
- 5 tags de CRITICAL
- ...

**Combinações possíveis:** `6 × 8 × 6 × 5` = **1.440 prompts únicos**

Se a IA gerar 100 textos diferentes para cada prompt (Temperature 0.6): **144.000 textos únicos**.

---

## 19. CONFIGURAÇÃO DO MODELO (WEBLLM)

### 19.1 O Modelo Escolhido

- **Modelo:** `Llama-3.2-3B-Instruct-q4f16_1-MLC`
- **Justificativa:** É o estado da arte para eficiência em _edge devices_. Ocupa ~2.2GB de VRAM, rodando confortavelmente em placas GTX 1060+ e iGPUs modernas (M1/M2/AMD RDNA), entregando qualidade narrativa superior a modelos 7B antigos.

**Requisitos:**

- GPU com suporte a WebGPU (Chrome 113+, Edge 113+)
- ~4GB de VRAM disponível (2.2GB modelo + overhead)
- Taxa de geração: ~15-30 tokens/segundo em GPUs mid-range

### 19.2 Parâmetros de Inferência (Calibrados)

Estas configurações são **obrigatórias** para evitar alucinações (poesia excessiva) ou textos cortados.

```typescript
const INFERENCE_CONFIG = {
  temperature: 0.6, // Criatividade controlada (0.8 é muito caótico, 0.4 é robótico)
  top_p: 0.9, // Corta caudas estatísticas improváveis
  max_tokens: 150, // Força brevidade (1-2 frases)
  stop: [
    // Vital para o Llama 3 parar de falar
    "<|eot_id|>",
    "User:",
    "\n\n",
  ],
};
```

**Por que esses valores?**

| Parâmetro     | Valor | Justificativa                                   |
| ------------- | ----- | ----------------------------------------------- | ---- | ---------------------------------- |
| `temperature` | 0.6   | Equilíbrio perfeito entre variedade e coerência |
| `top_p`       | 0.9   | Previne escolhas estatisticamente absurdas      |
| `max_tokens`  | 150   | 1-2 frases (30-60 palavras em português)        |
| `stop`        | `["<  | eot_id                                          | >"]` | Previne loop infinito do Llama 3.2 |

### 19.3 O System Prompt Otimizado (Few-Shot)

Este prompt foi testado exaustivamente para o **Llama 3.2 3B**. Ele usa a técnica _Few-Shot_ (dar exemplos) para "travar" o estilo do modelo no tom "Dark Fantasy/Visceral" do jogo.

```text
Você é o Motor de Narrativa do jogo "Heroes of Majesty". Converta dados do jogo em texto curto, visceral e medieval.

DIRETRIZES RÍGIDAS:
1. BREVIDADE: Máximo 1 ou 2 frases. Seja seco.
2. SEM POESIA: Não use metáforas como "dança da morte" ou "alma". Descreva sangue, metal, impacto e som.
3. SEM NÚMEROS: Nunca cite valores numéricos (HP, Dano).
4. USO DE TAGS: Incorpore os conceitos enviados entre colchetes [ ] de forma natural.
5. PLACEHOLDERS: Mantenha {HERO} e {MONSTER} exatos.

EXEMPLOS DE ESTILO (Copie este padrão):

User: Contexto: Ataque Crítico. Tags: [lama, estalo seco, costelas].
Assistant: {HERO} firma o pé na lama e enterra a arma, quebrando as costelas de {MONSTER} com um estalo seco.

User: Contexto: Magia de Fogo. Tags: [cheiro de enxofre, pele derretendo, clarão].
Assistant: Um clarão cega o campo enquanto o cheiro de enxofre e pele derretendo emana de {MONSTER}.

User: Contexto: Banter (Ladrão para Guerreiro). Tags: [ouro, lento, ferrugem].
Assistant: "Lento demais, pilha de ferrugem. Esse ouro já tem dono."

Responda apenas com o texto narrativo final.
```

**Por que Few-Shot funciona?**

Modelos pequenos (3B) não têm "memória de longo prazo" como GPT-4. Few-Shot ensina o padrão **no contexto imediato**, funcionando como "mini-treinamento" em cada chamada.

---

## 20. IMPLEMENTAÇÃO TÉCNICA (ANGULAR + WEBGPU)

### 20.1 Serviço de IA (`llm.service.ts`)

Este serviço gerencia a WebGPU e mantém o modelo aquecido na memória do navegador.

```typescript
import { Injectable, signal } from "@angular/core";
import {
  CreateMLCEngine,
  MLCEngine,
  InitProgressCallback,
} from "@mlc-ai/web-llm";

// Configuração Travada para Produção
const MODEL_ID = "Llama-3.2-3B-Instruct-q4f16_1-MLC";
const SYSTEM_PROMPT = `Você é o Motor de Narrativa do jogo "Heroes of Majesty". Converta dados do jogo em texto curto, visceral e medieval.

DIRETRIZES RÍGIDAS:
1. BREVIDADE: Máximo 1 ou 2 frases. Seja seco.
2. SEM POESIA: Não use metáforas como "dança da morte" ou "alma". Descreva sangue, metal, impacto e som.
3. SEM NÚMEROS: Nunca cite valores numéricos (HP, Dano).
4. USO DE TAGS: Incorpore os conceitos enviados entre colchetes [ ] de forma natural.
5. PLACEHOLDERS: Mantenha {HERO} e {MONSTER} exatos.

EXEMPLOS DE ESTILO (Copie este padrão):

User: Contexto: Ataque Crítico. Tags: [lama, estalo seco, costelas].
Assistant: {HERO} firma o pé na lama e enterra a arma, quebrando as costelas de {MONSTER} com um estalo seco.

User: Contexto: Magia de Fogo. Tags: [cheiro de enxofre, pele derretendo, clarão].
Assistant: Um clarão cega o campo enquanto o cheiro de enxofre e pele derretendo emana de {MONSTER}.

User: Contexto: Banter (Ladrão para Guerreiro). Tags: [ouro, lento, ferrugem].
Assistant: "Lento demais, pilha de ferrugem. Esse ouro já tem dono."

Responda apenas com o texto narrativo final.`;

@Injectable({ providedIn: "root" })
export class LlmService {
  private engine: MLCEngine | null = null;

  // Sinais Reativos para UI
  public isReady = signal(false);
  public progress = signal(0); // 0 a 100%
  public currentAction = signal(""); // "Baixando shaders", "Carregando pesos"

  async init() {
    if (this.engine) return;

    const initCallback: InitProgressCallback = (report) => {
      this.progress.set(report.progress * 100);
      this.currentAction.set(report.text);
    };

    try {
      this.engine = await CreateMLCEngine(MODEL_ID, {
        initProgressCallback: initCallback,
        logLevel: "WARN", // Reduz poluição no console
      });
      this.isReady.set(true);
      console.log("✅ Llama 3.2 3B carregado na GPU");
    } catch (e) {
      console.error("❌ WebGPU não suportada ou erro de carga", e);
      // Implementar Fallback para texto estático aqui
      this.fallbackToStaticText();
    }
  }

  async generateFlavorText(userPrompt: string): Promise<string> {
    if (!this.engine) {
      return this.getFallbackText();
    }

    try {
      const reply = await this.engine.chat.completions.create({
        messages: [
          { role: "system", content: SYSTEM_PROMPT },
          { role: "user", content: userPrompt },
        ],
        temperature: 0.6,
        top_p: 0.9,
        max_tokens: 150,
        stop: ["<|eot_id|>", "User:", "\n\n"],
      });

      return reply.choices[0].message.content || "";
    } catch (e) {
      console.warn("⚠️ Erro na geração, usando fallback", e);
      return this.getFallbackText();
    }
  }

  private fallbackToStaticText() {
    // Modo de compatibilidade para GPUs sem WebGPU
    console.warn("⚠️ Modo Fallback ativado - usando textos estáticos");
  }

  private getFallbackText(): string {
    // Pool de textos genéricos como backup
    const fallbacks = [
      "O golpe atinge o alvo com força brutal.",
      "Metal contra carne. Sangue jorra.",
      "Um ataque certeiro derruba o inimigo.",
    ];
    return fallbacks[Math.floor(Math.random() * fallbacks.length)];
  }
}
```

### 20.2 Consumo no Componente (`combat-log.component.ts`)

O componente recebe o evento do Backend (Deno) já com as Tags sorteadas e solicita a narração.

```typescript
import { Component, signal } from "@angular/core";
import { LlmService } from "./llm.service";

// Exemplo de payload vindo do Deno (WebSocket/API)
interface CombatEventPayload {
  hero: string;
  monster: string;
  isCritical: boolean;
  damage: number;
  // O Deno já fez o trabalho sujo de ir no Postgres e sortear as tags:
  narrativeTags: string[];
}

@Component({
  selector: "app-combat-log",
  template: `
    <div class="combat-log">
      <h3>Timeline de Combate</h3>

      @if (!llm.isReady()) {
        <div class="loading">
          <progress [value]="llm.progress()" max="100"></progress>
          <p>{{ llm.currentAction() }}</p>
        </div>
      }

      <div class="logs">
        @for (log of logs(); track $index) {
          <div class="log-entry" [class.critical]="log.isCritical">
            <span class="timestamp">{{ log.time }}</span>
            <span class="text">{{ log.text }}</span>
          </div>
        }
      </div>
    </div>
  `,
  styles: [
    `
      .combat-log {
        background: rgba(0, 0, 0, 0.8);
        border: 1px solid #00ff00;
        padding: 1rem;
        height: 400px;
        overflow-y: auto;
      }

      .log-entry {
        padding: 0.5rem;
        border-left: 3px solid #00bfff;
        margin-bottom: 0.5rem;
        animation: slideIn 0.3s ease;
      }

      .log-entry.critical {
        border-left-color: #ff0000;
        background: rgba(255, 0, 0, 0.1);
        animation: pulse 0.5s infinite;
      }

      @keyframes slideIn {
        from {
          opacity: 0;
          transform: translateX(-20px);
        }
        to {
          opacity: 1;
          transform: translateX(0);
        }
      }

      @keyframes pulse {
        0%,
        100% {
          opacity: 1;
        }
        50% {
          opacity: 0.7;
        }
      }
    `,
  ],
})
export class CombatLogComponent {
  logs = signal<Array<{ time: string; text: string; isCritical: boolean }>>([]);

  constructor(public llm: LlmService) {
    // Inicializar o modelo ao carregar o componente
    this.llm.init();
  }

  async onCombatEvent(event: CombatEventPayload) {
    // 1. Montar o Prompt com as Tags vindas do Backend
    const prompt = `
      Contexto: ${event.isCritical ? "Ataque Crítico" : "Ataque Normal"}.
      Ator: ${event.hero}. Alvo: ${event.monster}.
      Tags Obrigatórias: [${event.narrativeTags.join(", ")}].
    `.trim();

    // 2. Gerar Texto (Async - não bloqueia UI)
    const text = await this.llm.generateFlavorText(prompt);

    // 3. Substituir Placeholders finais (Segurança)
    const finalText = text
      .replace("{HERO}", event.hero)
      .replace("{MONSTER}", event.monster);

    // 4. Adicionar ao Log Visual
    const timestamp = new Date().toLocaleTimeString();
    this.logs.update((l) =>
      [
        { time: timestamp, text: finalText, isCritical: event.isCritical },
        ...l,
      ].slice(0, 100),
    ); // Limitar a 100 logs
  }
}
```

**Integração com WebSocket (Deno → Angular):**

```typescript
// websocket.service.ts
import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({ providedIn: 'root' })
export class WebSocketService {
  private ws: WebSocket | null = null;
  public combatEvents$ = new Subject<CombatEventPayload>();

  connect(url: string) {
    this.ws = new WebSocket(url);

    this.ws.onmessage = (event) => {
      const data = JSON.parse(event.data);
      if (data.type === 'COMBAT_EVENT') {
        this.combatEvents$.next(data.payload);
      }
    };
  }
}

// No componente:
constructor(
  private ws: WebSocketService,
  public llm: LlmService
) {
  this.ws.connect('ws://localhost:8000/game');
  this.ws.combatEvents$.subscribe(event => {
    this.onCombatEvent(event);
  });
}
```

---

## 21. CONCLUSÃO TÉCNICA

Esta arquitetura resolve o trilema da narrativa em jogos:

### ✅ Vantagens da Arquitetura

1. **Custo Zero:** Roda na GPU do cliente, poupando milhares de dólares em API (vs OpenAI/Claude)
2. **Variedade Infinita:** A combinação de _Postgres → Deno RAM Mixer → Llama 3.2_ garante que o jogador nunca lerá a mesma frase duas vezes em 500 horas
3. **Controle Total:** O System Prompt rígido e a lógica determinística do Deno impedem que a IA "quebre" o jogo inventando regras que não existem
4. **Performance:** Geração em ~50-200ms (dependendo da GPU), não bloqueante
5. **Privacidade:** Nenhum dado do jogador sai da máquina
6. **Modding Friendly:** Comunidade pode adicionar tags ao banco PostgreSQL

### 📊 Benchmarks Esperados

| Hardware     | Tempo de Carregamento | Tokens/seg | Latência/Texto |
| ------------ | --------------------- | ---------- | -------------- |
| GTX 1060 6GB | ~15s                  | 15-20      | ~200ms         |
| RTX 3060     | ~8s                   | 30-40      | ~100ms         |
| RTX 4090     | ~4s                   | 60+        | ~50ms          |
| M1/M2 Mac    | ~10s                  | 25-35      | ~120ms         |

### 🎯 KPIs de Sucesso

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

