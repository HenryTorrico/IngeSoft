
When("lleno las posiciones con {string} , {string} y {string}") do |posX, posY, orientacion|
    visit '/play'
    fill_in('posXAuto1', with: posX)
    fill_in('posYAuto1', with: posY)
    fill_in('direccionAuto1', with: orientacion)
end

When("presiono el boton en terreno {string}") do |string|
    visit '/play'
    click_button(string)
  end
  
  Then("deberia ver el boton para mover los autos{string}") do |string|
    visit '/play'
    last_response.body.should =~ /#{string}/m
  end