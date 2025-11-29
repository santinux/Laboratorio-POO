as yet unclassified
crearConNavegador: unNavegador empresa: unaEmpresa

	| unaInterfaz |
	unaInterfaz := self new.
	unaInterfaz
		inicializarNavegador: unNavegador
		empresa: unaEmpresa.
		unaInterfaz renderizar.
	^ unaInterfaz.