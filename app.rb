require 'sinatra'
require './lib/Preguntas.rb'

get '/' do
	@@preguntas = Preguntas.new
	@primeraPregunta = @@preguntas.pregunta
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
	
	
	if @@preguntas.respuesta_correcta(respuesta) == 1 then
		@resultado = "Tu respuesta fue correcta"
	else
		@resultado = "Tu respuesta fue erronea"
	end

	@@preguntas.nuevapregunta
	@primeraPregunta = @@preguntas.pregunta
	
	@opciones = armar_opciones
	

	erb :playpreguntas
end

def armar_opciones 
	opciones = ""
	opcion = @@preguntas.respuestas
	opcion.each do |valor|
		
		opciones += "<input type='radio' name='opcion' value='"+valor+"'/>"+ valor +"<br>"
	end
	
	return opciones
end

