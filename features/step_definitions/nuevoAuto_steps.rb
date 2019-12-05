
Given("ingreso {string} en el campo de auto {string}") do |string, string2|
    visit '/nuevoAuto/0/0'
    fill_in(string2, :with => string)
end