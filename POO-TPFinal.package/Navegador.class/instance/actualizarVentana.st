as yet unclassified
actualizarVentana
	"Actualiza la ventana del contenedor"

	contenedorVentana
		ifNotNil: [ "contenedorVentana removeAllMorphs. SIN SCROLLER"
			contenedorVentana scroller removeAllMorphs.
			"contenedorVentana addMorph: pilaNavegacion obtenerTope. SIN SCROLLER"
			contenedorVentana scroller addMorph: pilaNavegacion obtenerTope ]
		ifNil: [
		contenedorVentana scroller addMorph: pilaNavegacion obtenerTope ]