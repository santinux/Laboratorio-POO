as yet unclassified
goBack
	"Implement your back action here"

	self inform: 'Volver presionado'.
	pilaNavegacion obtenerTope
		close;
		desapilar.
	morphContenido := pilaNavegacion ifNotEmpty:
		                  pilaNavegacion obtenerTope