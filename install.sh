#!/bin/bash

set -e

PROMPT_DIR="$HOME/.bluebird-prompt"
FONT_DIR="$HOME/Library/Fonts"

echo "Installing bluebird-prompt..."

mkdir -p "$PROMPT_DIR"
mkdir -p "$FONT_DIR"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$SCRIPT_DIR/prompt.zsh" "$PROMPT_DIR/"
cp "$SCRIPT_DIR/fonts/MesloLGLNerdFont-Regular.ttf" "$FONT_DIR/"

touch "$HOME/.zshrc"

if ! grep -q "bluebird-prompt" "$HOME/.zshrc"; then
cat >> "$HOME/.zshrc" <<'EOF'

# bluebird-prompt
source "$HOME/.bluebird-prompt/prompt.zsh"
EOF
fi

echo ""
echo "Installation complete."
echo ""
echo "Set Terminal font to:"
echo "MesloLGL Nerd Font"
echo ""
echo "Run:"
echo "source ~/.zshrc"