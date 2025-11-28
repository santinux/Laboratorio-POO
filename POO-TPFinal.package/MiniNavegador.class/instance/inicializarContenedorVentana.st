initialization
inicializarContenedorVentana

	"2. Inicialización del contenedor (usamos PanelMorph, más idiomático para un contenedor visible)"
	"contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     Añadimos TableLayout para que el *contenido interno* se redimensione, 
		aunque no sea LayoutMorph, PanelMorph en Pharo 11 suele adoptar esta política.
		                     layoutPolicy: TableLayout new;
		                     listDirection: #topToBottom;
		                     vResizing: #spaceFill;
		                     hResizing: #spaceFill;
		                     cellInset: 0 @ 0."

	contenedorVentana := ScrollPane new
		                     color: Color white;
		                     yourself.
	contenedorVentana scroller
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellInset: 0 @ 0