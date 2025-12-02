as yet unclassified
obtenerEncabezadoGuardamueblesCompleto

	| encabezadoGuardamuebles |
	encabezadoGuardamuebles := self obtenerEncabezado
	                           , #( 'Lista de elementos' 'Renovaciones' ).
	^ encabezadoGuardamuebles