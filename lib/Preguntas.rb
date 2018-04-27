class Preguntas
	def initialize
		@Inicio="Buena suerte!!!."
		@TodasRespuestascorrecta=""
		@TodasPreguntas= ["Todos somos aficionados. La vida es tan corta que no da para más", 
				  "Nunca confíes en un ordenador que no puedas lanzar por una ventana"]
		@TodasRespuestas= ["Charles Chaplin", "Albert Eintein","Paulo Cohelo","Charles Chaplin", "Albert Eintein","Steve Wozniak" ]
	end 
	def mensaje_inicio 
		return @Inicio
	end 
	
	def pregunta
		return @TodasPreguntas[0]		
	end

	def respuesta
		return @TodasRespuestas[0]
	end

	def respuesta_correcta respuestasel
		if  respuestasel==respuesta
			@TodasRespuestascorrecta=1
		else
			@TodasRespuestascorrecta=0
		end 
	end

	def envioEvaluacionrespuesta
		return @TodasRespuestascorrecta
	end

	

end
