Feature: playPreguntas

Scenario: Titulo
	Given Visito la portada
	Then Veo "Bienvenido" 
	Then Veo "Todos somos aficionados. La vida es tan corta que no da para más"
	And Veo label de "respuesta"

Scenario: Resúesta correcta
	Given Visito la portada
	When respondo "Charles Chaplin"
	Then Deberia ver "correcta"
