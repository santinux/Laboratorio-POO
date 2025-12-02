as yet unclassified
agregarContratoGuardamueble
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	| unaFechaInicio botonGuardar unaFechaFin |
	
	
	unaFechaInicio := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Fecha de inicio'.
	self agregarMorphCentrado: unaFechaInicio conMargen: 10.
	unaFechaFin := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Fecha de fin'.
	self agregarMorphCentrado: unaFechaFin conMargen: 10.
	
	botonGuardar := BotonAccion new label: 'Guardar servicio'.
	botonGuardar mouseAction: [ 
		(self verificarDatosConFechaInicio: unaFechaInicio conFechaFin:unaFechaFin)ifTrue: [ 
			|fechaFin fechaInicio contrato |
				fechaInicio := Date fromString: (unaFechaInicio getText).
				fechaFin := Date fromString: (unaFechaFin getText).
				contrato:= ContratoGuardamuebles crearConCliente:usuario  servicio:servicio  listaElementos:listaElementos  fechaInicio:fechaInicio  fechaFin:fechaFin.
				self inform: (empresa registrarContrato: contrato ).
				navegador volver.
			] 
		].
	self agregarMorphCentrado: botonGuardar conMargen: 20.
	
	