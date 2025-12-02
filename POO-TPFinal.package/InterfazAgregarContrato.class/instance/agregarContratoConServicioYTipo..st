as yet unclassified
agregarContratoConServicioYTipo:unNroTipo
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	| unaListaElementos botonContinuar |
	
	
	unaListaElementos := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Lista de elementos'.
	self agregarMorphCentrado: unaListaElementos conMargen: 10.
	
	botonContinuar := BotonAccion new label: 'Agregar datos'.
	botonContinuar mouseAction: [ 
		listaElementos := (unaListaElementos getText).
		unNroTipo =1 ifTrue: [self agregarContratoGuardamueble ].
		unNroTipo >1 ifTrue: [ self agregarContratoMudanzaConTipo: unNroTipo  ].
		].
	self agregarMorphCentrado: botonContinuar conMargen: 20.
	
	