require 'sinatra'
require './lib/Preguntas.rb'

get '/' do
	@@preguntas = Preguntas.new
	@primeraPregunta = @@preguntas.pregunta
	@opciones = armar_opciones
	@puntos = @@preguntas.puntaje
	@estado = 0
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

	if @@preguntas.indice_pregunta < 7 then 
		@primeraPregunta = @@preguntas.pregunta

	else 
		@puntos = @@preguntas.puntaje
		erb :ganaste
	end
	
	
	if @@preguntas.mensaje_inicio == "Fin del Juego" then
		@puntos = @@preguntas.puntaje
		erb :ganaste
	else
		@estado = 1
		@opciones = armar_opciones
		@puntos = @@preguntas.puntaje
		erb :playpreguntas
	end
end

def armar_opciones 
	opciones = ""
	opcion = @@preguntas.respuestas
	opcion.each do |valor|
		
		opciones += "<input type='radio' name='opcion' value='"+valor+"'/>"+ valor +"<br>"
	end
	
	return opciones
end

