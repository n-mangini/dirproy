Feature: Acceso sin Registro

Scenario: Acceder mediante enlace
  Given existe un enlace válido de evento
  When un participante accede al enlace
  Then puede ingresar al evento sin autenticarse

Scenario: Visualizar evento sin cuenta
  Given un participante accedió mediante enlace
  When visualiza el evento
  Then puede ver gastos y balances
  