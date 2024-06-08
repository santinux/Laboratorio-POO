instance creation
crearConCantidad: unaCantidad conValorUnitario: unValorUnitario
	| v |
	v := self new.
	v inicializarConCantidad: unaCantidad conValorUnitario: unValorUnitario.
	^ v.