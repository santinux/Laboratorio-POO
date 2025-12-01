creation
crearCelda: unTexto ancho: unAncho esEncabezado: unBoolean
	| celda label fuente |
	fuente := unBoolean
		ifTrue: [ TextStyle defaultFont emphasized: 1 ]  " Bold "
		ifFalse: [ TextStyle defaultFont ].
	
	label := StringMorph new
		contents: unTexto;
		font: fuente;
		yourself.
	
	celda := Morph new
		color: Color transparent;
		extent: unAncho @ alturaFila;
		layoutPolicy: TableLayout new;
		listCentering: #leftCenter;
		cellPositioning: #leftCenter;
		hResizing: #rigid;
		vResizing: #shrinkWrap;
		addMorph: label;
		yourself.
	
	^ celda