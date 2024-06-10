instance creation
crearConMontoACobrar: unMonto conPeriodo: unPeriodo conDetalle: unDetalle
	| facturita |
	facturita := self new.
	facturita inicializarConMontoACobrar: unMonto conPeriodo: unPeriodo conDetalle: unDetalle.
	^ facturita.