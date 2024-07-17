instance creation
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos

	| unContrato |
	unContrato := self new.
	unContrato
		inicializarCliente: unCliente
		servicio: unServicio
		listaElementos: unaListaElementos.
	^ unContrato