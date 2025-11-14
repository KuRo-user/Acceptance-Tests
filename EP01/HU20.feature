Feature: Usabilidad intuitiva de la app 
  Como usuario 
  Quiero que la aplicación sea intuitiva y fácil de navegar
  Para encontrar rápidamente las funciones que necesito.

  Scenario: Navegación normal
    Given que accedo a la app
    When busco mis rutinas, configuraciones o estadísticas
    Then puedo llegar a ellas con un máximo de 6 clics mediante menús claros

    Examples: INPUT
    | Titulos de funciones de la app |
    | Usuario abre la app y busca "Mis rutinas" | 

    Examples: OUTPUT
    | Llega a la pantalla de rutinas en 4 clics |

  Scenario: Iconos y etiquetas comprensibles
    Given que estoy en la pantalla principal
    When visualizo los botones y menús
    Then puedo identificar su función fácilmente gracias a iconos y etiquetas claras

    Examples: INPUT
    | Iconos de navegación |
    | Usuario ve el icono de rutinas | 

    Examples: OUTPUT
    | Identifica que es la sección "Rutinas" |
