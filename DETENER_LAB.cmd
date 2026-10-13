@echo off
setlocal
cd /d "%~dp0"

echo Deteniendo el laboratorio sin borrar los datos...
docker compose down
if errorlevel 1 (
  echo [ERROR] No fue posible detener el laboratorio.
  pause
  exit /b 1
)

echo [OK] Laboratorio detenido. El modelo y los datos se conservan.
pause
