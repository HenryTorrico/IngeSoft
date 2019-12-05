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
   $terreno = Terreno.new($tamX,$tamY)
   
   if(($tamX<0)||($tamY<0))
    #  flash[:error] = "Tamanho de Terreno invalido"
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
   $posX = params[:posX].to_i
   $posY = params[:posY].to_i
   $orientacion = params[:direccion]
   $auto=Auto.new($posX,$posY,$orientacion)
   $posicionAuto=$auto.getPosition()
   erb :autoTerreno
end

post '/autoTerreno/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   $posX = params[:posX].to_i
   $posY = params[:posY].to_i
   $orientacion = params[:direccion]
   $auto=Auto.new($posX,$posY,$orientacion)
   $posicionAuto=$auto.getPosition()
   if(($posX>$tamX)||($tamY<$posY)||($posX<0)||($posY<0))
      erb :errorAuto
   else
      erb :autoTerreno
   end
 end

 post '/moveCar' do
   @mov = params[:movement].to_s
   $auto.mover(@mov)
   $posX = $auto.getx()
   $posY = $auto.gety()
   $posicionAuto = $auto.getPosition()
   erb :autoTerreno
end