require "./lib/Preguntas.rb"

describe "JUEGO PREGUNTAS" do
	it "INICIA JUEGO" do
		pregunta = Preguntas.new
		pregunta.mensaje_inicio.should == "Buena suerte!!!." 
	end

	it "Leer primera pregunta" do
		pregunta = Preguntas.new
		pregunta.pregunta.should == "Todos somos aficionados. La vida es tan corta que no da para más" 
	end
	it "Leer primera respuesta" do
		respuesta = Preguntas.new
		respuesta.respuesta.should == "Charles Chaplin" 
	end

	it "valida respuesta correcta" do
		respuesta = Preguntas.new
		respuesta.respuesta_correcta "Charles Chaplin" 
		respuesta.envioEvaluacionrespuesta.should == 1
 
	end

	it "valida respuesta incorrecta" do
		respuesta = Preguntas.new
		respuesta.respuesta_correcta "Albert Eintein" 
		respuesta.envioEvaluacionrespuesta.should == 0
 
	end

	it "lectura de la primeras respuestas" do
		respuesta=Preguntas.new
		respuesta.respuestas.should == ["Charles Chaplin", "Albert Eintein", "Paulo Cohelo"] 
	end
	it "Leer segunda pregunta" do
		pregunta = Preguntas.new
		pregunta.nuevapregunta
		pregunta.pregunta.should == "Nunca confíes en un ordenador que no puedas lanzar por una ventana" 
	end
	it "lectura de la segunda respuestas" do
		respuesta=Preguntas.new
		respuesta.nuevapregunta
		respuesta.respuestas.should == ["Steve Wozniak","Charles Chaplin", "Albert Eintein"]
	end
	it "valida respuesta correcta de la segunda pregunta" do
		respuesta=Preguntas.new
		respuesta.nuevapregunta
		respuesta.respuesta_correcta "Steve Wozniak" 
		respuesta.envioEvaluacionrespuesta.should == 1
	end
	it "valida segunda respuesta incorrecta" do
		respuesta = Preguntas.new
		respuesta.nuevapregunta
		respuesta.respuesta_correcta "Charles Chaplin" 
		respuesta.envioEvaluacionrespuesta.should == 0
 	end

	it "inicia Juego puntuación" do
		respuesta = Preguntas.new
		respuesta.puntaje.should == 0
 	end

	it "acierta una respuesta" do
		respuesta = Preguntas.new
		respuesta.respuestacorrecta 
		respuesta.puntaje.should == 1
 	end


	it "acierta dosveces respuesta" do
		respuesta = Preguntas.new
		respuesta.respuestacorrecta
		respuesta.respuestacorrecta 
		respuesta.puntaje.should == 2
 	end

end
