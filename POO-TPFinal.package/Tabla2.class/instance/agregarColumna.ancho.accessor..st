api
agregarColumna: unNombre ancho: unAncho accessor: unBloque
	columnas add: (Dictionary new
		at: #nombre put: unNombre;
		at: #ancho put: unAncho;
		at: #accessor put: unBloque;
		yourself).