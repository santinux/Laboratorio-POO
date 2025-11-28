as yet unclassified
guardarReprogramacionConContrato:unContrato conFecha: unaFecha    conLista: unaListaElementos 

	| nuevaFecha listaElementos |
	nuevaFecha := Date readFrom: unaFecha.
	listaElementos := unaListaElementos getText .
	
	
	self inform: 'Servicio agregado correctamente'.
	self initialize.