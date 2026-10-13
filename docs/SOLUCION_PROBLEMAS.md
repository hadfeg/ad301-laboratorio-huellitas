# Solución de problemas

| Problema | Qué hacer |
|---|---|
| Docker no responde | Abre Docker Desktop y espera **Engine running**. Luego vuelve a ejecutar `INICIAR_LAB.cmd`. |
| El contenedor queda en `starting` | Espera hasta dos minutos. Ejecuta `VER_ESTADO.cmd` para revisar el registro. |
| Workbench intenta usar el puerto 3306 | Crea una conexión nueva y utiliza el puerto `3307`. |
| El puerto 3307 está ocupado | Copia `.env.example` como `.env`, cambia `MYSQL_HOST_PORT=3307` por `3308`, reinicia y usa ese mismo puerto en Workbench. |
| Workbench muestra `Access denied` | Comprueba usuario `ad301` y clave `Huellitas2026_Local`. Si alguien cambió `.env` después del primer inicio, usa `REINICIAR_LAB.cmd`. |
| Cambié `.env` y no cambió la contraseña | Las credenciales iniciales se conservan en el volumen. Ejecuta `REINICIAR_LAB.cmd`; esto borra solo la base local. |
| No aparece `clinica_huellitas` | Actualiza la lista de esquemas en Workbench o vuelve a abrir la conexión. |
| Workbench no conecta, pero Docker está `healthy` | Verifica `127.0.0.1`, puerto `3307` y que no estés usando una conexión antigua. |
| El modelo desapareció | Busca el archivo `.mwb` en `entrega/`. El diagrama no se guarda en MySQL ni dentro de Docker. |
| La descarga es muy lenta | La imagen supera los 200 MB. La docente debe precargarla con `docker compose pull` antes de la clase. |

## Diagnóstico desde la terminal

```powershell
docker compose ps
docker compose logs --tail 80 mysql
```

Para detener sin borrar datos:

```powershell
docker compose down
```

No uses `docker compose down -v` salvo que quieras comenzar con una base local completamente limpia.
