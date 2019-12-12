require 'terreno'
RSpec.describe Terreno do
    it 'deberia devolver 1 para 1 en x' do
        terreno = Terreno.new(0,0)
        terreno.setX(1)
        expect(terreno.getX()).to eq(1)  
    end

    it 'deberia devolver 1 para 1 en y' do
        terreno = Terreno.new(0,0)
        terreno.setY(1)
        expect(terreno.getY()).to eq(1) 
    end

    it 'deberia devolver almacenar un auto en listAutos' do
        terreno = Terreno.new(0,0)
        auto=Auto.new(0, 0, 'N')
        terreno.addAuto(auto)
        expect(terreno.getAuto(0)).to eq(auto)
        expect(terreno.getAutos().length).to eq(1)
    end

end
