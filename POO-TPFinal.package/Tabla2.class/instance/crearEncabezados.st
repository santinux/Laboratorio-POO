creation
crearEncabezados
	| filaEncabezado |
	filaEncabezado := Morph new
		color: Color lightGray;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself.
	
	columnas do: [ :col |
		| celda texto |
		texto := (col at: #nombre) asString.
		celda := self crearCelda: texto ancho: (col at: #ancho) esEncabezado: true.
		filaEncabezado addMorph: celda ].
	
	contenedor addMorph: filaEncabezado.