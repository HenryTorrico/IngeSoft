require 'sinatra'

get '/' do
   erb :saludo 
end

post '/saludar' do
    @nombre_persona = params[:nombre]
    erb :saludo_nombre
end
  