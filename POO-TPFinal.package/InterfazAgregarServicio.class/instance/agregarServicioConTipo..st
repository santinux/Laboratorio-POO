as yet unclassified
agregarServicioConTipo: unNroTipo
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"

	| unNombre unaDescripcion unValorBase botonContinuar |
	self removeAllMorphs.
	self titulo: 'Agregar Nuevo Servicio'.

	unNombre := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Nombre del servicio'.
	self agregarMorphCentrado: unNombre conMargen: 10.

	unaDescripcion := RubTextFieldMorph new
		                  extent: 275 @ 20;
		                  ghostText: 'Descripción del servicio'.
	self agregarMorphCentrado: unaDescripcion conMargen: 10.

	unValorBase := RubTextFieldMorph new
		               extent: 275 @ 20;
		               ghostText: 'Valor base (ej: 50000)'.
	self agregarMorphCentrado: unValorBase conMargen: 10.

	botonContinuar := BotonAccion new label: 'Continuar'.
	botonContinuar mouseAction: [
		(self
			 verificarDatosConNombre: unNombre
			 conDescripcion: unaDescripcion
			 conValor: unValorBase) ifTrue: [
			coleccionDatos add: unNombre getText.
			coleccionDatos add: unaDescripcion getText.
			coleccionDatos add: unValorBase getText asNumber.
			"1:nombre 2:descripcion 3:valorBase"
			unNroTipo = 1 ifTrue: [ self agregarServicioGuardamuebles ].
			unNroTipo > 1 ifTrue: [ self agregarServicioMudanzaTipo: unNroTipo ] ] ].
	self agregarMorphCentrado: botonContinuar conMargen: 20