
When("selecciono {int} auto") do |int|
    visit '/'
    select /#{int}/m, :from => "players"
end

When("ingreso {string} en el campo de direccion {string}") do |direccion, campo|
    visit '/play'
    fill_in(campo, :with => direccion)
  end
  
  When("ingreso {string} en el campo de posicion X {string}") do |posX, campo|
    visit '/play'
    fill_in(campo, :with => posX) 
 end
  
  When("ingreso {string} en el campo de posicion Y {string}") do |posY, campo|
    visit '/play'
    fill_in(campo, :with => posY)
  end