Feature:
    Como jugador
    Quiero crear un terreno
    Para poder situar ahi mi auto

Scenario:
    Given visito la pagina principal
    And ingreso "5" en el campo "tamX"
    And ingreso "5" en el campo "tamY"
    And ingreso "4" en el campo "players"
    When presiono el boton "Generar Terreno"
    Then deberia ver el mensaje "Terreno"
    And deberia ver el boton "Generar Autos"

Scenario:
    Given visito la pagina principal
    And ingreso "-3" en el campo "tamX"
    And ingreso "-3" en el campo "tamY"
    And ingreso "4" en el campo "players"
    When presiono el boton "Generar Terreno"
    Then deberia ver el mensaje "Datos de Terreno ingresados no validos!"
    And deberia ver el boton "Aceptar"

