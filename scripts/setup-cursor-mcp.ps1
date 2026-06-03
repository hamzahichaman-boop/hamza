# Installs Context7 + Exa MCP config for Cursor on Windows.
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Src = Join-Path $Root ".cursor\mcp.json"
$DestDir = Join-Path $env:USERPROFILE ".cursor"
$Dest = Join-Path $DestDir "mcp.json"

if (-not (Test-Path $Src)) {
    Write-Error "Missing $Src — open the hamza repo in Cursor first."
}

New-Item -ItemType Directory -Force -Path $DestDir | Out-Null

if (Test-Path $Dest) {
    $existing = Get-Content $Dest -Raw | ConvertFrom-Json
    $incoming = Get-Content $Src -Raw | ConvertFrom-Json
    foreach ($name in $incoming.mcpServers.PSObject.Properties.Name) {
        $existing.mcpServers | Add-Member -NotePropertyName $name -NotePropertyValue $incoming.mcpServers.$name -Force
    }
    $existing | ConvertTo-Json -Depth 10 | Set-Content $Dest -Encoding UTF8
    Write-Host "Merged context7 + exa into $Dest"
} else {
    Copy-Item $Src $Dest -Force
    Write-Host "Installed MCP config at $Dest"
}

Write-Host ""
Write-Host "Next: fully quit Cursor, reopen it, then check Settings -> Cursor Settings -> MCP."
