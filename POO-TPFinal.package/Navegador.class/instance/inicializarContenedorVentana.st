initialization
inicializarContenedorVentana
	"Añadimos TableLayout para que el contenido interno se redimensione."

	contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     layoutPolicy: TableLayout new;
		                     listDirection: #topToBottom;
		                     vResizing: #spaceFill;
		                     hResizing: #spaceFill;
		                     cellInset: 0 @ 0