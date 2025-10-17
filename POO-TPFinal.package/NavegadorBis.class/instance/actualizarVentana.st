as yet unclassified
actualizarVentana

	| nuevaVentana |
	nuevaVentana := pilaNavegacion obtenerTope.
	
	"1. Limpiamos el contenedor"
	contenedorVentana removeAllMorphs.
	
	"2. Configuramos la nueva ventana para que llene el espacio"
	nuevaVentana 
		hResizing: #spaceFill; 
		vResizing: #spaceFill. 
		
	"3. Añadimos la nueva ventana. El TableLayout se encarga del redimensionamiento."
	contenedorVentana addMorph: nuevaVentana.
	
	"Opcional: Controlar el estado del botón Volver"
	"self actualizarEstadoBotonVolver."