instance creation
crearConDescripcion: unaDescripcion valor: unValor
	| unGasto |
	unGasto := self new.
	unGasto inicializarDescripcion: unaDescripcion valor: unValor.
	^ unGasto