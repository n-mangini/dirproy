## SPLT-07 Multi-moneda

Permite registrar gastos en distintas monedas y unificar su valor en una divisa base para el cálculo de balances.

---

## Criterios de Aceptación (Definition of Done)

La épica se considera **entregada y aceptada** cuando se cumplen los siguientes puntos:

- [ ] **Registro en múltiples monedas:** Un gasto puede ser registrado en una moneda distinta a la moneda base del evento.
- [ ] **Definición de moneda base:** Cada evento tiene una divisa base sobre la cual se calculan los balances.
- [ ] **Conversión al registrar:** Al registrar un gasto en una moneda distinta, el sistema convierte su valor a la moneda base en ese momento.
- [ ] **Uso de API externa:** La conversión se realiza utilizando una API externa de tipo de cambio.
- [ ] **Persistencia de conversión:** El valor convertido se almacena y se utiliza para todos los cálculos posteriores, sin recalcularse.
- [ ] **Consistencia en balances:** Todos los balances y deudas se calculan utilizando la moneda base del evento.
- [ ] **Visualización unificada:** Los participantes visualizan balances y deudas en una única moneda estándar.

---

## Valor Entregado

Permite gestionar gastos en contextos reales (viajes, grupos internacionales) sin que los usuarios tengan que realizar conversiones manuales.
