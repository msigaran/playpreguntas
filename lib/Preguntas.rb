class Preguntas
	def initialize
		@Inicio="Buena suerte!!!."
		@TodasRespuestascorrecta=""
		@TodasPreguntas= ["Todos somos aficionados. La vida es tan corta que no da para más", 
				  "Nunca confíes en un ordenador que no puedas lanzar por una ventana",
				  "El ordenador nació para resolver problemas que antes no existían",
				  "El software es un gas: se expande hasta llenar su contenedor",
				  "No temo a los ordenadores; lo que temo es quedarme sin ellos",
				  "Los estándares son siempre obsoletos. Eso es lo que los hace estándares"]
		@TodasRespuestas= ["Charles Chaplin", "Albert Eintein", "Paulo Cohelo",
				   "Steve Wozniak","Charles Chaplin", "Albert Eintein",
				   "Bill Gates","Albert Eintein","Stephen Hawking",
				   "Nathan Myhrvold","Charles Chaplin","Bill Gates",
				   "Isaac Asimov","Bill Gates", "Steve Wozniak",
				   "Alan Bennett","Charles Chaplin","Bill Gates"]
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
