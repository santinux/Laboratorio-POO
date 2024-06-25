as yet unclassified
crearConCliente: unCliente conListaElementos: unaListaElementos conServicio: unServicio conFechaInicio: unaFechaInicio conFechaFin: unaFechaFin
	| temp |
	temp := self new.
	temp inicializarConCliente: unCliente conListaElementos: unaListaElementos conServicio: unServicio conFechaInicio: unaFechaInicio conFechaFin: unaFechaFin.
	^ temp.