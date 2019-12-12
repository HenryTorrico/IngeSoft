Feature:
    Como jugador
    Quiero crear un auto
    Para poder manejarlo

Scenario:
    Given visito la pagina principal
    When lleno las posiciones con 4 y 3 y "N"
    And presiono el boton "Generar Autos"
    Then deberia ver el mensaje "Terreno con Auto"
    And deberia ver el boton "Mover Autos"