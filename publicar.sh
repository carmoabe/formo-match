#!/bin/bash
# Publica as mudanças do Formô Match no GitHub Pages.
# Uso:  ./publicar.sh "descrição do que mudou"

set -e
cd "$(dirname "$0")"

msg="${1:-atualiza o catálogo}"

git add -A
git commit -m "$msg" || { echo "Nada de novo para publicar."; exit 0; }
git push

echo
echo "Pronto. O GitHub leva cerca de um minuto para atualizar a página."
