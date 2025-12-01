as yet unclassified
crearConEncabezados: unosEncabezados ancho: unAncho alto: unAlto
	| unaTabla |
	unaTabla := self new.
	unaTabla 
		inicializarEncabezados: unosEncabezados
		ancho: unAncho
		alto: unAlto.
	^ unaTabla