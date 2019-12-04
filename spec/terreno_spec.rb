require 'terreno'
RSpec.describe Terreno do
    it 'deberia devolver 1 para 1 en x' do
        terreno = Terreno.new(0,0)
        terreno.setX(1)
        expect(terreno.getX()).to eq(1)  
    end

    #it 'deberia devolver error para numeros no validos en x' do
    #    terreno = Terreno.new(0,0)
    #    expect(terreno.setX(0)).to eq(nil) 
    #end

    it 'deberia devolver 1 para 1 en y' do
        terreno = Terreno.new(0,0)
        terreno.setY(1)
        expect(terreno.getY()).to eq(1) 
    end

    #it 'deberia devolver error para numeros no validos en y' do
    #    terreno = Terreno.new(0,0)
    #    expect(terreno.setY(0)).to eq(nil) 
    #end
end
