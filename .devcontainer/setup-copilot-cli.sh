#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
npm_prefix="$HOME/.npm-global"
path_line='export PATH="$HOME/.npm-global/bin:$PATH"'

echo "Installing GitHub Copilot CLI..."
npm config set prefix "$npm_prefix"
mkdir -p "$npm_prefix/bin"

for shell_file in "$HOME/.profile" "$HOME/.bashrc" "$HOME/.zshrc"; do
  touch "$shell_file"
  if ! grep -Fqx "$path_line" "$shell_file"; then
    printf '\n%s\n' "$path_line" >> "$shell_file"
  fi
done

export PATH="$npm_prefix/bin:$PATH"
npm install -g @github/copilot

echo "Configuring GitHub Copilot CLI MCP servers..."
mkdir -p "$HOME/.copilot"
cp "$repo_root/.github/copilot-cli-mcp.json" "$HOME/.copilot/mcp-config.json"

echo "GitHub Copilot CLI setup complete."
