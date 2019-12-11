require './lib/auto.rb'
class Terreno

    def initialize(tamx,tamy)
        @tamX=tamx
        @tamY=tamy
        @listAutos=[]
    end

    def setX(num)
        if(num>0)
            @tamX=num
        end
    end

    def getX()
        return @tamX
    end

    def setY(num)
        if(num>0)
            @tamY=num
        end
    end

    def getY()
        return @tamY
    end

    def addAuto(auto)
        @listAutos<<auto
    end

    def getAuto(index)
        return @listAutos[index]
    end

    def getAutos()
        return @listAutos
    end

end
    
    