require 'sinatra'
require 'cgi'
require './lib/auto'
require './lib/terreno'

get '/' do
   erb :nuevoTerreno
end

post '/play' do
   $tamX = params[:tamX].to_i
   $tamY = params[:tamY].to_i
   $posX = params[:posX].to_i
   $posY = params[:posY].to_i
   @cantAutos = params[:players].to_i
   $cantAutosAux = @cantAutos
   $terreno = Terreno.new($tamX,$tamY)
   while @cantAutos > 0
      $terreno.addAuto(Auto.new(0,0,"N"))
      @cantAutos = @cantAutos - 1
   end
   puts $terreno.getAutos()
   if(($tamX<0)||($tamY<0))
      puts $tamX
      puts $tamY 
      erb :errorTerreno
   else
      erb :terreno
   end
 end

get '/nuevoAuto/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   erb :nuevoAuto
end

get '/autoTerreno/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   puts $tamX
   puts $tamY
   $posAutosX = []
   $posAutosY = []
   $orientacionAutos = []
   if $cantAutosAux.to_i >= 2
      $posAutosX.push(params[:posXAuto1])
      $posAutosX.push(params[:posXAuto2])
      $posAutosY.push(params[:posYAuto1])
      $posAutosY.push(params[:posYAuto2])
      $orientacionAutos.push(params[:direccionAuto1])
      $orientacionAutos.push(params[:direccionAuto2])
   end
   if $cantAutosAux.to_i >= 3
      $posAutosX.push(params[:posXAuto3])
      $posAutosY.push(params[:posYAuto3])
      $orientacionAutos.push(params[:direccionAuto3])
   end
   if $cantAutosAux.to_i >= 4
      $posAutosX.push(params[:posXAuto4])
      $posAutosY.push(params[:posYAuto4])
      $orientacionAutos.push(params[:direccionAuto4])

   end
   if $cantAutosAux.to_i >= 5
      $posAutosX.push(params[:posXAuto5])
      $posAutosY.push(params[:posYAuto5])
      $orientacionAutos.push(params[:direccionAuto5])
   end
   
   for index in 0..$terreno.getAutos().length-1 do
      $terreno.getAuto(index).setlimitx($tamX)
      $terreno.getAuto(index).setlimity($tamY)
      $terreno.getAuto(index).setx($posAutosX[index].to_i)
      $terreno.getAuto(index).sety($posAutosY[index].to_i)
      $terreno.getAuto(index).setdir($orientacionAutos[index])
   end
   erb :autoTerreno

   #for index in 0..$terreno.getAutos().length-1 do
    #  if(($terreno.getAuto(index).getx()>$tamX)||($terreno.getAuto(index).gety()>$posY)||($terreno.getAuto(index).getx()<0)||($terreno.getAuto(index).gety()<0))
    #     erb :errorAuto
    #  elsif (($terreno.getAuto(index).getx()<$tamX)&&($terreno.getAuto(index).gety()<$posY)&&($terreno.getAuto(index).getx()>0)&&($terreno.getAuto(index).gety()>0))
    #     erb :autoTerreno
    #  end
   #end
   
end

post '/autoTerreno/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   puts $tamX
   puts $tamY
   $posAutosX = []
   $posAutosY = []
   $orientacionAutos = []
   if $cantAutosAux.to_i >= 1
      $posAutosX.push(params[:posXAuto1])
      $posAutosY.push(params[:posYAuto1])
      $orientacionAutos.push(params[:direccionAuto1])
   end
   if $cantAutosAux.to_i >= 2
      $posAutosX.push(params[:posXAuto2])
      $posAutosY.push(params[:posYAuto2])
      $orientacionAutos.push(params[:direccionAuto2])
   end
   if $cantAutosAux.to_i >= 3
      $posAutosX.push(params[:posXAuto3])
      $posAutosY.push(params[:posYAuto3])
      $orientacionAutos.push(params[:direccionAuto3])
   end
   if $cantAutosAux.to_i >= 4
      $posAutosX.push(params[:posXAuto4])
      $posAutosY.push(params[:posYAuto4])
      $orientacionAutos.push(params[:direccionAuto4])

   end
   if $cantAutosAux.to_i >= 5
      $posAutosX.push(params[:posXAuto5])
      $posAutosY.push(params[:posYAuto5])
      $orientacionAutos.push(params[:direccionAuto5])
   end
   for index in 0..$terreno.getAutos().length-1 do
      $terreno.getAuto(index).setlimitx($tamX)
      $terreno.getAuto(index).setlimity($tamY)
      $terreno.getAuto(index).setx($posAutosX[index].to_i)
      $terreno.getAuto(index).sety($posAutosY[index].to_i)
      $terreno.getAuto(index).setdir($orientacionAutos[index])
   end

   erb :autoTerreno

   #for index in 0..$terreno.getAutos().length-1 do
    #  if(($terreno.getAuto(index).getx()>$tamX)||($terreno.getAuto(index).gety()>$posY)||($terreno.getAuto(index).getx()<0)||($terreno.getAuto(index).gety()<0))
    #     erb :errorAuto
    #  elsif (($terreno.getAuto(index).getx()<$tamX)&&($terreno.getAuto(index).gety()<$posY)&&($terreno.getAuto(index).getx()>0)&&($terreno.getAuto(index).gety()>0))
    #     erb :autoTerreno
    #  end
   #end
   #puts $posAutosX.length
   #puts $posAutosY.length
   #puts $orientacionAutos.length
   #$posX = params[:posX].to_i
   #$posY = params[:posY].to_i
   #$orientacion = params[:direccion]
   #$auto=Auto.new($posX,$posY,$orientacion)
   #$auto.setlimitx($tamX)
   #$auto.setlimity($tamY)
   #$posicionAuto=$auto.getPosition()
  # if(($posX>$tamX)||($tamY<$posY)||($posX<0)||($posY<0))
  #    erb :errorAuto
  # else
   #   erb :autoTerreno
   #end
 end

 post '/moveCar' do
   @mov = params[:movement].to_s
   $auto.movimiento(@mov)
   puts $auto.getlimitx()
   puts $auto.getlimity()
   $posX = $auto.getx()
   $posY = $auto.gety()
   $posicionAuto = $auto.getPosition()
   erb :autoTerreno
end