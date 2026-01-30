# 6b. REFERÊNCIA DE COMANDOS DA LLM (ADVISOR API)

## 6b.1 Visão Geral da Arquitetura

Este documento define a **API de Comandos** que a IA (Conselheiro Real) utiliza para traduzir a linguagem natural do jogador em ações de jogo.

**Fluxo de Execução:**

1.  **Input:** Jogador digita "Compre 10 poções para o estoque."
2.  **Processamento:** LLM analisa intenção e extrai parâmetros.
3.  **Output (Function Call):** LLM gera `GAME.economy.buy_item("potion_health", 10)`.
4.  **Execução:** A Engine valida (tem ouro?) e aplica a ação.

---

## 6b.2 Comandos de Economia e Gestão

Ações que afetam o Tesouro Real e as estruturas da vila.

### `BUY_ITEM`

Compra itens do mercado externo para repor o estoque das lojas da vila.

- **Assinatura:** `buy_item(item_id: string, quantity: number)`
- **Parâmetros:**
  - `item_id`: ID do item (ex: "potion_health", "potion_mana", "wheat", "iron_ingot").
  - `quantity`: Quantidade a comprar.
- **Exemplo de Intenção:** "Precisamos de mais poções de vida." / "Encha o estoque de trigo."

### `UPGRADE_BUILDING`

Melhora uma construção existente para o próximo nível.

- **Assinatura:** `upgrade_building(building_id: string)`
- **Parâmetros:**
  - `building_id`: ID da construção (ex: "guild_warriors", "market", "blacksmith").
- **Exemplo de Intenção:** "Melhore a guilda dos guerreiros." / "O mercado precisa crescer."

### `RECRUIT_HERO`

Contrata um novo herói nível 1 para o reino.

- **Assinatura:** `recruit_hero(class_id: string, name?: string)`
- **Parâmetros:**
  - `class_id`: ID da classe (ex: "warrior", "ranger", "mage", "cleric").
  - `name` (Opcional): Nome customizado solicitado pelo jogador.
- **Exemplo de Intenção:** "Contrate um novo mago." / "Chame um guerreiro chamado Bob."

### `UNLOCK_SKILL`

Libera uma nova habilidade na árvore tecnológica de uma guilda.

- **Assinatura:** `unlock_skill(skill_id: string)`
- **Parâmetros:**
  - `skill_id`: ID da skill (ex: "spin_attack", "fireball").
- **Exemplo de Intenção:** "Ensine a bola de fogo para os magos."

---

## 6b.3 Comandos Estratégicos (Influence System)

Ações que custam **Influence Points (IP)** e afetam AI de Heróis ou o Mundo.

### `SET_FLAG` (Bandeiras)

Coloca uma bandeira de missão no mapa para atrair heróis.

- **Assinatura:** `set_flag(type: "ATTACK" | "EXPLORE" | "DEFEND", target_id: string, bounty: number)`
- **Parâmetros:**
  - `type`: Tipo de missão.
  - `target_id`: ID do alvo (Monstro) ou Local (Coordenada/POI).
  - `bounty`: Recompensa em ouro oferecida.
- **Exemplo de Intenção:** "Coloque uma recompensa na cabeça daquele Ogro." / "Quero que explorem a caverna norte."

### `SEND_LETTER` (Correio)

Envia uma mensagem direta para um herói específico (Owl Post).

- **Assinatura:** `send_letter(hero_id: string, content: string, gift_gold: number)`
- **Parámetros:**
  - `hero_id`: Nome ou ID do herói.
  - `content`: Texto da mensagem (personalizado ou gerado pela LLM).
  - `gift_gold`: Ouro anexado como presente (opcional).
- **Exemplo de Intenção:** "Mande uma carta para a Lila pedindo desculpas e 100 moedas."

### `CAST_SPELL` (Poderes Reais)

Ativa feitiços globais ou intervenções de emergência.

- **Assinatura:** `cast_spell(spell_id: string)`
- **Parâmetros:**
  - `spell_id`: ID do feitiço (ex: "spell_lightning", "spell_heal_all", "spell_teleport_home").
- **Exemplo de Intenção:** "Jogue um raio naquele Chefe!" / "Cure todos agora!"

### `ISSUE_DECREE` (Decretos)

Ativa modificadores globais temporários.

- **Assinatura:** `issue_decree(decree_id: string)`
- **Parâmetros:**
  - `decree_id`: ID do decreto (ex: "decree_festival", "decree_curfew", "decree_war_effort").
- **Exemplo de Intenção:** "Vamos dar uma festa (Festival)." / "Declare lei marcial (Toque de Recolher)."

### `EMERGENCY_TAX` (Taxa)

Ativa a cobrança de emergência (Cap 7.6).

