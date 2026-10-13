# Actividad en equipo: del caso al MER v2

## Propósito

Construir y revisar un modelo entidad–relación de Clínica Huellitas que represente entidades, atributos, identificadores, relaciones, cardinalidad, opcionalidad y una relación de muchos a muchos con datos propios.

> MySQL Workbench llama **Table** al objeto visual. En esta actividad úsalo para representar una entidad. No se evaluarán tipos de datos, SQL, claves foráneas ni normalización.

## Parte 1 · Comprender el caso (10 minutos)

1. Lee [el caso](CASO_CLINICA_HUELLITAS.md).
2. Subraya conceptos que podrían transformarse en entidades.
3. Identifica atributos y propone un identificador para cada entidad.
4. Anota las decisiones dudosas como supuestos.

## Parte 2 · Construir el MER v1 (25 minutos)

1. En Workbench selecciona `File > New Model` y luego `Add Diagram`.
2. Representa las entidades y sus atributos indispensables.
3. Incorpora las relaciones descritas por el caso.
4. Señala mínimos y máximos: ¿la participación es obligatoria u opcional?, ¿es uno o muchos?
5. Guarda el archivo como `entrega/equipo_N_huellitas_v1.mwb`.

## Parte 3 · Revisión cruzada (15 minutos)

Intercambia el modelo con otro equipo y revisa únicamente estas preguntas:

- ¿Cada entidad tiene un identificador claro?
- ¿Todas las relaciones pueden explicarse con una frase del caso?
- ¿Los mínimos y máximos están justificados?
- ¿La relación entre atención y servicio conserva cantidad y precio aplicado?
- ¿El pago puede estar ausente sin romper el modelo?
- ¿Hay información agregada sin respaldo en el caso?

Registra dos observaciones concretas para el otro equipo.

## Parte 4 · Construir el MER v2 (20 minutos)

1. Conserva el archivo original.
2. Usa `File > Save As` y crea `entrega/equipo_N_huellitas_v2.mwb`.
3. Corrige el modelo a partir de la revisión.
4. Resuelve la relación muchos a muchos que posee datos propios mediante una entidad asociativa.
5. Completa `entrega/REGLAS_Y_SUPUESTOS.md`.

## Entrega mínima

- MER v1.
- MER v2.
- Seis reglas de negocio redactadas con claridad.
- Supuestos pendientes.
- Trazabilidad: qué cambió entre v1 y v2 y por qué.

## Ticket de salida individual

Responde en dos o tres líneas:

1. ¿Qué decisión de cardinalidad u opcionalidad fue la más difícil?
2. ¿Qué evidencia del caso utilizaste para justificarla?
