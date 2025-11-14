Feature: HU01 - Registro Rápido
  Como usuario joven
  Quiero registrarme rápidamente
  Para empezar a usar la app sin demora (en menos de 1 minuto)

  Scenario: Registro rápido con usuarios nuevos
    Given que soy un usuario nuevo
    And no tengo una cuenta registrada previamente
    When completo el formulario de registro con datos válidos
    Then debo poder acceder a la aplicación en menos de 1 minuto
    And debo ver el menú principal

    Examples: INPUT
    | Nombre | Email | Contraseña | Contraseña | 
    | Miguel | miguelmorales@gmail.com | miguel123123 | miguel123123 | 

    Examples: OUTPUT
    | ingreso al menú principal de la aplicación web |

  Scenario: Registro rápido con usuarios registrados
    Given que soy un usuario registrado
    When ingreso a la aplicación desde la pantalla inicial
    Then debo poder acceder al menú principal en menos de 1 minuto

    Examples: INPUT
    | Email | Contraseña |
    | miguelmorales@gmail.com | miguel123123 |

    Examples: OUTPUT
    | ingreso al menú principal de la aplicación web | 