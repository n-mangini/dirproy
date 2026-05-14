# Informe de coherencia entre épicas

Fecha: 2026-05-07

## Conclusión general

Las épicas son mayormente coherentes y cubren dominios separados: acceso registrado, acceso sin registro, gestión de eventos, gestión de gastos, cálculo de balances, visualización de cuentas y multi-moneda.

Se corrigió la contradicción principal entre la visión del producto y el roadmap: cada evento tiene un owner registrado y la creación de eventos requiere una cuenta. El acceso sin registro queda definido para personas invitadas que ingresan mediante enlace compartido.

## Solapamientos principales

- **SPLT-01 Gestión de Eventos** y **SPLT-02 Acceso con Registro**: SPLT-01 cubre la creación y administración del evento por parte del owner. SPLT-02 cubre autenticación, sesión e identificación de usuario, además de restringir la creación de eventos a usuarios autenticados.

- **SPLT-01 Gestión de Eventos** y **SPLT-03 Acceso sin Registro**: ambas tocan alta de participantes. No es contradictorio, pero debería explicitarse que el owner puede precargar participantes y que una persona invitada que entra por enlace puede autoagregarse.

- **SPLT-04 Gestión de Gastos** y **SPLT-05 Cálculo de Balances**: ambas exigen actualización automática de balances. SPLT-04 debería limitarse a registrar cambios en gastos y disparar el evento de actualización; SPLT-05 debería ser dueña del cálculo y recálculo de balances.

- **SPLT-05 Cálculo de Balances** y **SPLT-06 Visualización de Cuentas**: SPLT-05 calcula deudas, mientras que SPLT-06 las muestra. Conviene evitar criterios de claridad visual o comprensión de saldos en SPLT-05, porque pertenecen a la visualización.

- **SPLT-07 Multi-moneda** es transversal: afecta eventos, gastos, balances y visualización. No está mal como épica separada, pero debería marcarse como extensión cross-cutting o post-MVP, porque modifica responsabilidades de SPLT-01, SPLT-04, SPLT-05 y SPLT-06.

## Gaps de coherencia

- Falta definir permisos sobre gastos: quién puede editar o eliminar gastos, si los invitados pueden modificar gastos de otros y qué rol especial tiene el owner frente a los invitados.

- Falta definir identidad de participantes: nombres duplicados, cambio de participante en el mismo navegador, edición o eliminación de participantes y relación entre usuario registrado y participante.

- Falta definir el algoritmo de balances: si se calculan deudas netas mínimas, deudas por gasto, reglas de redondeo y tratamiento de moneda.

- En multi-moneda falta decidir cuándo se elige la moneda base del evento, qué pasa si falla la API de tipo de cambio y si las divisiones personalizadas se cargan en moneda original o en moneda base.

## Recomendaciones

- Mantener SPLT-02 enfocada en autenticación, sesión, identidad de usuarios registrados y restricción de creación de eventos.

- Mantener SPLT-01 como dueña del ciclo de vida del evento: creación por owner registrado, edición básica, enlace único y participantes precargados por el owner.

- Definir explícitamente que SPLT-03 cubre el flujo de invitado por enlace: selección o alta de participante y persistencia local de identidad.

- Separar responsabilidades entre SPLT-04 y SPLT-05: gastos registra datos económicos, balances calcula resultados derivados.

- Separar responsabilidades entre SPLT-05 y SPLT-06: balances produce datos calculados, visualización presenta esos datos al usuario.

- Tratar SPLT-07 como una épica transversal que debería implementarse después de tener estables eventos, gastos, balances y visualización.

## Evaluación final

La estructura actual es buena para un roadmap inicial. Las épicas no se pisan de forma bloqueante, pero necesitan límites más explícitos antes de convertirlas en historias o tareas técnicas. Los puntos más importantes a debatir son permisos sobre eventos y gastos, alta de participantes, recálculo de balances, visualización de deudas y alcance de multi-moneda.
