Given("visito la pagina principal") do
  visit '/'
  
end
  
When("pulso el boton {string}") do |string|
    click_link(string)
    erb :crearTerreno
end

When("lleno el campo {string} con {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("deberia ver el mensaje {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end