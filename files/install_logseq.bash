#! /bin/bash
set -e

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)
gh release download -R logseq/logseq -p '*.AppImage' -O ~/.local/bin/logseq
chmod u+x "$HOME/.local/bin/logseq"