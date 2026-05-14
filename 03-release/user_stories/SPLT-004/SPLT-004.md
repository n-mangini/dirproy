# SPLT-004: Editar Nombre del Evento

**Como** owner de un evento  
**Quiero** modificar el nombre del evento  
**Para que** pueda corregirlo o adaptarlo al contexto real del grupo.

## Descripcion

Esta historia forma parte de la administración básica del evento dentro de SPLT-01 - Gestión de Eventos. Luego de crear un evento, el owner puede necesitar corregir errores, aclarar el propósito del evento o actualizar su nombre.

El alcance de esta historia se limita a modificar el nombre del evento. No incluye editar participantes, modificar gastos, cambiar permisos ni controlar identidad de invitados.

---

## Criterios de Aceptación

1. El sistema debe permitir modificar el nombre de un evento existente.
2. Solo el owner del evento debe poder modificar el nombre del evento.
3. El nuevo nombre del evento es obligatorio.
4. El sistema debe validar que el nuevo nombre no sea solo espacios en blanco.
5. El límite de caracteres para el nuevo nombre del evento es de 50.
6. Al guardar un nombre válido, el sistema debe actualizar el nombre del evento.
7. Luego de actualizarse, el nuevo nombre debe mostrarse en la pantalla del evento.

---

## Estimación Inicial
- **Story Points:** (A definir en la sesión grupal)
- **Prioridad:** Media
