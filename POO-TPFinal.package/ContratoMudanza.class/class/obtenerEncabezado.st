as yet unclassified
obtenerEncabezado

	| encabezado |
	encabezado := super obtenerEncabezado
	              , #( 'Fecha Acordada' 'Hora Acordada' ).
	^ encabezado