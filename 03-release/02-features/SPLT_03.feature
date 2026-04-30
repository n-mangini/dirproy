Feature: Gestión de Gastos

Scenario: Registrar gasto
  Given un participante está dentro de un evento
  When registra un gasto con monto, pagador y participantes
  Then el gasto queda guardado en el evento

Scenario: Editar gasto
  Given existe un gasto registrado
  When el participante modifica el gasto
  Then el gasto se actualiza correctamente

Scenario: Eliminar gasto
  Given existe un gasto registrado
  When el participante elimina el gasto
  Then el gasto desaparece del evento
  