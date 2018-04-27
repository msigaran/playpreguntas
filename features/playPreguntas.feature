Feature: playPreguntas
	
Scenario: Titulo
	Given Visito la portada
	Then Veo "Bienvenido" 
	Then Veo "Todos somos aficionados. La vida es tan corta que no da para más"
	And Veo label de "respuesta"

	When Presiono el boton "Responder"
	Then Deberia ver "correcta"
