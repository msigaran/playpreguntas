require "./lib/Preguntas.rb"


describe "JUEGO PREGUNTAS" do
	it "INICIA JUEGO" do
		pregunta = Preguntas.new
		pregunta.mensaje_inicio.should == "Buena suerte!!!." 
	end
#	it "Leer primera pregunta" do
#		pregunta = Pregunta.new
#		partido.puntaje.should == "" 
#	end

end
