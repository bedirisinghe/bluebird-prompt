#!/bin/bash

PROMPT_DIR="$HOME/.bluebird-prompt"

rm -rf "$PROMPT_DIR"

sed -i '' '/# bluebird-prompt/,+1d' "$HOME/.zshrc"

echo "bluebird-prompt Prompt removed."