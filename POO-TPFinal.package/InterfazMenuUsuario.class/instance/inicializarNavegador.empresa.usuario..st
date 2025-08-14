accessing
inicializarNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario

	| contratos test |
	self navegador: unNavegador empresa: unaEmpresa.
	usuario := unUsuario.
	contratos := empresa obtenerContratosDeCliente: usuario.
	test := StringMorph new
		        contents: (contratos at: 1) obtenerInformacion;
		        font:
			        (LogicalFont familyName: 'Source Sans Pro' pointSize: 8).
	self agregarMorphCentrado: test conMargen: 20.