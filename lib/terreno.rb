require './lib/auto.rb'
class Terreno

    def initialize(tamx,tamy)
        @tamX=tamx
        @tamY=tamy
    end

    def setX(num)
        if(num>0)
            @tamX=num
        else
            puts "valor invalido"
        end
    end

    def getX()
        return @tamX
    end

    def setY(num)
        if(num>0)
            @tamY=num
        else
            puts "valor invalido"
        end
    end

    def getY()
        return @tamY
    end
end
    
    