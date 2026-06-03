@echo off
chcp 65001 >nul
echo Installing Context7 + Exa for Cursor...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\setup-cursor-mcp.ps1"
if errorlevel 1 (
  echo.
  echo Failed. Right-click this file and choose "Run as administrator", then try again.
  pause
  exit /b 1
)
echo.
echo Done. Close Cursor completely, then open it again.
pause