- **Assinatura:** `emergency_tax()`
- **Exemplo de Intenção:** "Estamos falidos! Cobre a taxa de emergência!" / "Pegue o ouro dos heróis, é urgente."

### `RESOLVE_SOCIAL_CONFLICT` (Intervenção)

Tenta mediar disputas entre heróis (mencionado no Cap 5.8).

- **Assinatura:** `resolve_social_conflict(hero_a: string, hero_b: string, action: "BRIBE" | "MEDIATE" | "THREATEN")`
- **Exemplo de Intenção:** "Dê um jeito na briga entre Lila e Kaelen." / "Ameace expulsar quem continuar brigando!"

---

## 6b.4 Expansão e Diplocia (Avançado)

Comandos relacionados à expansão do reino (Cap 9).

### `FOUND_OUTPOST`

Cria um novo posto avançado.

- **Assinatura:** `found_outpost(location: string, heroes_ids: string[])`
- **Exemplo de Intenção:** "Vamos fundar um posto na floresta. Leve Alric e Lyra."

### `MOVE_CAPITAL`

Transfere a capital para um posto (Cap 9.6).

- **Assinatura:** `move_capital(target_outpost: string)`
- **Exemplo de Intenção:** "A vila caiu. Transfira a coroa para o Posto Norte."

### `NEGOTIATE_FACTION`

Interage com facções externas (Cap 9.8).

- **Assinatura:** `negotiate_faction(faction_id: string, offer: "GOLD" | "ALLIANCE" | "IGNORE")`
- **Exemplo de Intenção:** "Ofereça ouro para os rebeldes nos deixarem em paz."

---

## 6b.5 Comandos de Consulta (Queries)

Ações onde o jogador pergunta algo e a LLM precisa buscar dados "Live" na Engine.

### `GET_HERO_STATUS`

Busca dados detalhados de um herói.

- **Assinatura:** `get_hero_status(hero_id: string)`
- **Retorno:** JSON com HP, MP, Localização, Atividade Atual, Inventário, Buffs.
- **Exemplo de Intenção:** "Como está o Kaelen?" / "Onde está a Lila?"

### `GET_ECONOMY_REPORT`

Analisa o fluxo de caixa do reino.

- **Assinatura:** `get_economy_report(period: "today" | "cycle")`
- **Retorno:** Ganhos, Gastos, Previsão.
- **Exemplo de Intenção:** "Quanto lucramos hoje?" / "Relatório econômico."

### `ANALYZE_THREAT`

Pede informações sobre um inimigo ou perigo.

- **Assinatura:** `analyze_threat(target_id: string)`
- **Retorno:** Stats do monstro, fraquezas, loot provável.
- **Exemplo de Intenção:** "O que é aquele monstro vermelho?" / "Analise o Dragão."

### `GET_HISTORY_LOG`

Busca eventos passados (Narrativa).

- **Assinatura:** `get_history_log(events: number)`
- **Exemplo de Intenção:** "O que aconteceu ontem?" / "Quem matou o Dragão?"

---

## 6b.6 O Que o Conselheiro NÃO Pode Fazer

Para manter a consistência do jogo, a LLM deve rejeitar estes pedidos:

1.  **Controle Direto:** (Ex: "Mande o Alric atacar agora!") - _Resposta:_ "Eles têm vontade própria, Majestade."
2.  **Ressurreição Manual:** (Ex: "Reviva a Lila!") - _Resposta:_ "A morte é um ciclo natural (ou requer clérigos), não um comando real."
3.  **Cheat/Ouro Infinito:** (Ex: "Me dê ouro!") - _Resposta:_ "O ouro vem dos impostos, não de magia."
4.  **Micro-Gestão de Vícios:** (Ex: "Proíba beber!") - _Resposta:_ "Não posso controlar a sede deles."

---

## 6b.7 Tratamento de Erros e Feedback

Quando a LLM tenta executar um comando, a Engine retorna um status:

1.  **`SUCCESS`**: Ação realizada. LLM narra o sucesso.
    - _Engine:_ `200 OK`
    - _LLM:_ "Feito, Majestade. 10 poções compradas."

2.  **`INSUFFICIENT_FUNDS`**: Ouro insuficiente.
    - _Engine:_ `402 Payment Required`
    - _LLM:_ "Não temos ouro suficiente nos cofres para isso, meu senhor."

3.  **`INSUFFICIENT_IP`**: Influence Points insuficientes.
    - _Engine:_ `403 Forbidden (Low IP)`
    - _LLM:_ "Sua influência está baixa. Espere recuperar sua autoridade ou use comandos mais simples."

4.  **`INVALID_TARGET`**: Alvo não existe ou não pode receber a ação.
    - _Engine:_ `404 Not Found`
    - _LLM:_ "Não vejo nenhum herói com esse nome nas nossas terras."
