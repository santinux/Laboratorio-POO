as yet unclassified
actualizarVentana

	contenedorVentana
		ifNotNil: [
			contenedorVentana removeAllMorphs.
			contenedorVentana addMorph:
				(pilaNavegacion obtenerTope). "fullFrame: (LayoutFrame new
						  leftFraction: 0;
						  topFraction: 0;
						  rightFraction: 1;
						  bottomFraction: 1;
						  yourself))."]
		ifNil: [
			contenedorVentana addMorph: pilaNavegacion obtenerTope ]