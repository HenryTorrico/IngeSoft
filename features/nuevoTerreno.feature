Feature:
    Como jugador
    Quiero crear un terreno
    Para poder situar ahi mi auto

    Scenario:
    Given visito la pagina principal
    And ingreso "5" en el campo "tamX"
    And ingreso "5" en el campo "tamY"
    When presiono el boton "Generar Terreno"
    Then deberia ver el mensaje "Terreno"
    And deberia ver el boton "Nuevo Auto"