require 'auto'
RSpec.describe Auto do
    #controlando funcion set

    it 'deberia devolver 1 para 1 en x' do
        auto= Auto.new
        expect(auto.setx(1)).to eq(1)
    end

    it 'deberia devolver error para numeros no positivos en x' do
        auto= Auto.new
        expect(auto.setx(0)).to eq(nil)
    end

    it 'deberia devolver 1 para 1 en y' do
        auto= Auto.new
        expect(auto.sety(1)).to eq(1)
    end

    it 'deberia devolver error para numeros no positivos en y' do
        auto= Auto.new
        expect(auto.sety(0)).to eq(nil)
    end

    it 'deberia devolver direccion N para N' do
        auto= Auto.new
        expect(auto.setdir('N')).to eq('N')
    end

    it 'deberia devolver direccion S para S' do
        auto= Auto.new
        expect(auto.setdir('S')).to eq('S')
    end

    it 'deberia devolver direccion E para E' do
        auto= Auto.new
        expect(auto.setdir('E')).to eq('E')
    end

    it 'deberia devolver direccion W para W' do
        auto= Auto.new
        expect(auto.setdir('W')).to eq('W')
    end

    it 'deberia devolver error para direccion invalida' do
        auto= Auto.new
        expect(auto.setdir('A')).to eq(nil)
    end

end