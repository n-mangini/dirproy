Feature: Cálculo de Balances

Scenario: Calcular balances automáticamente
  Given existen gastos registrados en el evento
  When el sistema procesa los gastos
  Then calcula quién le debe a quién

Scenario: Recalcular balances al modificar gastos
  Given existen balances calculados
  When se agrega, edita o elimina un gasto
  Then el sistema recalcula los balances automáticamente
  