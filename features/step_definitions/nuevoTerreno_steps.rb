Given("visito la pagina principal") do
    visit '/'
  end
  
  Given("ingreso {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  When("presiono el boton {string}") do |name|
    click_button(name)
  end
  
  Then("deberia ver el mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end

  Then("deberia ver el boton {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end