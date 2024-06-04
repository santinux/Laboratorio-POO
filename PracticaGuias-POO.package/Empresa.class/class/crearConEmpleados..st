constructor
crearConEmpleados: unaColEmpleados
	| empresita |
	empresita := self new.
	empresita inicializarConEmpleados: unaColEmpleados.
	^ empresita.