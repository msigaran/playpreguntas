require 'sinatra'
require './lib/Preguntas.rb'

get '/' do
	preguntas = Preguntas.new
	@primeraPregunta = preguntas.pregunta
    erb :playpreguntas
end

post '/playpreguntas' do
	respuesta = params["respuesta"]
	playPreguntas = Preguntas.new
	
	if playPreguntas.respuesta_correcta(respuesta) == 1 then
		@resultado = "Tu respuesta fue correcta"
	else
		@resultado = "Tu respuesta fue erronea"
	end

	@primeraPregunta = playPreguntas.pregunta
	erb :playpreguntas
end
