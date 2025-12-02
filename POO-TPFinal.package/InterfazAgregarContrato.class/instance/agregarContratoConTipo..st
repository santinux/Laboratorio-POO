as yet unclassified
agregarContratoConTipo:unNroTipo
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	| unID botonContinuar |
	super initialize.
	self removeAllMorphs.
	self mostrarServiciosTipo: unNroTipo .
	self titulo: 'Agregar Nuevo Contrato'.
	
	unID := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'ID del servicio'.
	self agregarMorphCentrado: unID conMargen: 10.
	
	botonContinuar := BotonAccion new label: 'Buscar servicio'.
	botonContinuar mouseAction: [ 
	(self validarId: unID ) ifTrue: [ 
		servicio  :=serviciosTipo detect: [ :unContrato | unContrato esServicio:  (unID getText asNumber)  ].
		self agregarContratoConServicioYTipo:unNroTipo.
		] ].
	self agregarMorphCentrado: botonContinuar conMargen: 20.