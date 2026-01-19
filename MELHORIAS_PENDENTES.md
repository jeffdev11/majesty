# 📋 MELHORIAS PENDENTES DA DOCUMENTAÇÃO

## Status: EM PROGRESSO

### ✅ CONCLUÍDO

1. Índice completo atualizado

### 🔄 EM ANDAMENTO

#### BLOCO 1: Imagens e F2 ADMIN (Itens 1-2)

- [ ] Adicionar imagens F1, F2, F3, F4, F5 nas seções correspondentes
- [ ] **Melhoria 1**: Mecânica de infraestrutura (P1 do F2)
  - [ ] Casa Central do Majesty (status, destruição, game over)
  - [ ] Edifícios em cinza quando destruídos +

log de destruição no P4

- [ ] Listar todos os identificadores de logs ([ADMIN], [ECO], etc.)
- [ ] **Melhoria 2**: Relatório financeiro detalhado (P3 do F2)
  - [ ] Lista de todas as entradas e saídas

#### BLOCO 2: F3 LIBRARY (Itens 3-6)

- [ ] **Melhoria 3**: Detalhar P1 (índice de dados e usabilidade)
- [ ] **Melhoria 4**: Esclarecer P2 e filtros do P6
- [ ] **Melhoria 5**: Gráficos serão componentes UI, não ASCII
- [ ] **Melhoria 6**: Definir todos os "Grandes Feitos" do P5

#### BLOCO 3: F4 WORLD MAP (Itens 7-12)

- [ ] **Melhoria 7**: Mapa com imagens quadradas + ícones (não ASCII)
- [ ] **Melhoria 8**: Lista completa de eventos globais possíveis
- [ ] **Melhoria 9**: Detalhar mecânica do P4 (detalhe do nó)
- [ ] **Melhoria 10**: Lista de identificadores de logs do P5
- [ ] **Melhoria 11**: Detalhar todos os comandos do P6
- [ ] **Melhoria 12**: Sistema de comandos intuitivo (menu numérico vs texto)

#### BLOCO 4: F5 AVIARY (Item 13)

- [ ] **Melhoria 13**: Listar todas as informações do P3 (perfil do alvo)

---

## 📝 DETALHAMENTO DAS MELHORIAS

### BLOCO 1: F2 ADMIN - Sistema de Infraestrutura

#### 1.1 Casa Central do Majesty (Nova Seção)

**Localização**: Após seção 2.4 (F2 ADMIN)

**Conteúdo**:

```markdown
### Casa Central do Majesty

#### Características

- **Nome oficial**: "Coroa do Reino" (Crown Keep)
- **Função**: Sede do poder, onde o Majesty reside
- **Status vitais**:
  - HP: 5,000 (o dobro de outras construções)
  - Defense: 100
  - Regeneração: 50 HP/dia (auto-reparo)

#### Condição de Derrota

- Se HP chegar a 0 → **GAME OVER**
- Exceção: Se capital já foi movida para Posto Avançado

#### Sistema de Proteção

- **Imune a eventos globais** (terremotos, tempestades NÃO destroem)
- **Vulnerável a monstros** (invasões diretas)
- Torres adjacentes ganham +50% range quando defendem Casa Central

#### Estados Visuais

| HP      | Status Visual | Descrição                              |
| ------- | ------------- | -------------------------------------- |
| 100-80% | Intacta       | Bandeiras tremulando, muros brilhantes |
| 79-50%  | Danificada    | Rachaduras visíveis, bandeira rasgada  |
| 49-25%  | Crítica       | Chamas parciais, torres desabando      |
| 24-1%   | Ruínas        | Prestes a colapsar, alarme vermelho    |
```

#### 1.2 Edifícios Destruídos (logs e visual)

**P4 - Detalhe das Construções**: Quando edifício destruído é selecionado:

```
P4: DETALHE DA CONSTRUÇÃO
Selecionado: [2] Guilda Mago
Status: ⚠️ DESTRUÍDA

[HISTÓRICO DE DESTRUIÇÃO]
> Dia: 73
> Hora: 14:35
> Causa: Invasão de Ogros (Horda de 15)
> Dano final: 800 (de 500 HP)

[ÚLTIMO STATUS ANTES DA DESTRUIÇÃO]
> Nível: 2
> Heróis treinados: 3
> Skills ativas: 5

[AÇÕES DISPONÍVEIS]
[R] Reconstruir (Custo: 300g, 2 min)
[D] Demolir ruínas (Libera espaço, +50g)
[V] Ver log completo
```

#### 1.3 Identificadores de Logs

**Nova Seção (Anexo)**: "Lista Completa de Identificadores de Logs"

```markdown
## Identificadores de Logs - Sistema Global

### F2 ADMIN (Painel P5)

| Identificador  | Cor             | Uso                       | Exemplo                             |
| -------------- | --------------- | ------------------------- | ----------------------------------- |
| **[ADMIN]**    | Ciano           | Construções e upgrades    | `[ADMIN] Torre de Vigia construída` |
| **[ECO]**      | Verde           | Transações econômicas     | `[ECO] Venda: Poção (+50g)`         |
| **[ALERTA]**   | Vermelho        | Avisos críticos           | `[ALERTA] Ouro insuficiente!`       |
| **[SKILL]**    | Amarelo         | Habilidades desbloqueadas | `[SKILL] "Golpe Giratório" ativo`   |
| **[MAINT]**    | Laranja         | Manutenção de edifícios   | `[MAINT] Salários pagos (-100g)`    |
| **[DESTRUCT]** | Vermelho Escuro | Destruição de edifícios   | `[DESTRUCT] Guilda Mago destruída!` |
```

---

### 1.4 Relatório Financeiro Detalhado (P3)

**Expandir P3 - Logística e Stocks**:

```
P3: LOGÍSTICA/STOCKS & RELATÓRIO FINANCEIRO

> RESUMO DIÁRIO (Dia 45)
├─ Saldo Inicial: 1,000g
├─ Entradas: +450g
├─ Saídas: -320g
└─ Saldo Final: 1,130g (+130g)

> DETALHAMENTO DE ENTRADAS ▼
[14:02] +50g  | Imposto: Poção Vida (Kaelen)
[14:15] +200g | Loot: Ogro derrotado (grupo)
[14:30] +80g  | Imposto: Upgrade Espada (Lila)
[15:00] +120g | Tributo: Posto Norte

> DETALHAMENTO DE SAÍDAS ▼
[14:05] -150g | Compra: 3x Poção Mana
[14:20] -100g | Salários: Torres (dia)
[14:45] -70g  | Manutenção: Guildas (x3)

> PROJEÇÃO (Próximas 24h)
Entradas estimadas: +400g
Saídas fixas: -250g (salários + manutenção)
Saldo projetado: 1,280g
```

---

Devo continuar com o próximo bloco (F3 LIBRARY)?
