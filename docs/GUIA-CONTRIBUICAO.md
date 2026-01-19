# 🤝 Guia de Contribuição - Documentação Modular

> **Como editar e manter a documentação do Heroes of Majesty**

---

## 🎯 Filosofia da Estrutura Modular

A documentação foi dividida em **17 arquivos** para:

- ✅ Reduzir consumo de tokens em ~95% ao editar
- ✅ Facilitar navegação e manutenção
- ✅ Permitir edições paralelas de diferentes seções
- ✅ Melhorar performance de LLMs ao processar

---

## 📂 Estrutura de Diretórios

```
majesty/
├── docs/                                    # Documentação modular
│   ├── 00-INDICE.md                        # Índice completo
│   ├── 99-CONCLUSAO.md                     # Resumo final
│   ├── INDICE-VISUAL.md                    # Navegação visual
│   ├── README.md                           # Instruções
│   │
│   ├── parte-i-fundamentos/
│   │   ├── 01-visao-geral-filosofia.md
│   │   └── 02-interface-ux.md
│   │
│   ├── parte-ii-sistemas-ia/
│   │   ├── 03-arquitetura-ia-hibrida.md
│   │   └── 04-herois-agentes-autonomos.md
│   │
│   ├── parte-iii-sistemas-sociais/
│   │   ├── 05-dinamica-social.md
│   │   ├── 06-conselheiro-real-ia.md
│   │   └── 07-economia-gestao-reino.md
│   │
│   ├── parte-iv-mundo-progressao/
│   │   ├── 08-mundo-procedural-ciclos.md
│   │   ├── 09-mecanicas-expansao.md
│   │   └── 10-narrativa-emergente-legado.md
│   │
│   ├── parte-v-multiplayer-inimigos/
│   │   ├── 11-multiplayer-futuro.md
│   │   └── 12-sistema-monstros-pain.md
│   │
│   ├── parte-vi-combate-apresentacao/
│   │   ├── 13-sistema-combate-flavor-texts.md
│   │   ├── 14-estetica-juice-visual-sonoro.md
│   │   └── 15-analise-critica-justificativas.md
│   │
│   └── parte-vii-narrativa-generativa/
│       └── 16-21-arquitetura-narrativa-generativa.md
│
├── split-docs.sh                           # Script para dividir
├── doc-utils.sh                            # Utilitários
└── DOCUMENTAÇÃO DAS MECÂNICAS...md         # Arquivo original
```

---

## 🛠️ Fluxo de Trabalho

### 1️⃣ Editar uma Seção Específica

```bash
# Exemplo: Editar a Parte VII (Narrativa Generativa)
nano docs/parte-vii-narrativa-generativa/16-21-arquitetura-narrativa-generativa.md

# Ou usar o utilitário:
./doc-utils.sh edit vii
```

### 2️⃣ Buscar Informação

```bash
# Buscar em toda documentação
./doc-utils.sh find "Llama 3.2"

# Ou manualmente:
grep -rn "WebGPU" docs/
```

### 3️⃣ Ver Estatísticas

```bash
./doc-utils.sh stats
```

### 4️⃣ Re-montar Documento Completo

```bash
# Após editar múltiplas partes, re-monte o documento:
./doc-utils.sh reassemble

# Isso cria: DOCUMENTAÇÃO-REASSEMBLED.md
```

### 5️⃣ Comparar Mudanças

```bash
./doc-utils.sh diff
```

---

## 📝 Convenções de Edição

### ✅ Boas Práticas

1. **Mantenha a Formatação Markdown**
   - Use `#` para títulos principais
   - Use `##` para subseções
   - Use `###` para sub-subseções

2. **Preserve os Números de Seção**
   - Cada arquivo começa com `# [NÚMERO]. TÍTULO`
   - Exemplo: `# 16. O MOTOR DE NARRATIVA "INFINITE TALES"`

3. **Use Código Fences**

   ```typescript
   // Use blocos de código com linguagem especificada
   const exemplo = "assim";
   ```

4. **Tabelas Bem Formatadas**

   ```markdown
   | Coluna 1 | Coluna 2 |
   | -------- | -------- |
   | Valor 1  | Valor 2  |
   ```

5. **Links Internos**
   - Use âncoras: `[Texto](#secao-titulo)`
   - Mantenha compatibilidade com documento original

### ❌ Evite

- ❌ Mudar numeração de seções
- ❌ Quebrar links internos
- ❌ Adicionar conteúdo fora da seção apropriada
- ❌ Usar HTML inline excessivo
- ❌ Alterar o encoding (mantenha UTF-8)

---

## 🔄 Workflow com LLM

### Edição Otimizada (Economia de Tokens)

**ANTES (Arquivo Original):**

```
❌ Carregar 8,751 linhas (~35k tokens)
❌ LLM processa tudo para mudar 1 parágrafo
❌ Custo alto e lento
```

