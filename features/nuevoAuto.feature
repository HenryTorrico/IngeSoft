Feature:
    Como jugador
    Quiero crear un auto
    Para poder manejarlo

Scenario:
    Given visito la pagina principal
    When ingreso "3" en el campo de posicion X "posXAuto1"
    And ingreso "3" en el campo de posicion Y "posYAuto1"
    And ingreso "N" en el campo de direccion "direccionAuto1"
    And presiono el boton "Generar Autos"
    Then deberia ver el mensaje "Terreno con Auto"
    And deberia ver el boton "Mover Autos"

    