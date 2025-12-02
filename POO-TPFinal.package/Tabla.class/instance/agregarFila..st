as yet unclassified
agregarFila: unaColeccionDatos
	"Agrega una fila con datos a la tabla"
	
	| fila anchoColumna colorFila |
	anchoColumna := ancho // encabezados size.
	colorFila := filas size even 
		ifTrue: [ colorFilaPar ] 
		ifFalse: [ colorFilaImpar ].
	
	fila := Morph new
		color: colorFila;
		extent: ancho @ 25;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 0;
		hResizing: #spaceFill;
		vResizing: #rigid.
	
	unaColeccionDatos do: [ :dato |
		| celda texto |
		celda := Morph new
			color: colorFila;
			borderWidth: 1;
			borderColor: Color lightGray;
			extent: anchoColumna @ 25;
			hResizing: #spaceFill;
			vResizing: #spaceFill.
		
		texto := StringMorph new
			contents: dato asString;
			font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);
			color: Color black.
		
		texto position: celda position + (5 @ 5).
		celda addMorph: texto.
		fila addMorphBack: celda
	].
	alto:=alto +27.
	contenedor extent: ancho @ alto.
	contenedor layoutChanged.
	filas add: fila.
	contenedor addMorph: fila. 