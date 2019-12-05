Feature:
    Como jugador
    Quiero mover un auto
    Para poder cambiar de posicion

Scenario:
    Given visito la pagina principal
    And ingreso "A" en el campo de movimiento "movement"
    When presiono el boton "mover"
    Then deberia mover mi auto
