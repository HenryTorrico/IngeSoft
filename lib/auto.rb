class Auto

    posicion_x=0
    posicion_y=0

    direccion='N'


    def setx(num)
        if(num>0)
            posicion_x=num
            return posicion_x
        else
            return nil
        end
    end
    

    def sety(num)
        if(num>0)
            posicion_y=num
            return posicion_y
        else
            return nil
        end
    end

    def setdir (dir)
        if(dir=='N'||dir=='S'||dir=='E'||dir=='W')
            direccion=dir
            return direccion
        else
            return nil
        end
    end
    
end