# 📚 Documentação Heroes of Majesty - Estrutura Modular

Este diretório contém a documentação oficial divida em partes menores para facilitar a edição e leitura.

## 📂 Estrutura de Diretórios

### 00-INDICE.md

Índice completo da documentação com links para todas as seções.

### PARTE I: FUNDAMENTOS

- `01-visao-geral-filosofia.md` - Visão Geral e Filosofia do Jogo
- `02-interface-ux.md` - Interface e Experiência do Usuário (F1-F6)

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
