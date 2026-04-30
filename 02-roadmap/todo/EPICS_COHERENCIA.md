# Informe de coherencia entre épicas

Fecha: 2026-04-30

## Conclusión general

Las épicas son mayormente coherentes y cubren dominios separados: acceso registrado, acceso invitado, gestión de eventos, gestión de gastos, cálculo de balances, visualización de cuentas y multi-moneda.

No hay contradicciones graves, pero sí existen algunos bordes de responsabilidad que conviene ajustar para evitar solapamientos durante la implementación.

## Solapamientos principales

- **SPLT-01 Gestión de Eventos** y **SPLT-02 Acceso con Registro**: ambas hablan de creación y asociación de eventos. Conviene dejar en SPLT-02 solo autenticación, sesión e identificación de usuario, y en SPLT-01 la creación, ownership y asociación del evento.

- **SPLT-01 Gestión de Eventos** y **SPLT-03 Acceso sin Registro**: ambas tocan alta de participantes. No es contradictorio, pero debería explicitarse que el owner puede precargar participantes y que el invitado puede autoagregarse mediante el enlace.

- **SPLT-04 Gestión de Gastos** y **SPLT-05 Cálculo de Balances**: ambas exigen actualización automática de balances. SPLT-04 debería limitarse a registrar cambios en gastos y disparar el evento de actualización; SPLT-05 debería ser dueña del cálculo y recálculo de balances.

- **SPLT-05 Cálculo de Balances** y **SPLT-06 Visualización de Cuentas**: SPLT-05 calcula deudas, mientras que SPLT-06 las muestra. Conviene evitar criterios de claridad visual o comprensión de saldos en SPLT-05, porque pertenecen a la visualización.

- **SPLT-07 Multi-moneda** es transversal: afecta eventos, gastos, balances y visualización. No está mal como épica separada, pero debería marcarse como extensión cross-cutting o post-MVP, porque modifica responsabilidades de SPLT-01, SPLT-04, SPLT-05 y SPLT-06.

## Gaps de coherencia

- Falta definir permisos sobre gastos: quién puede editar o eliminar gastos, si cualquier invitado puede modificar gastos de otros y qué rol especial tiene el owner frente a los invitados.

- Falta definir identidad de participantes: nombres duplicados, cambio de participante en el mismo navegador, edición o eliminación de participantes y relación entre usuario registrado y participante.

- Falta definir el algoritmo de balances: si se calculan deudas netas mínimas, deudas por gasto, reglas de redondeo y tratamiento de moneda.

- En multi-moneda falta decidir cuándo se elige la moneda base del evento, qué pasa si falla la API de tipo de cambio y si las divisiones personalizadas se cargan en moneda original o en moneda base.

- Hay un typo menor en `SPLT-02_ATDD.md`: "Accesso" debería ser "Acceso".

## Recomendaciones

- Mantener SPLT-02 enfocada exclusivamente en autenticación, sesión e identidad de usuarios registrados.

- Mantener SPLT-01 como dueña del ciclo de vida del evento: creación, ownership, edición básica, enlace único y participantes precargados por el owner.

- Definir explícitamente que SPLT-03 cubre el flujo de invitado: acceso por enlace, selección o alta de participante y persistencia local de identidad.

- Separar responsabilidades entre SPLT-04 y SPLT-05: gastos registra datos económicos, balances calcula resultados derivados.

- Separar responsabilidades entre SPLT-05 y SPLT-06: balances produce datos calculados, visualización presenta esos datos al usuario.

- Tratar SPLT-07 como una épica transversal que debería implementarse después de tener estables eventos, gastos, balances y visualización.

## Evaluación final

La estructura actual es buena para un roadmap inicial. Las épicas no se pisan de forma bloqueante, pero necesitan límites más explícitos antes de convertirlas en historias o tareas técnicas. Los puntos más importantes a corregir son ownership de eventos, alta de participantes, recálculo de balances, visualización de deudas y alcance de multi-moneda.
