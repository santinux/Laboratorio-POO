instance creation
crearConDistancia: unaDistancia
	| unaObservacion |
	unaObservacion := self new.
	unaObservacion inicializarConDistancia: unaDistancia.
	^ unaObservacion