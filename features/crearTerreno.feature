Feature:
    Como jugador
    Quiero poder ingresar el valor de ancho y largo del tablero
    Para generar el tablero en base a este valor

Scenario:
    Given visito la pagina principal
    And lleno el campo "tamX" con "5"
    And lleno el campo "tamY" con "5"
    When pulso el boton "Crear Terreno"
    Then deberia ver el mensaje "Bienvenido al Mapa creado"
