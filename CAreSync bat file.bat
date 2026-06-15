@echo off
echo Starting CareSync AI...

echo Starting Frontend...
start "CareSync Frontend" cmd /k "cd /d "%~dp0caresync-ai" && npm run dev"

echo Starting Backend...
start "CareSync Backend" cmd /k "cd /d "%~dp0caresync-ai-backend" && npm run dev"

echo Both servers are starting in separate windows.
