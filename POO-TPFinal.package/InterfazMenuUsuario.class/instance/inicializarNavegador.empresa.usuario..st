accessing
inicializarNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario

	| contratos tabla datosContratos datosContratos2 |
	self navegador: unNavegador empresa: unaEmpresa.
	usuario := unUsuario.
	contratos := empresa obtenerContratosDeCliente: usuario.
	
	contratos := empresa obtenerContratosDeCliente: (empresa obtenerClienteConDNI: 20000000).

tabla := TablaContratos 
	crearConEncabezados: #('ID' 'Estado' 'Valor' 'Fecha' 'Servicio')
	ancho: 740
	alto: 30.

datosContratos := contratos collect: [ :contrato |
	OrderedCollection new
		add: contrato obtenerId;
		add: (contrato esActivo ifTrue: ['Activo'] ifFalse: ['Inactivo']);
		add: contrato obtenerValor ;
		add: contrato obtenerFechaFirma ;
		add: contrato obtenerNombreServicio ;
		yourself
].

datosContratos2 := contratos collect: [ :contrato |
	OrderedCollection new
		add: contrato obtenerId;
		add: (contrato esActivo ifTrue: ['Activo'] ifFalse: ['Inactivo']);
		add: 'datos valor';
		add: 'prueba fecha' ;
		add: 'prueba nombre' ;
		yourself
].
			
tabla agregarFilas: datosContratos.
tabla agregarFilas: datosContratos2.
self agregarMorphCentrado: tabla obtenerMorph conMargen:10.