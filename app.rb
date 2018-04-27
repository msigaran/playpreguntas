require 'sinatra'
require './lib/Preguntas.rb'

get '/' do
	preguntas = Preguntas.new
	@primeraPregunta = preguntas.pregunta
	@opciones = ""
	opcion = ["Jorge", "Milton", "Charles Chaplin"]
	@i =1
	opcion.each do |valor|
		
		@opciones += "<input type='radio' name='opcion' value='"+valor+"'/>"+ valor +"<br>"
		@i+=1
	end
	
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

	@opciones = ""
	opcion = ["Jorge", "Milton", "Charles Chaplin"]
	@i =1
	opcion.each do |valor|
		
		@opciones += "<input type='radio' name='opcion' value='"+valor+"'/>"+ valor +"<br>"
		@i+=1
	end

	erb :playpreguntas
end
