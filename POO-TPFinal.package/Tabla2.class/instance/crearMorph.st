creation
crearMorph

	contenedor := ScrollPane new
		              color: Color white;
		              yourself.
	contenedor scroller
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellInset: 0 @ 0.
		"yourself."