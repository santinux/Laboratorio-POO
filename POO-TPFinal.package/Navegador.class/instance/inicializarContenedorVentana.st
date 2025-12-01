initialization
inicializarContenedorVentana
	"Crea un contenedor como ScrollPane para poder moverse por ventanas sobredimensionadas."

	"contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     layoutPolicy: TableLayout new;
		                     listDirection: #topToBottom;
		                     vResizing: #spaceFill;
		                     hResizing: #spaceFill;
		                     cellInset: 0 @ 0.
		SIN SCROLLER"

	contenedorVentana := ScrollPane new
		                     color: Color gray;
		                     yourself.
		
	contenedorVentana scroller
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellInset: 0 @ 0