creation
crearFila: unItem indice: unIndice

	| fila color |
	color := unIndice odd
		         ifTrue: [ Color white ]
		         ifFalse: [ Color veryLightGray ].

	fila := Morph new
		        color: color;
		        layoutPolicy: TableLayout new;
		        listDirection: #leftToRight;
		        hResizing: #spaceFill;
		        vResizing: #shrinkWrap;
		        yourself.
	" Agregar interactividad "
"	fila
		on: #mouseEnter
		send: #mouseEnterFila:
		to: self
		with: fila;
		on: #mouseLeave
		send: #mouseLeaveFila:
		to: self
		with: fila;
		on: #mouseDown
		send: #clickEnFila:
		to: self
		with: unItem."

	columnas do: [ :col |
		| valor celda |
		valor := (col at: #accessor) value: unItem.
		celda := self
			         crearCelda: valor asString
			         ancho: (col at: #ancho)
			         esEncabezado: false.
		fila addMorph: celda ].

	^ fila