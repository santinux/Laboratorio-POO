as yet unclassified
obtenerAdicionales

	| adicional |
	adicional := super obtenerAdicionales.
	adicional := adicional + adicionalFragil asInteger
	             + adicionalDistancia asInteger.
	^ adicional 