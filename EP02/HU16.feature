Feature: HU16 - Ajuste de dificultad
  Como usuario
  Quiero ajustar la dificultad de las rutinas
  Para que la IA adapte los ejercicios a mi nivel

  Scenario: Ajustar dificultad de manera personalizada
    Given que quiero generar una nueva rutina
    And estoy en la pantalla de generación de rutina
    When cambio la dificultad de la rutina (por ejemplo: fácil, medio, difícil)
    Then la IA debe ajustar los ejercicios según la dificultad seleccionada

    Examples: INPUT
    | Ingrese dificultad |
    | dificultad = fácil |
    | dificultad = medio |
    | dificultad = difícil |

    Examples: OUTPUT
    | Ejercicios básicos: sentadillas sin peso, planchas cortas |
    | Ejercicios moderados: sentadillas con salto, burpees |
    | Ejercicios avanzados: HIIT, pesos y series intensas |

  Scenario: Sugerencia automática de dificultad por estancamiento
    Given que no puedo completar una rutina por su dificultad actual
    And la IA detecta un estancamiento o sobreesfuerzo
    When finalizo o reporto la rutina sin completarla
    Then la IA debe sugerir o adaptar automáticamente una dificultad menor para evitar lesiones

    Examples: INPUT
    | Proceso de la IA |
    | usuario no completa 70% de rutina |
    | IA detecta fatiga por repetidos fallos |

    Examples: OUTPUT
    | IA sugiere bajar a "medio" |