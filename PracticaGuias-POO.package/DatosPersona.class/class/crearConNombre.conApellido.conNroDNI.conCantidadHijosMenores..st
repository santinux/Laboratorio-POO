constructor
crearConNombre: unNombre conApellido: unApellido conNroDNI: unNroDNI conCantidadHijosMenores: unaCantidadHijosMenores
	| datitos |
	datitos := self new.
	datitos inicializarConNombre: unNombre conApellido: unApellido conNroDNI: unNroDNI conCantidadHijosMenores: unaCantidadHijosMenores.
	^ datitos.