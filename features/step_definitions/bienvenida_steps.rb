Given("visito la pagina principal") do
    visit '/'
end
  
Then("deberia ver un mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
end