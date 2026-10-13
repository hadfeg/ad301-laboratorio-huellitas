@echo off
setlocal
cd /d "%~dp0"

echo Estado de los contenedores:
docker compose ps
echo.
echo Ultimas lineas del registro de MySQL:
docker compose logs --tail 40 mysql
echo.
pause
