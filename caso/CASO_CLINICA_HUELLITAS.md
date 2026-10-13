# Caso: Clínica Veterinaria Huellitas

La Clínica Veterinaria Huellitas necesita representar la información principal de sus atenciones. Hoy los registros se encuentran dispersos y el equipo quiere acordar un modelo común antes de construir cualquier sistema.

## Lo que ocurre en la clínica

- La clínica registra a las personas responsables y sus datos de contacto.
- Una persona responsable puede registrar varias mascotas, pero cada mascota queda asociada a una sola persona responsable.
- De cada mascota interesa conocer, al menos, su nombre, especie, raza, fecha de nacimiento y observaciones relevantes.
- La clínica cuenta con veterinarios. De cada uno necesita registrar sus datos básicos y especialidad.
- Cuando una mascota asiste, se registra una atención con fecha y hora, motivo, observaciones y el veterinario que la realizó.
- Una mascota puede tener muchas atenciones a lo largo del tiempo. Cada atención corresponde a una sola mascota y es realizada por un solo veterinario.
- La clínica mantiene un catálogo de servicios, por ejemplo: consulta general, vacunación, curación y toma de muestra.
- Una atención incorpora uno o más servicios. El mismo servicio puede utilizarse en distintas atenciones.
- Para cada servicio usado en una atención se necesita registrar la cantidad, el precio aplicado y una nota opcional. El precio aplicado debe conservarse aunque el precio del catálogo cambie después.
- Una atención puede quedar pendiente de pago. Si se registra el pago, interesa conocer su fecha, monto y medio de pago.

## Tres situaciones de ejemplo

1. Ana Rojas lleva a **Luna**, su gata, a una consulta general con la veterinaria Camila Soto. En esa atención se realiza además una vacunación.
2. Luis Pérez tiene registradas dos mascotas: **Rocky** y **Milo**. Rocky ha asistido tres veces durante el año.
3. Una atención de Milo ya terminó, pero su pago sigue pendiente.

## Preguntas que el modelo debe poder responder

- ¿Qué mascotas están asociadas a cada persona responsable?
- ¿Qué atenciones ha recibido una mascota?
- ¿Qué veterinario realizó cada atención?
- ¿Qué servicios se aplicaron, en qué cantidad y a qué precio?
- ¿Qué atenciones tienen un pago registrado y cuáles siguen pendientes?

## Límites de la actividad

Trabajaremos en el nivel conceptual. No agregues información que el caso no necesita y no avances todavía a SQL, normalización ni implementación de la base de datos. Cuando falte una decisión, anótala como supuesto en vez de ocultarla.
