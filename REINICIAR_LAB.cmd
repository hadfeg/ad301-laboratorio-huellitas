@echo off
setlocal
cd /d "%~dp0"

echo =====================================================
echo   REINICIO COMPLETO DEL LABORATORIO
echo =====================================================
echo.
echo Esta accion elimina la base de datos local del contenedor.
echo NO elimina los archivos .mwb ni otros archivos del repositorio.
echo.
set /p "CONFIRMACION=Escribe BORRAR para continuar: "
if /I not "%CONFIRMACION%"=="BORRAR" (
  echo Operacion cancelada.
  pause
  exit /b 0
)

docker compose down -v --remove-orphans
if errorlevel 1 (
  echo [ERROR] No fue posible borrar el volumen del laboratorio.
  pause
  exit /b 1
)

echo [OK] Base local eliminada. Iniciando una instancia limpia...
call "%~dp0INICIAR_LAB.cmd"
