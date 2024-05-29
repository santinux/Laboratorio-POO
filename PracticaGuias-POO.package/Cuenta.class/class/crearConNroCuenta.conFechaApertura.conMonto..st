constructor
crearConNroCuenta: unNroCuenta conFechaApertura: unaFechaApertura conMonto: unMonto
	| c |
	c := self new.
	c inicializarConNroCuenta: unNroCuenta conFechaApertura: unaFechaApertura conMonto: unMonto.
	^ c.