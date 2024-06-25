as yet unclassified
crearConCliente: unCliente conListaElementos: unaListaElementos
	| temp |
	temp := self new.
	temp new inicializarConCliente: unCliente conListaElementos: unaListaElementos.
	^ temp.