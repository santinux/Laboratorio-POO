as yet unclassified
volver
	"Retrocede un paso en el historial de navegación."

	self inform: 'Volver presionado'.
	"1. Si la pila está vacía o tiene solo la inicial (login), no hacemos nada."

	pilaNavegacion size <= 1 ifTrue: [ ^ self ].

	"2. Quitamos la interfaz actual del contenedor (su hija)."
	contenedorVentana scroller removeAllMorphs.

	"3. Desapilamos la interfaz anterior (la que acabamos de quitar). 
	   Usamos el pop mejorado que devuelve el objeto, aunque no lo necesitemos aquí."
	pilaNavegacion desapilar.

	"4. Mostramos la nueva interfaz superior."
	self actualizarVentana
	"contenedorVentana delete.
	pilaNavegacion desapilar.
	contenedorVentana := pilaNavegacion
		                     ifNotEmpty: [ pilaNavegacion obtenerTope ]
		                     ifEmpty: [ nil ].
	self actualizarVentana"