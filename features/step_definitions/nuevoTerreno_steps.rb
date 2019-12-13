Given("visito la pagina principal") do
  visit '/'
end

Given("ingreso {string} en el campo {string}") do |string, string2|
  fill_in(string2, :with => string)
end

When("presiono el boton {string}") do |string|
  click_button(string)
end

Then("deberia ver el mensaje {string}") do |string|
  visit '/play'
  last_response.body.should =~ /#{string}/m
end

Then("deberia ver el boton {string}") do |string|
  visit '/play'
  last_response.body.should =~ /#{string}/m
end