as yet unclassified
crearConNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario

	| unaInterfaz |
	unaInterfaz := self new.
	unaInterfaz
		inicializarNavegador: unNavegador
		empresa: unaEmpresa
		usuario: unUsuario.
		unaInterfaz renderizar.
	^ unaInterfaz.