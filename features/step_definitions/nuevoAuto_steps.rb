
Given("ingreso {string} en el campo de auto {string}") do |string, string2|
    visit '/nuevoAuto'
    fill_in(string2, :with => string)
end