as yet unclassified
mover: tMov

	| velocidad distancia |
	velocidad := self getVelocidad.
	distancia := velocidad * tMov.
	self actualizarDistanciaRecorrida: distancia.
	^ distancia