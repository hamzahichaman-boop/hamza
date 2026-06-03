# hamza

## Cursor MCP (Context7 + Exa)

Project MCP config: [`.cursor/mcp.json`](.cursor/mcp.json)

1. Replace the placeholder API keys in `.cursor/mcp.json`:
   - `YOUR_CONTEXT7_API_KEY` — get one at [context7.com/dashboard](https://context7.com/dashboard)
   - `YOUR_EXA_API_KEY` — get one at [dashboard.exa.ai/api-keys](https://dashboard.exa.ai/api-keys)
2. Restart Cursor (or reload MCP servers in **Settings → Cursor Settings → MCP**).

For all projects, copy the same `mcpServers` block into `~/.cursor/mcp.json` on your machine.

Optional: use env vars instead of pasting keys in JSON:

```json
"CONTEXT7_API_KEY": "${env:CONTEXT7_API_KEY}"
```

```json
"x-api-key": "${env:EXA_API_KEY}"
```

Then set those variables in your shell profile before launching Cursor.
