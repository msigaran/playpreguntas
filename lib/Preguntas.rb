class Preguntas
	def initialize
		@Inicio="Buena suerte!!!."
		@TodasPreguntas	=""
		@TodasRespuestas=""
		
	end 
	def mensaje_inicio 
		return @Inicio
	end 
	
	def preguntas
		@TodasPreguntas= ["Todos somos aficionados. La vida es tan corta que no da para más"]
		return @TodasPreguntas[0]		
	end
	def respuestas
		@TodasRespuestas= ["Charles Chaplin", "Albert Eintein","Paulo Cohelo"]
		return @TodasRespuestas[0]
	end
end
