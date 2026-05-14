# SPLT-003: Generar Enlace Único del Evento

**Como** owner de un evento  
**Quiero** obtener un enlace único de acceso al evento  
**Para que** pueda compartir el evento con las personas que participarán en los gastos.

## Descripcion

Esta historia completa la preparación básica del evento dentro de SPLT-01 - Gestión de Eventos. Luego de crear el evento y cargar participantes, el owner necesita contar con un enlace único y estable para compartirlo.

El alcance de esta historia se limita a generar, mostrar y permitir copiar el enlace del evento. No incluye abrir el enlace como invitado, seleccionar o auto-asignarse un participante, ni recordar la identidad local de quien accede por enlace; esas responsabilidades corresponden a SPLT-03 - Acceso sin Registro.

---

## Criterios de Aceptación

1. El sistema debe generar un enlace único asociado a cada evento.
2. El enlace generado debe identificar de forma inequívoca a un único evento.
3. Solo el owner del evento debe poder consultar el enlace desde la administración del evento.
4. La pantalla del evento debe mostrar al owner una opción para consultar el enlace del evento.
5. El sistema debe permitir copiar el enlace para compartirlo fuera de la aplicación.
6. Si se vuelve a consultar el enlace del mismo evento, el sistema debe mostrar el mismo enlace previamente generado.

---

## Estimación Inicial
- **Story Points:** (A definir en la sesión grupal)
- **Prioridad:** Alta