**DEPOIS (Modular):**

```
✅ Carregar apenas a parte relevante (~500 linhas / ~2k tokens)
✅ LLM foca apenas no necessário
✅ Economia de 95% de tokens
```

### Exemplo Prático

**Tarefa:** Adicionar novo parâmetro ao Llama 3.2

```bash
# 1. Abrir apenas arquivo relevante
cat docs/parte-vii-narrativa-generativa/16-21-arquitetura-narrativa-generativa.md

# 2. LLM edita apenas essa seção (585 linhas vs 8,751)

# 3. Salvar mudanças

# 4. Re-montar documento completo (opcional)
./doc-utils.sh reassemble
```

---

## 📊 Mapa de Conteúdo por Arquivo

| Arquivo                                     | Conteúdo Principal  | Quando Editar        |
| ------------------------------------------- | ------------------- | -------------------- |
| `00-INDICE.md`                              | Índice completo     | Adicionar nova seção |
| `01-visao-geral-filosofia.md`               | Filosofia do jogo   | Mudar conceitos core |
| `02-interface-ux.md`                        | F1-F5 Workspaces    | Alterar UI/UX        |
| `03-arquitetura-ia-hibrida.md`              | Sistemas de IA      | Mudar lógica de IA   |
| `04-herois-agentes-autonomos.md`            | P.E.R.M.A., Classes | Editar heróis        |
| `05-dinamica-social.md`                     | Kill Stealing, PvP  | Sistema social       |
| `06-conselheiro-real-ia.md`                 | Chat NLP            | Conselheiro          |
| `07-economia-gestao-reino.md`               | Ouro, IP, Decretos  | Economia             |
| `08-mundo-procedural-ciclos.md`             | 4 Ciclos, Eventos   | Mundo/Progressão     |
| `09-mecanicas-expansao.md`                  | Postos Avançados    | Expansão             |
| `10-narrativa-emergente-legado.md`          | Crônicas, Títulos   | Narrativa            |
| `11-multiplayer-futuro.md`                  | Visão multiplayer   | Futuro               |
| `12-sistema-monstros-pain.md`               | P.A.I.N., Bosses    | Inimigos             |
| `13-sistema-combate-flavor-texts.md`        | Combate, Logs       | Sistema de luta      |
| `14-estetica-juice-visual-sonoro.md`        | Audio, Visual       | Apresentação         |
| `15-analise-critica-justificativas.md`      | Design choices      | Justificativas       |
| `16-21-arquitetura-narrativa-generativa.md` | WebGPU, Llama 3.2   | IA Generativa        |
| `99-CONCLUSAO.md`                           | Resumo executivo    | Info do projeto      |

---

## 🚀 Comandos Rápidos

```bash
# Ver ajuda completa
./doc-utils.sh help

# Listar todos arquivos
./doc-utils.sh list

# Buscar termo
./doc-utils.sh find "PostgreSQL"

# Editar parte específica
./doc-utils.sh edit vii

# Ver estatísticas
./doc-utils.sh stats

# Re-montar documento
./doc-utils.sh reassemble

# Comparar com original
./doc-utils.sh diff
```

---

## 🎯 Casos de Uso Comuns

### Adicionar Nova Mecânica de Jogo

1. Identifique a parte correta (ex: Parte III para sistema social)
2. Edite o arquivo específico
3. Atualize `00-INDICE.md` se criar nova seção
4. Re-monte o documento

### Atualizar Stack Tecnológica

1. Edite `01-visao-geral-filosofia.md` (seção 1.5)
2. Edite `99-CONCLUSAO.md` (stack na conclusão)
3. Se houver código, edite a parte técnica relevante

### Adicionar Exemplo de Código

1. Localize a seção técnica (ex: Parte VII)
2. Adicione o código com fence correto
3. Use syntax highlighting apropriado

### Revisar Seção Completa

1. Use `./doc-utils.sh list` para ver estrutura
2. Abra o arquivo específico
3. Revise com LLM (economia de tokens)
4. Salve e re-monte se necessário

---

## 🔒 Manutenção e Backup

### Antes de Grandes Mudanças

```bash
# Criar backup
cp -r docs docs-backup-$(date +%Y%m%d)

# Ou versionar com git
git add docs/
git commit -m "Backup antes de edições"
```

### Re-dividir Documento Original

Se o documento original for atualizado externamente:

```bash
# Re-executar script de divisão
./split-docs.sh
```

---

## 📞 Suporte

**Dúvidas?** Consulte:

- `docs/README.md` - Instruções básicas
- `docs/INDICE-VISUAL.md` - Navegação visual
- `./doc-utils.sh help` - Comandos disponíveis

---

**Última atualização:** 19 de Janeiro de 2026  
**Versão:** 2.0 - Estrutura Modular Implementada
