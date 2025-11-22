as yet unclassified
agregarEncabezados
	"Agrega la fila de encabezados"
	
	| filaEncabezado anchoColumna |
	anchoColumna := ancho // encabezados size.
	
	filaEncabezado := Morph new
		color: colorEncabezado;
		extent: ancho @ 30;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 0;
		hResizing: #spaceFill;
		vResizing: #rigid.
	
	encabezados do: [ :encabezado |
		| celda texto |
		celda := Morph new
			color: colorEncabezado;
			borderWidth: 1;
			borderColor: Color black;
			extent: anchoColumna @ 30;
			hResizing: #spaceFill;
			vResizing: #spaceFill.
		
		texto := StringMorph new
			contents: encabezado;
			font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 11);
			emphasis: TextEmphasis bold emphasisCode;
			color: Color black.
		
		texto position: celda position + (5 @ 7).
		celda addMorph: texto.
		filaEncabezado addMorph: celda
	].
	
	contenedor addMorph: filaEncabezado.