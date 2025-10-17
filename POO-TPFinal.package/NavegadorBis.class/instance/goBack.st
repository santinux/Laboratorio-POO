as yet unclassified
goBack
	"Retrocede un paso en el historial de navegación."

	"1. Si la pila está vacía o tiene solo la inicial (login), no hacemos nada."
	(pilaNavegacion size <= 1) ifTrue: [ ^ self ].
	
	"2. Quitamos la interfaz actual del contenedor (su hija)."
	contenedorVentana removeAllMorphs.

	"3. Desapilamos la interfaz anterior (la que acabamos de quitar). 
	   Usamos el pop mejorado que devuelve el objeto, aunque no lo necesitemos aquí."
	pilaNavegacion desapilar.
	
	"4. Mostramos la nueva interfaz superior."
	self actualizarVentana.