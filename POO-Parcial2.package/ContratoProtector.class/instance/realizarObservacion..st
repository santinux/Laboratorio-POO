as yet unclassified
realizarObservacion: tiempoMovimiento

	| distancia unaObservacion |
	distancia := animal mover: tiempoMovimiento.
	unaObservacion := Observacion crearConDistancia: distancia.
	observaciones add: unaObservacion