@echo off
title AR Infotek Backend Server
echo ==========================================
echo    Starting AR Infotek Backend Server...
echo ==========================================
cd /d "%~dp0server"

if not exist node_modules (
    echo [Info] Installing required npm packages...
    call npm install
)

echo [Info] Starting Node.js server on port 5000...
call npm start
pause
