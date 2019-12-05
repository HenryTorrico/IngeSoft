require 'sinatra'
require 'cgi'
require './lib/auto'

get '/' do
   erb :nuevoTerreno 
end

post '/play' do
   $tamX = params[:tamX].to_i
   $tamY = params[:tamY].to_i
   $posX = params[:posX].to_i
   $posY = params[:posY].to_i
   erb :terreno
 end

get '/nuevoAuto/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   erb :nuevoAuto
end

post '/autoTerreno/:x/:y' do
   $tamX=params[:x].to_i 
   $tamY=params[:y].to_i
   $posX = params[:posX].to_i
   $posY = params[:posY].to_i
   $orientacion = params[:direccion]
   puts $tamX
   puts $tamY
   puts $posX
   puts $posY
   $auto=Auto.new($posX,$posY,$orientacion)
   $posicionAuto=$auto.getPosition()
   erb :autoTerreno
 end

 post '/moveCar' do
   @mov = params[:movement].to_s
   $auto.mover(@mov)
   $posX = $auto.getx()
   $posY = $auto.gety()
   $posicionAuto = $auto.getPosition()
   erb :autoTerreno
end