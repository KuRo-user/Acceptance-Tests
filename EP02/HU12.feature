Feature: HU12 - Rutinas cortas
  Como adulto con poco tiempo
  Quiero rutinas cortas y efectivas
  Para entrenar en lapsos reducidos

  Scenario: Generar rutina según tiempo disponible
    Given que defino mi tiempo disponible para entrenar
    When genero una rutina
    Then la IA debe generar sesiones acordes al tiempo definido

    Examples: INPUT
    | Ingresar tiempo disponible |
    | 10 minutos   | 
    | 15 minutos   |
    | 20 minutos   |

    Examples: OUTPUT
    | Rutina corta: calentamiento ligero + 2 ejercicios |
    | Rutina rápida: circuito de 3 ejercicios intensos  |
    | Rutina efectiva: circuito con descanso optimizado |