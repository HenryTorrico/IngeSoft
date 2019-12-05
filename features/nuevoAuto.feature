Feature:
    Como jugador
    Quiero crear un auto
    Para poder manejarlo

    Scenario:
    Given visito la pagina principal
    And ingreso "4" en el campo de auto "posX"
    And ingreso "2" en el campo de auto "posY"
    And ingreso "I" en el campo de auto "direccion"
    When presiono el boton "Generar Auto"
    Then deberia ver el mensaje "Terreno con un Auto"
