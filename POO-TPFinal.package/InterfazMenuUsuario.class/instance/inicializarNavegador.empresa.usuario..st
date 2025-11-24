accessing
inicializarNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario

	| contratos tablaM tablaG  datosContratos datosContratos2 tablaGNombre tablaMNombre tablaUsuario |
	self navegador: unNavegador empresa: unaEmpresa.	
	contratos := empresa obtenerContratosDeCliente: unUsuario .

	tablaGNombre := TablaContratos crearConEncabezados: #('Contratos Guardamuebles') ancho: 1400 	alto: 30.
	tablaG := TablaContratos crearConEncabezados: ContratoGuardamuebles  obtenerEncabezadoGuardamueble 	ancho: 1400	alto: 30.
	
	tablaMNombre := TablaContratos crearConEncabezados: #('Contratos Mudanzas') 	ancho: 1400	alto: 30.
	tablaM := TablaContratos crearConEncabezados: ContratoMudanza   obtenerEncabezadoMudanza 	ancho: 1400	alto: 30.

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


tablaUsuario := TablaContratos crearConEncabezados: unUsuario obtenerDatosUsuario ancho: 1400 	alto: 30.

			
tablaM agregarFilas: datosContratos.
tablaG agregarFilas: datosContratos2.
self agregarMorphCentrado: tablaUsuario obtenerMorph conMargen:10.

self agregarMorphCentrado: tablaGNombre obtenerMorph conMargen:10.
self agregarMorphCentrado: tablaG obtenerMorph conMargen:10.

self agregarMorphCentrado: tablaMNombre obtenerMorph conMargen:10.
self agregarMorphCentrado: tablaM obtenerMorph conMargen:10.