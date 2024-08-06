as yet unclassified
obtenerAdicionales
	"Ver como hacerlo en polimorfismo puro"

	| adicional |
	adicional := super obtenerAdicionales.
	adicional := adicional + adicionalAduana asNumber
	             + adicionalTransporte asNumber.
	^ adicional