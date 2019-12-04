require 'sinatra'

get '/' do
   erb :saludo 
end

get '/saludar' do
    @nombre_persona = params[:Nombre]
    erb :saludo_nombre
end

  