require 'auto'
RSpec.describe Auto do

    #controlando funcion set y get
    it 'deberia devolver 1 para 1 en x' do
        auto = Auto.new(0, 0, 'N')
        auto.setx(1)
        expect(auto.getx()).to eq(1)
    end

    it 'deberia devolver 1 para 1 en y' do
        auto= Auto.new(0, 0, 'N')
        auto.sety(1)
        expect(auto.gety()).to eq(1)
    end

    it 'deberia devolver direccion N para N' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('N')
        expect(auto.getdir()).to eq('N')
    end

    it 'deberia devolver direccion S para S' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('S')
        expect(auto.getdir()).to eq('S')
    end

    it 'deberia devolver direccion E para E' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('E')
        expect(auto.getdir()).to eq('E')
    end

    it 'deberia devolver direccion W para W' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('W')
        expect(auto.getdir()).to eq('W')
    end

    it 'deberia devolver la posicion actual' do
        auto= Auto.new(0, 0, 'N')
        expect(auto.getPosition()).to eq([0,0,'N'])
    end

    it 'deberia devolver la posicion actual despues de cambios' do
        auto= Auto.new(0, 0, 'N')
        auto.setx(5)
        auto.sety(7)
        auto.setdir('S')
        expect(auto.getPosition()).to eq([5,7,'S'])
    end

    #movimiento adelante
    it 'deberia aumentar en Y al avanzar hacia el norte' do
        auto= Auto.new(0, 0, 'N')
        y=auto.gety()
        auto.setdir('N')
        auto.mover('A')
        expect(auto.gety()).to eq(y+1)
    end

    it 'deberia aumentar en X al avanzar hacia el este' do
        auto= Auto.new(0, 0, 'N')
        x=auto.getx()
        auto.setdir('E')
        auto.mover('A')
        expect(auto.getx()).to eq(x+1)
    end

    it 'deberia disminuir en y al avanzar hacia el sud' do
        auto= Auto.new(0, 0, 'N')
        y=auto.gety()
        auto.setdir('S')
        auto.mover('A')
        expect(auto.gety()).to eq(y-1)
    end

    it 'deberia disminuir en X al avanzar hacia el oeste' do
        auto= Auto.new(0, 0, 'N')
        x=auto.getx()
        auto.setdir('W')
        auto.mover('A')
        expect(auto.getx()).to eq(x-1)
    end

    
    it 'deberia cambiar direccion al este si gira a la derecha desde el norte y aumentar en x' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('N')
        x=auto.getx()
        auto.mover('D')
        expect(auto.getdir()).to eq('E')
        expect(auto.getx()).to eq(x+1)
    end

    it 'deberia cambiar direccion al sud si gira a la derecha desde el este y disminuir en y' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('E')
        y=auto.gety()
        auto.mover('D')
        expect(auto.getdir()).to eq('S')
        expect(auto.gety()).to eq(y-1)
    end

    it 'deberia cambiar direccion al oeste si gira a la derecha desde el sud y disminuir en x' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('S')
        x=auto.getx()
        auto.mover('D')
        expect(auto.getdir()).to eq('W')
        expect(auto.getx()).to eq(x-1)
    end

    it 'deberia cambiar direccion al norte si gira a la derecha desde el oeste y aumentar en y' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('W')
        y=auto.gety()
        auto.mover('D')
        expect(auto.getdir()).to eq('N')
        expect(auto.gety()).to eq(y+1)
    end
    
    #movimiento izquierda
    it 'deberia cambiar direccion al oeste si gira a la izquierda desde el norte y disminuir en x' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('N')
        x=auto.getx()
        auto.mover('I')
        expect(auto.getdir()).to eq('W')
        expect(auto.getx()).to eq(x-1)
    end

    it 'deberia cambiar direccion al norte si gira a la izquierda desde el este y aumentar en y' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('E')
        y=auto.gety()
        auto.mover('I')
        expect(auto.getdir()).to eq('N')
        expect(auto.gety()).to eq(y+1)
    end

    it 'deberia cambiar direccion al este si gira a la izquierda desde el sud y aumentar en x' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('S')
        x=auto.getx()
        auto.mover('I')
        expect(auto.getdir()).to eq('E')
        expect(auto.getx()).to eq(x+1)
    end

    it 'deberia cambiar direccion al sud si gira a la izquierda desde el oeste y disminuir en y' do
        auto= Auto.new(0, 0, 'N')
        auto.setdir('W')
        y=auto.gety()
        auto.mover('I')
        expect(auto.getdir()).to eq('S')
        expect(auto.gety()).to eq(y-1)
    end

end