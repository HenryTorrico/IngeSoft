require 'sinatra'
require 'cgi'

get '/' do
   erb :nuevoTerreno 
end

post '/play' do
   @tamX = params[:tamX].to_i
   @tamY = params[:tamY].to_i
   @posX = params[:posX].to_i
   @posY = params[:posY].to_i
   erb :terreno
 end

get '/nuevoAuto/:x/:y' do
   @tamX=params[:x].to_i 
   @tamY=params[:y].to_i
   erb :nuevoAuto
end

post '/autoTerreno/:x/:y' do
   @tamX=params[:x].to_i 
   @tamY=params[:y].to_i
   @posX = params[:posX].to_i
   @posY = params[:posY].to_i
   @orientacion = params[:direccion]
   puts @tamX
   puts @tamY
   puts @posX
   puts @posY
   erb :autoTerreno
 end