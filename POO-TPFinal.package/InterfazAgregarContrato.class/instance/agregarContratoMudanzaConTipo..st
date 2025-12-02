as yet unclassified
agregarContratoMudanzaConTipo:unNroTipo
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	| unaFechaAcordada botonGuardar unaHoraAcordada |
	
	
	unaFechaAcordada := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Fecha Acordada'.
	self agregarMorphCentrado: unaFechaAcordada conMargen: 10.
	unaHoraAcordada := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Hora Acordada'.
	self agregarMorphCentrado: unaHoraAcordada conMargen: 10.
	
	botonGuardar := BotonAccion new label: 'Guardar servicio'.
	botonGuardar mouseAction: [ 
		(self verificarDatosConFechaAcordada:unaFechaAcordada  conHoraAcordada:unaHoraAcordada  )ifTrue: [ 
			|horaAcordada fechaAcordada contrato |
				fechaAcordada := Date fromString: (unaFechaAcordada getText).
				horaAcordada := Time fromString: (unaHoraAcordada getText).
				(unNroTipo =2) ifTrue: [ contrato:=  ContratoMudanzaLocal  crearConCliente:usuario  servicio:servicio  listaElementos:listaElementos  fechaAcordada:fechaAcordada  horaAcordada:horaAcordada  ].
				(unNroTipo =3) ifTrue: [ contrato:=  ContratoMudanzaNacional crearConCliente:usuario  servicio:servicio  listaElementos:listaElementos  fechaAcordada:fechaAcordada  horaAcordada:horaAcordada  ].
				(unNroTipo =4) ifTrue: [ contrato:=  ContratoMudanzaInternacional crearConCliente:usuario  servicio:servicio  listaElementos:listaElementos  fechaAcordada:fechaAcordada  horaAcordada:horaAcordada  ].
				self inform: (empresa registrarContrato: contrato ).
				navegador volver.
			] 
		].
	self agregarMorphCentrado: botonGuardar conMargen: 20.