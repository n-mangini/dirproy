# SPLT-001: Crear Evento con Owner

**Como** usuario registrado  
**Quiero** crear un nuevo evento con un nombre  
**Para que** pueda empezar a organizar los gastos del grupo como owner del split.

## Descripcion

Esta historia forma parte del inicio del flujo de SplitIt. Para que todo evento tenga un responsable claro, la creación de un split requiere que la persona tenga una cuenta y una sesión iniciada.

El evento creado queda asociado automáticamente al usuario que lo creó como owner. El acceso sin registro queda fuera de esta historia y corresponde al flujo de invitados mediante enlace compartido.

---

## Criterios de Aceptación

1. El sistema debe permitir crear un evento solo a un usuario registrado con sesión iniciada.
2. El nombre del evento es obligatorio.
3. El sistema debe validar que el nombre del evento no sea solo espacios en blanco.
4. El límite de caracteres para el nombre del evento es de 50.
5. Al guardar un nombre válido, el sistema debe crear el evento.
6. El evento creado debe quedar asociado automáticamente al usuario que lo creó como owner.
7. Al crear el evento, el owner debe ver inmediatamente la pantalla del evento creado.

---

## Estimación Inicial
- **Story Points:** (A definir en la sesión grupal)
- **Prioridad:** Alta
