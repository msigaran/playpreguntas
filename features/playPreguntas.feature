Feature: playPreguntas

Scenario: Titulo
	Given Visito la portada
	Then Veo "Bienvenido" 
	Then Veo "Todos somos aficionados. La vida es tan corta que no da para más"
	And Veo label de "Opciones"

Scenario: Resúesta correcta
	Given Visito la portada
	When respondo "Charles Chaplin"
	Then Deberia ver "correcta"

Scenario: Repuesta incorrecta 1
	Given Visito la portada
	When selecciono "Milton"
	Then Deberia de ver "erronea"

Scenario: Repuesta incorrecta 2
	Given Visito la portada
	When selecciono "Boris"
	Then Deberia aparecer "erronea"


