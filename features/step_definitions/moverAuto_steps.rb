Given("ingreso {string} en el campo de movimiento {string}") do |direccion, movement|
    visit '/autoTerreno/10/10'
    fill_in(movement, :with => direccion)
end
  
Then("deberia mover mi auto") do
    puts "Movimiento realizado"
end