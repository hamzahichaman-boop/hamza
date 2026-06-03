#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/.cursor/mcp.json"
DEST="${CURSOR_MCP_CONFIG:-$HOME/.cursor/mcp.json}"

mkdir -p "$(dirname "$DEST")"

if [[ -f "$DEST" ]] && command -v jq >/dev/null 2>&1; then
  jq -s '.[0].mcpServers * .[1].mcpServers | {mcpServers: .}' "$DEST" "$SRC" > "${DEST}.tmp"
  mv "${DEST}.tmp" "$DEST"
  echo "Merged context7 + exa into $DEST"
else
  cp "$SRC" "$DEST"
  echo "Installed MCP config at $DEST"
fi

echo "Restart Cursor (Settings → MCP) to load the servers."
