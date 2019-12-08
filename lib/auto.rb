class Auto

   # def initialize()
    #    @posicion_x = 0
    #    @posicion_y = 0
    #    @direccion = 'N'
    #    @position = [@posicion_x,@posicion_y,@direccion]
    #end

    def initialize(posx,posy,dir)
        @posicion_x = posx
        @posicion_y = posy
        @limite_x= posx
        @limite_y= posy
        @direccion = dir
        @position = [@posicion_x,@posicion_y,@direccion]
    end

    def getPosition()
        return @position
    end

    def updatePosition()
        @position = [@posicion_x,@posicion_y,@direccion]
    end
    
    def setx(num)
        if(num>=0)
            @posicion_x=num
            updatePosition()
        end
    end
    
    def getx()
        return @posicion_x
    end

    def sety(num)
        if(num>=0)
            @posicion_y=num
            updatePosition()
        end
    end

    def gety()
        return @posicion_y
    end

    def setlimitx(num)
        @limite_x=num
    end

    def getlimitx()
        return @limite_x
    end

    def setlimity(num)
        @limite_y=num
    end

    def getlimity()
        return @limite_y
    end

    def setdir (dir)
        if(dir=='N'||dir=='S'||dir=='E'||dir=='W')
            @direccion=dir
            updatePosition()
        end
    end

    def getdir ()
        return @direccion
    end

    def mover (mov)
        if((mov=="A")&&(permitirMov()))
            if(@direccion=='N')
                @posicion_y = @posicion_y - 1
            end
            if(@direccion=='E')
                @posicion_x = @posicion_x + 1
            end
            if(@direccion=='W')
                @posicion_x = @posicion_x - 1
            end
            if(@direccion=='S')
                @posicion_y = @posicion_y + 1
            end
        end
        if(mov=="D")
            if(@direccion=='N')
                @direccion='E'
            else
                if(@direccion=='E')
                    @direccion='S'
                else
                    if(@direccion=='W')
                        @direccion='N'
                    else
                        if(@direccion=='S')
                            @direccion='W'
                        end
                    end
                end
            end
        end
        if(mov=="I")
            if(@direccion=='N')
                @direccion='W'
            else
                if(@direccion=='E')
                    @direccion='N'
                else
                    if(@direccion=='W')
                        @direccion='S'
                    else
                        if(@direccion=='S')
                            @direccion='E'
                        end
                    end
                end
            end
        end
        updatePosition()
    end

    def movimiento(cadena)
        aux=cadena
        tam=aux.length
        i=0
        while (i<tam) do
            mover(aux[i])
            i=i+1
        end
    end

    def permitirMov()
        resp=false
        if((@direccion=='N')&&(@posicion_y>0))
            resp=true
        end
        if((@direccion=='S')&&(@posicion_y<@limite_y-1))
            resp=true
        end
        if((@direccion=='E')&&(@posicion_x<@limite_x-1))
            resp=true
        end
        if((@direccion=='W')&&(@posicion_x>0))
            resp=true
        end
        return resp
    end

end