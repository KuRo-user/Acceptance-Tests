Feature: HU05 - Alternar entre gimnasio y casa
  Como usuario joven
  Quiero alternar rutinas para gimnasio y casa
  Para tener flexibilidad al entrenar

  Scenario: Mostrar rutinas para casa
    Given que quiero generar rutinas de entrenamiento
    And selecciono la opción "Entrenar en casa"
    When confirmo mi elección
    Then la IA debe mostrar ejercicios acordes al entrenamiento en casa

    Examples: INPUT
    | Tipo de entrenamiento |
    | Entrenar en casa |
    
    Examples: OUTPUT
    |Rutinas sin equipo: sentadillas, plancas, ... |

  Scenario: Mostrar rutinas para gimnasio
    Given que estoy generando rutinas de entrenamiento
    And cambio la opción a "Gimnasio"
    When actualizo la selección
    Then la app debe mostrar rutinas que utilicen el equipo disponible en un gimnasio

    Examples: INPUT
    | Tipo de entrenamiento |
    | Gimnasio  | 
    
    Examples: OUTPUT
    | Rutinas con equipo: press banca, poleas, máquinas, ... |
