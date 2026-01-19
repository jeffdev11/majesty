#!/bin/bash

# Script para dividir a documentação em arquivos menores
DOC="DOCUMENTAÇÃO DAS MECÂNICAS DO JOGO E PARTE CONCEITUAL.md"
DOCS_DIR="docs"

echo "🔪 Dividindo documentação em partes..."

# Extrair cabeçalho e índice (linhas 1-194)
sed -n '1,194p' "$DOC" > "$DOCS_DIR/00-INDICE.md"
echo "✅ Índice criado"

# PARTE I: FUNDAMENTOS (linhas 195-300)
sed -n '195,300p' "$DOC" > "$DOCS_DIR/parte-i-fundamentos/01-visao-geral-filosofia.md"
sed -n '301,3795p' "$DOC" > "$DOCS_DIR/parte-i-fundamentos/02-interface-ux.md"
echo "✅ Parte I criada"

# PARTE II: SISTEMAS DE IA (linhas 3796-4211)
sed -n '3796,3962p' "$DOC" > "$DOCS_DIR/parte-ii-sistemas-ia/03-arquitetura-ia-hibrida.md"
sed -n '3963,4211p' "$DOC" > "$DOCS_DIR/parte-ii-sistemas-ia/04-herois-agentes-autonomos.md"
echo "✅ Parte II criada"

# PARTE III: SISTEMAS SOCIAIS E ECONÔMICOS (linhas 4212-5660)
sed -n '4212,4802p' "$DOC" > "$DOCS_DIR/parte-iii-sistemas-sociais/05-dinamica-social.md"
sed -n '4803,5104p' "$DOC" > "$DOCS_DIR/parte-iii-sistemas-sociais/06-conselheiro-real-ia.md"
sed -n '5105,5660p' "$DOC" > "$DOCS_DIR/parte-iii-sistemas-sociais/07-economia-gestao-reino.md"
echo "✅ Parte III criada"

# PARTE IV: MUNDO E PROGRESSÃO (linhas 5661-6796)
sed -n '5661,6225p' "$DOC" > "$DOCS_DIR/parte-iv-mundo-progressao/08-mundo-procedural-ciclos.md"
sed -n '6226,6503p' "$DOC" > "$DOCS_DIR/parte-iv-mundo-progressao/09-mecanicas-expansao.md"
sed -n '6504,6796p' "$DOC" > "$DOCS_DIR/parte-iv-mundo-progressao/10-narrativa-emergente-legado.md"
echo "✅ Parte IV criada"

# PARTE V: MULTIPLAYER E INIMIGOS (linhas 6797-7295)
sed -n '6797,6923p' "$DOC" > "$DOCS_DIR/parte-v-multiplayer-inimigos/11-multiplayer-futuro.md"
sed -n '6924,7295p' "$DOC" > "$DOCS_DIR/parte-v-multiplayer-inimigos/12-sistema-monstros-pain.md"
echo "✅ Parte V criada"

# PARTE VI: COMBATE E APRESENTAÇÃO (linhas 7296-8110)
sed -n '7296,7514p' "$DOC" > "$DOCS_DIR/parte-vi-combate-apresentacao/13-sistema-combate-flavor-texts.md"
sed -n '7515,7825p' "$DOC" > "$DOCS_DIR/parte-vi-combate-apresentacao/14-estetica-juice-visual-sonoro.md"
sed -n '7826,8110p' "$DOC" > "$DOCS_DIR/parte-vi-combate-apresentacao/15-analise-critica-justificativas.md"
echo "✅ Parte VI criada"

# PARTE VII: NARRATIVA GENERATIVA (linhas 8111-8695)
sed -n '8111,8695p' "$DOC" > "$DOCS_DIR/parte-vii-narrativa-generativa/16-21-arquitetura-narrativa-generativa.md"
echo "✅ Parte VII criada"

# CONCLUSÃO (linhas 8696-fim)
sed -n '8696,$p' "$DOC" > "$DOCS_DIR/99-CONCLUSAO.md"
echo "✅ Conclusão criada"

# Criar README no diretório docs
cat > "$DOCS_DIR/README.md" << 'EOF'
# 📚 Documentação Heroes of Majesty - Estrutura Modular

Este diretório contém a documentação oficial divida em partes menores para facilitar a edição e leitura.

## 📂 Estrutura de Diretórios

### 00-INDICE.md
Índice completo da documentação com links para todas as seções.

### PARTE I: FUNDAMENTOS
- `01-visao-geral-filosofia.md` - Visão Geral e Filosofia do Jogo
- `02-interface-ux.md` - Interface e Experiência do Usuário (F1-F5)

### PARTE II: SISTEMAS DE IA
- `03-arquitetura-ia-hibrida.md` - Arquitetura de IA Híbrida
- `04-herois-agentes-autonomos.md` - Os Heróis: Agentes Autônomos (P.E.R.M.A.)

### PARTE III: SISTEMAS SOCIAIS E ECONÔMICOS
- `05-dinamica-social.md` - Dinâmica Social: Drama Emergente
- `06-conselheiro-real-ia.md` - O Conselheiro Real de IA
- `07-economia-gestao-reino.md` - Economia e Gestão do Reino

### PARTE IV: MUNDO E PROGRESSÃO
- `08-mundo-procedural-ciclos.md` - Mundo Procedural e Ciclos Temporais
- `09-mecanicas-expansao.md` - Mecânicas Avançadas de Expansão
- `10-narrativa-emergente-legado.md` - Narrativa Emergente e Legado

### PARTE V: MULTIPLAYER E INIMIGOS
- `11-multiplayer-futuro.md` - Multiplayer (Visão Futura)
- `12-sistema-monstros-pain.md` - Sistema de Monstros: IA P.A.I.N.

### PARTE VI: COMBATE E APRESENTAÇÃO
- `13-sistema-combate-flavor-texts.md` - Sistema de Combate e Flavor Texts
- `14-estetica-juice-visual-sonoro.md` - Estética e "Juice" Visual/Sonoro
- `15-analise-critica-justificativas.md` - Análise Crítica e Justificativas

### PARTE VII: NARRATIVA GENERATIVA
- `16-21-arquitetura-narrativa-generativa.md` - Arquitetura de Narrativa Generativa (WebGPU + Llama 3.2 3B)

### 99-CONCLUSAO.md
Resumo executivo, tópicos documentados e informações do projeto.

## 🔄 Re-montar o Documento Completo

Para juntar todos os arquivos novamente em um único documento:

```bash
cat 00-INDICE.md \
    parte-i-fundamentos/*.md \
    parte-ii-sistemas-ia/*.md \
    parte-iii-sistemas-sociais/*.md \
    parte-iv-mundo-progressao/*.md \
    parte-v-multiplayer-inimigos/*.md \
    parte-vi-combate-apresentacao/*.md \
    parte-vii-narrativa-generativa/*.md \
    99-CONCLUSAO.md > "../DOCUMENTAÇÃO-COMPLETA.md"
```

## 📊 Estatísticas

- **Total de arquivos:** 17
- **Tamanho médio:** ~500-600 linhas por arquivo
- **Redução de token:** ~95% ao editar partes específicas
EOF

echo ""
echo "✨ Documentação dividida com sucesso!"
echo "📂 Arquivos criados em: $DOCS_DIR/"
echo ""
echo "Para re-montar o documento completo, execute:"
echo "  cd $DOCS_DIR && cat 00-INDICE.md parte-*/*.md 99-CONCLUSAO.md > ../DOC-COMPLETA.md"
