instance creation
crearConFecha: unaFecha conHora: unaHora conDuracion: unaDuracion conNroLineaDestino: unNroDestino
	| llamadita |
	llamadita := self new.
	llamadita inicializarConFecha: unaFecha conHora: unaHora conDuracion: unaDuracion conNroLineaDestino: unNroDestino.
	^ llamadita.