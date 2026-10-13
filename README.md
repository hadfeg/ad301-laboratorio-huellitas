# AD-301 · Laboratorio de modelamiento: Clínica Huellitas

Template de laboratorio para trabajar el **Encuentro 5 + Encuentro 6** con Docker, MySQL y MySQL Workbench.

Docker levanta el servidor MySQL. **MySQL Workbench debe estar instalado en el PC** y se usa como herramienta visual. En esta actividad se evalúa el modelo conceptual: no se pide escribir SQL, normalizar ni ejecutar *Forward Engineer*.

## Inicio rápido en Windows

1. Abre Docker Desktop y espera que indique **Engine running**.
2. Clona este repositorio y entra en su carpeta:

   ```powershell
   git clone https://github.com/hadfeg/ad301-laboratorio-huellitas.git
   cd ad301-laboratorio-huellitas
   ```

3. Haz doble clic en `INICIAR_LAB.cmd`.
4. Abre MySQL Workbench.
5. Sigue [la guía de conexión y modelado](docs/CONEXION_WORKBENCH.md).
6. Lee [el caso Clínica Huellitas](caso/CASO_CLINICA_HUELLITAS.md) y desarrolla [la actividad](caso/ACTIVIDAD.md).

La primera ejecución puede tardar varios minutos porque Docker debe descargar la imagen de MySQL.

## Conexión rápida

| Campo | Valor |
|---|---|
| Connection Name | `AD-301 · Clínica Huellitas` |
| Connection Method | `Standard TCP/IP` |
| Hostname | `127.0.0.1` |
| Port | `3307` |
| Username | `ad301` |
| Password | `Huellitas2026_Local` |
| Default Schema | `clinica_huellitas` |

Estas credenciales son didácticas, funcionan solo en el PC local y no deben reutilizarse en servicios reales.

## Qué debe entregar cada equipo

Guarda en la carpeta `entrega/`:

- `equipo_N_huellitas_v1.mwb`: primer borrador.
- `equipo_N_huellitas_v2.mwb`: versión revisada y final.
- `REGLAS_Y_SUPUESTOS.md`: seis reglas de negocio, supuestos y cambios realizados.

Consulta [las instrucciones de la actividad](caso/ACTIVIDAD.md) antes de comenzar.

## Comandos útiles

También puedes usar la terminal:

```powershell
docker compose up -d
docker compose ps
docker compose down
```

- `INICIAR_LAB.cmd`: inicia y verifica MySQL.
- `VER_ESTADO.cmd`: muestra el estado y las últimas líneas del registro.
- `DETENER_LAB.cmd`: detiene MySQL sin borrar el trabajo.
- `REINICIAR_LAB.cmd`: borra únicamente la base local y la crea de nuevo; pide confirmación.

Los archivos `.mwb` no viven dentro del contenedor y no se borran al detener o reiniciar MySQL.

## Para la docente antes de la clase

En un PC del laboratorio, ejecuta una vez:

```powershell
docker compose pull
docker compose up -d
docker compose ps
```

Comprueba que el servicio aparezca como `healthy`, prueba la conexión en Workbench y luego ejecuta `DETENER_LAB.cmd`. Si se puede, repite la descarga de la imagen en los demás PC antes de que lleguen los estudiantes para no saturar la red.

## Ayuda

Revisa [Solución de problemas](docs/SOLUCION_PROBLEMAS.md). La configuración se puede personalizar copiando `.env.example` como `.env`; este último archivo no se sube a Git.
