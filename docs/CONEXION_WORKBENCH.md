# Conexión y modelado en MySQL Workbench

## 1. Iniciar el servidor

1. Abre Docker Desktop.
2. Espera que indique **Engine running**.
3. Ejecuta `INICIAR_LAB.cmd` desde la carpeta principal del repositorio.
4. Espera el mensaje `[OK] El laboratorio está listo`.

## 2. Crear la conexión

1. Abre MySQL Workbench.
2. Junto a **MySQL Connections**, presiona el botón `+`.
3. Completa los campos:

   | Campo | Valor |
   |---|---|
   | Connection Name | `AD-301 · Clínica Huellitas` |
   | Connection Method | `Standard TCP/IP` |
   | Hostname | `127.0.0.1` |
   | Port | `3307` |
   | Username | `ad301` |
   | Password | `Huellitas2026_Local` |
   | Default Schema | `clinica_huellitas` |

4. Presiona **Store in Vault...** y escribe la contraseña.
5. Presiona **Test Connection**.
6. Si aparece **Successfully made the MySQL connection**, selecciona **OK**.

Usa `127.0.0.1`, no `localhost`. El puerto `3307` evita interferir con otro MySQL que pudiera existir en el PC.

## 3. Crear el diagrama

No necesitas abrir la conexión para dibujar el modelo.

1. Selecciona `File > New Model`.
2. Presiona `Add Diagram`.
3. Agrega los objetos que representarán las entidades.
4. Incorpora solo los atributos indispensables y marca un identificador por entidad.
5. Agrega las relaciones y revisa sus mínimos y máximos.
6. Guarda primero el MER v1 y luego usa `File > Save As` para crear el MER v2.

Workbench utiliza objetos propios del modelo físico, por eso muestra palabras como **Table**, **Column**, **PK** y **FK**. Para esta actividad el foco de evaluación sigue siendo conceptual. Deja los tipos sugeridos por la herramienta y no ejecutes `Forward Engineer`.

## 4. Guardar antes de salir

Guarda los archivos `.mwb` dentro de `entrega/`. Detener Docker no guarda ni elimina el archivo del modelo: ese archivo debe quedar realmente en la carpeta del repositorio.
