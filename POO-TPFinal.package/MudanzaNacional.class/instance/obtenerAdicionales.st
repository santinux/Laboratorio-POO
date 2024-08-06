as yet unclassified
obtenerAdicionales

	| adicional |
	adicional := super obtenerAdicionales.
	adicional := adicional + adicionalFragil asNumber
	             + adicionalDistancia asNumber.
	^ adicional