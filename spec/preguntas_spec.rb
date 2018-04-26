require "./lib/Preguntas.rb"

describe "JUEGO PREGUNTAS" do
	it "INICIA JUEGO" do
		pregunta = Preguntas.new
		pregunta.mensaje_inicio.should == "Buena suerte!!!." 
	end

	it "Leer primera pregunta" do
		pregunta = Preguntas.new
		pregunta.preguntas.should == "Todos somos aficionados. La vida es tan corta que no da para más" 
	end
	it "Leer primera respuesta" do
		respuesta = Preguntas.new
		respuesta.respuestas.should == "Charles Chaplin" 
	end

end
