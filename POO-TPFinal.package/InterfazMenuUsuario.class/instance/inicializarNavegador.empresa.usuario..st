accessing
inicializarNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario

	| contratos tablaM tablaG datosContratos datosContratos2 |
	self navegador: unNavegador empresa: unaEmpresa.
	usuario := unUsuario.
	contratos := empresa obtenerContratosDeCliente: usuario.
	
	contratos := empresa obtenerContratosDeCliente: (empresa obtenerClienteConDNI: 20000000).

	tablaG := TablaContratos 
	crearConEncabezados: ContratoGuardamuebles  obtenerEncabezadoGuardamueble 
	ancho: 1400
	alto: 30.
	
	tablaM := TablaContratos 
	crearConEncabezados: ContratoMudanza   obtenerEncabezadoMudanza 
	ancho: 1400
	alto: 30.

datosContratos := contratos collect: [ :contrato |contrato obtenerInformacion ].

datosContratos2 := contratos collect: [ :contrato |
	OrderedCollection new
		add: contrato obtenerId;
		add: (contrato esActivo ifTrue: ['Activo'] ifFalse: ['Inactivo']);
		add: 'datos valor';
		add: 'prueba fecha' ;
		add: 'prueba nombre' ;
		yourself
].
			
tablaM agregarFilas: datosContratos.
tablaM agregarFilas: datosContratos2.
"self agregarMorphCentrado: tablaG obtenerMorph conMargen:10."
self agregarMorphCentrado: tablaM obtenerMorph conMargen:10.