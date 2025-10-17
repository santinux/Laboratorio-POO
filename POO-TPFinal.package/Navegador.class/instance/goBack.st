as yet unclassified
goBack

	self inform: 'Volver presionado'.
	"contenedorVentana delete.
	pilaNavegacion desapilar.
	contenedorVentana := pilaNavegacion
		                     ifNotEmpty: [ pilaNavegacion obtenerTope ]
		                     ifEmpty: [ nil ].
	self actualizarVentana"