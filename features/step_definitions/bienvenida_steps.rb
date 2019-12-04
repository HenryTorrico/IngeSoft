Given("visito la pagina principal") do
  visit '/'
end

Then("deberia ver un mensaje {string}") do |string|
  last_response.body.should =~ /#{string}/m
end

Given("ingreso {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  When("presiono el boton {string}") do |name|
    click_button(name)
end
  
  Then("deberia ver {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end