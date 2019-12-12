require '././lib/auto'

When("selecciono {int} auto") do |int|
    visit '/'
    select /#{int}/m, :from => "players"
end


When("lleno las posiciones con {int} y {int} y {string}") do |movX, movY, orientacion|
    visit '/play'
    fill_in('posXAuto1', with: movX)
    fill_in('posYAuto1', with: movY)
    fill_in('direccionAuto1', with: orientacion)
end
  