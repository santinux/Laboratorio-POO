as yet unclassified
inicializarEncabezados: unosEncabezados ancho: unAncho alto: unAlto
	encabezados := unosEncabezados.
	ancho := unAncho.
	alto := unAlto.
	filas := OrderedCollection new.
	colorEncabezado := Color gray.
	colorFilaPar := Color white.
	colorFilaImpar := Color veryLightGray.
	self construirTabla.