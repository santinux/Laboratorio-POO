instance creation
crearConCuenta: unaCuenta conCreditos: unaColCreditos
	| clientito |
	clientito := self new.
	clientito inicializarConCuenta: unaCuenta conCreditos: unaColCreditos.
	^ clientito.