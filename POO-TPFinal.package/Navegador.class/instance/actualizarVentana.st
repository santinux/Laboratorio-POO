as yet unclassified
actualizarVentana
"Actualiza la ventana del contenedor"
	contenedorVentana
		ifNotNil: [
			contenedorVentana removeAllMorphs.
			contenedorVentana addMorph: pilaNavegacion obtenerTope ]
		ifNil: [ contenedorVentana addMorph: pilaNavegacion obtenerTope ]