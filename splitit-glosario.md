El objetivo de este documento es establecer un lenguaje común entre el
equipo técnico y los expertos del negocio. Todos los términos aquí
definidos deben utilizarse de forma consistente en el código (nombres de
variables, clases, bases de datos), en la interfaz de usuario y en las
conversaciones diarias.

Evento/Split: Es la unidad básica de organización del sistema.
Representa un evento, viaje o contexto temporal específico (ej:
"Vacaciones 2026", "Asado Viernes") en el cual un grupo de participantes
incurre en gastos comunes que deben ser registrados, calculados y
finalmente liquidados. Tendencia a usar Split para temas marketineros y Evento para entornos formales.

Transferencia: Registro de un movimiento de fondos entre
participantes para compensar saldos individuales, sin alterar el costo
total acumulado del proyecto.

Saldados: que al final del viaje todos hayan pagado. “Que estén
limpias las cuentas”

Gasto: Salida de capital del grupo hacia un tercero que
genera una obligación de compensación interna entre los participantes.

Usuario Fantasma (Participante) :Participante creado localmente
para el cálculo de saldos que no posee una cuenta registrada ni
credenciales en la aplicación.

Divisa: Unidad de cuenta estándar del proyecto que permite
normalizar gastos en diferentes monedas para calcular balances y
liquidaciones sobre una base común. **Ejemplo:** Si un proyecto incurre
en gastos en euros (€), yenes (¥) y pesos (MXN), se define el **Dólar
(USD)** como la divisa base.
