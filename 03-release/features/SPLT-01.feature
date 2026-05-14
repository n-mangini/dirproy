Feature: Gestión de Eventos

Scenario: Crear evento con owner
  Given un usuario registrado inició sesión en la aplicación
  When crea un evento con un nombre válido
  Then el sistema crea el evento
  And asocia el evento al usuario como owner
  And muestra la pantalla del evento creado al owner

Scenario: Validar nombre del evento al crearlo
  Given un usuario registrado inició sesión en la aplicación
  When intenta crear un evento sin un nombre válido
  Then el sistema no crea el evento
  And informa que el nombre del evento es obligatorio

Scenario: Agregar participantes al evento
  Given existe un evento creado
  And el owner administra el evento
  When agrega nombres de participantes válidos
  Then los participantes quedan asociados al evento
  And quedan disponibles para gastos, accesos y balances

Scenario: Generar enlace único del evento
  Given existe un evento creado
  And el owner administra el evento
  When consulta el enlace del evento
  Then el sistema muestra un enlace único asociado al evento
  And permite copiar el enlace para compartirlo

Scenario: Editar nombre del evento
  Given existe un evento creado
  And el owner administra el evento
  When modifica el nombre del evento por un nombre válido
  Then el sistema actualiza el nombre del evento
  And muestra el nuevo nombre en la pantalla del evento

Scenario: Validar nombre del evento al editarlo
  Given existe un evento creado
  And el owner administra el evento
  When intenta modificar el nombre del evento por un nombre inválido
  Then el sistema no actualiza el nombre del evento
  And informa que el nombre del evento es obligatorio
