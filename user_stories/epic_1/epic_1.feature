Feature: Gestión de Eventos

Scenario: Crear evento
  Given un usuario accede a la aplicación
  When crea un evento con un nombre
  Then el evento se crea correctamente

Scenario: Agregar participantes al evento
  Given existe un evento creado
  When el usuario agrega participantes
  Then los participantes quedan asociados al evento

Scenario: Generar enlace único
  Given existe un evento creado
  When el usuario solicita compartir el evento
  Then el sistema genera un enlace único de acceso
  