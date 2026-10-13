@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"

echo =====================================================
echo   AD-301 - Laboratorio Clinica Veterinaria Huellitas
echo =====================================================
echo.

where docker >nul 2>&1
if errorlevel 1 (
  echo [ERROR] No se encontro el comando Docker.
  echo Verifica que Docker Desktop este instalado.
  pause
  exit /b 1
)

docker info >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Docker Desktop no esta listo.
  echo Abre Docker Desktop, espera que indique Engine running y vuelve a intentar.
  pause
  exit /b 1
)

docker compose version >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Docker Compose no esta disponible.
  echo Actualiza o repara Docker Desktop.
  pause
  exit /b 1
)

if not exist ".env" (
  copy /Y ".env.example" ".env" >nul
  echo [OK] Se creo la configuracion local .env
)

for /f "usebackq eol=# tokens=1,* delims==" %%A in (".env") do set "%%A=%%B"

echo [1/2] Iniciando MySQL. La primera descarga puede tardar varios minutos...
docker compose up -d
if errorlevel 1 (
  echo.
  echo [ERROR] No fue posible iniciar el laboratorio.
  echo Ejecuta VER_ESTADO.cmd para revisar el detalle.
  pause
  exit /b 1
)

echo [2/2] Esperando que MySQL quede disponible...
set "MYSQL_CONTAINER="
for /L %%N in (1,1,24) do (
  for /f %%I in ('docker compose ps -q mysql 2^>nul') do set "MYSQL_CONTAINER=%%I"
  if defined MYSQL_CONTAINER (
    set "MYSQL_HEALTH="
    for /f %%H in ('docker inspect --format "{{.State.Health.Status}}" !MYSQL_CONTAINER! 2^>nul') do set "MYSQL_HEALTH=%%H"
    if /I "!MYSQL_HEALTH!"=="healthy" goto :listo
  )
  timeout /t 5 /nobreak >nul
)

echo.
echo [AVISO] MySQL no alcanzo el estado saludable en dos minutos.
docker compose ps
echo.
echo Revisa el detalle con VER_ESTADO.cmd.
pause
exit /b 1

:listo
echo.
echo [OK] El laboratorio esta listo.
echo.
echo Configuracion para MySQL Workbench:
echo   Host:     127.0.0.1
echo   Puerto:   !MYSQL_HOST_PORT!
echo   Usuario:  !MYSQL_USER!
echo   Clave:    !MYSQL_PASSWORD!
echo   Esquema:  !MYSQL_DATABASE!
echo.
echo Abre MySQL Workbench y sigue docs\CONEXION_WORKBENCH.md
echo Para modelar: File ^> New Model ^> Add Diagram
echo.
pause
exit /b 0
