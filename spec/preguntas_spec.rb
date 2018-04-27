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

end
