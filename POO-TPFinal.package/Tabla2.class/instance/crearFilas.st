creation
crearFilas
	datos doWithIndex: [ :item :index |
		| fila |
		fila := self crearFila: item indice: index.
		filas add: fila.
		contenedor addMorph: fila ].