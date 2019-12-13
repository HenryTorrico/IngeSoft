Feature:
    Como jugador
    Quiero crear varios autos
    Para poder manejarlos
    
    
Scenario:
    Given visito la pagina principal
    And lleno las posiciones con "4" , "3" y "N"
    When presiono el boton en terreno "Generar Autos"
    Then deberia ver el boton para mover los autos"Mover Autos"