#!/bin/bash

# Utilitários para gerenciar a documentação modular
# Uso: ./doc-utils.sh [comando] [opções]

DOCS_DIR="docs"
OUTPUT_FILE="DOCUMENTAÇÃO-REASSEMBLED.md"

show_help() {
    cat << EOF
🛠️  Utilitários de Documentação - Heroes of Majesty

COMANDOS:

  reassemble       Re-monta o documento completo a partir das partes
  stats            Mostra estatísticas da documentação
  find <texto>     Busca texto em toda documentação
  edit <parte>     Abre um arquivo específico no editor
  list             Lista todos os arquivos disponíveis
  diff             Compara documento re-montado com original
  
EXEMPLOS:

  ./doc-utils.sh reassemble
  ./doc-utils.sh find "Llama 3.2"
  ./doc-utils.sh edit parte-vii
  ./doc-utils.sh stats

EOF
}

reassemble_doc() {
    echo "🔨 Re-montando documentação completa..."
    
    cd "$DOCS_DIR" 2>/dev/null || { echo "❌ Diretório docs/ não encontrado"; exit 1; }
    
    cat 00-INDICE.md \
        parte-i-fundamentos/*.md \
        parte-ii-sistemas-ia/*.md \
        parte-iii-sistemas-sociais/*.md \
        parte-iv-mundo-progressao/*.md \
        parte-v-multiplayer-inimigos/*.md \
        parte-vi-combate-apresentacao/*.md \
        parte-vii-narrativa-generativa/*.md \
        99-CONCLUSAO.md > "../$OUTPUT_FILE"
    
    cd ..
    
    lines=$(wc -l < "$OUTPUT_FILE")
    size=$(du -h "$OUTPUT_FILE" | cut -f1)
    
    echo "✅ Documento re-montado: $OUTPUT_FILE"
    echo "📊 Linhas: $lines | Tamanho: $size"
}

show_stats() {
    echo "📊 Estatísticas da Documentação"
    echo "================================"
    echo ""
    
    echo "📁 Arquivos por parte:"
    for dir in "$DOCS_DIR"/parte-*; do
        if [ -d "$dir" ]; then
            count=$(find "$dir" -name "*.md" | wc -l)
            lines=$(find "$dir" -name "*.md" -exec wc -l {} + 2>/dev/null | tail -1 | awk '{print $1}')
            dirname=$(basename "$dir")
            printf "  %-35s %2d arquivos, %5d linhas\n" "$dirname" "$count" "$lines"
        fi
    done
    
    echo ""
    echo "📈 Top 5 maiores arquivos:"
    find "$DOCS_DIR" -name "*.md" -exec wc -l {} + | sort -rn | head -6 | tail -5 | \
        awk '{printf "  %5d linhas - %s\n", $1, $2}'
    
    echo ""
    total_lines=$(find "$DOCS_DIR" -name "*.md" -exec wc -l {} + | tail -1 | awk '{print $1}')
    total_files=$(find "$DOCS_DIR" -name "*.md" | wc -l)
    avg_lines=$((total_lines / total_files))
    
    echo "📝 Total: $total_files arquivos, $total_lines linhas"
    echo "📏 Média: $avg_lines linhas por arquivo"
}

find_text() {
    if [ -z "$1" ]; then
        echo "❌ Especifique o texto para buscar"
        echo "Uso: ./doc-utils.sh find \"texto\""
        exit 1
    fi
    
    echo "🔍 Buscando: '$1'"
    echo ""
    grep -rn --color=always "$1" "$DOCS_DIR"/*.md "$DOCS_DIR"/parte-*/*.md 2>/dev/null
}

list_files() {
    echo "📚 Arquivos da Documentação"
    echo "==========================="
    echo ""
    
    echo "📖 Principais:"
    ls -lh "$DOCS_DIR"/*.md 2>/dev/null | awk '{printf "  %8s  %s\n", $5, $9}'
    
    echo ""
    for dir in "$DOCS_DIR"/parte-*; do
        if [ -d "$dir" ]; then
            dirname=$(basename "$dir")
            echo "📁 $dirname:"
            ls -lh "$dir"/*.md 2>/dev/null | awk '{printf "  %8s  %s\n", $5, $9}'
            echo ""
        fi
    done
}

edit_part() {
    if [ -z "$1" ]; then
        echo "❌ Especifique a parte para editar"
        echo "Opções: i, ii, iii, iv, v, vi, vii"
        exit 1
    fi
    
    case "$1" in
        i|1|parte-i)
            file="$DOCS_DIR/parte-i-fundamentos/02-interface-ux.md"
            ;;
        ii|2|parte-ii)
            file="$DOCS_DIR/parte-ii-sistemas-ia/04-herois-agentes-autonomos.md"
            ;;
        iii|3|parte-iii)
            file="$DOCS_DIR/parte-iii-sistemas-sociais/05-dinamica-social.md"
            ;;
        iv|4|parte-iv)
            file="$DOCS_DIR/parte-iv-mundo-progressao/08-mundo-procedural-ciclos.md"
            ;;
        v|5|parte-v)
            file="$DOCS_DIR/parte-v-multiplayer-inimigos/12-sistema-monstros-pain.md"
            ;;
        vi|6|parte-vi)
            file="$DOCS_DIR/parte-vi-combate-apresentacao/13-sistema-combate-flavor-texts.md"
            ;;
        vii|7|parte-vii|narrativa)
            file="$DOCS_DIR/parte-vii-narrativa-generativa/16-21-arquitetura-narrativa-generativa.md"
            ;;
        *)
            echo "❌ Parte inválida: $1"
            echo "Opções: i, ii, iii, iv, v, vi, vii"
            exit 1
            ;;
    esac
    
    if [ ! -f "$file" ]; then
        echo "❌ Arquivo não encontrado: $file"
        exit 1
    fi
    
    echo "📝 Abrindo: $file"
    ${EDITOR:-nano} "$file"
}

compare_docs() {
    original="DOCUMENTAÇÃO DAS MECÂNICAS DO JOGO E PARTE CONCEITUAL.md"
    
    if [ ! -f "$OUTPUT_FILE" ]; then
        echo "⚠️  Documento re-montado não existe. Execute: ./doc-utils.sh reassemble"
        exit 1
    fi
    
    echo "🔍 Comparando documentos..."
    echo ""
    
    orig_lines=$(wc -l < "$original")
    new_lines=$(wc -l < "$OUTPUT_FILE")
    diff_lines=$((new_lines - orig_lines))
    
    echo "📄 Original: $orig_lines linhas"
    echo "📄 Re-montado: $new_lines linhas"
    echo "📊 Diferença: $diff_lines linhas"
    
    if [ "$diff_lines" -eq 0 ]; then
        echo "✅ Documentos têm o mesmo número de linhas!"
    else
        echo "⚠️  Diferença detectada. Ver detalhes com: diff \"$original\" \"$OUTPUT_FILE\""
    fi
}

# Main
case "$1" in
    reassemble|r)
        reassemble_doc
        ;;
    stats|s)
        show_stats
        ;;
    find|f)
        find_text "$2"
        ;;
    edit|e)
        edit_part "$2"
        ;;
    list|l)
        list_files
        ;;
    diff|d)
        compare_docs
        ;;
    help|h|--help|-h|"")
        show_help
        ;;
    *)
        echo "❌ Comando desconhecido: $1"
        echo ""
        show_help
        exit 1
        ;;
esac
