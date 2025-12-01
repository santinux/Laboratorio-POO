accessing
abrirEnVentana
	
" TablaGenerica ejemplo "
	| tabla personas |
	
	" Crear datos de ejemplo "
	personas := {
		(Dictionary new at: #nombre put: 'Juan'; at: #edad put: 25; at: #ciudad put: 'Mar del Plata'; yourself).
		(Dictionary new at: #nombre put: 'María'; at: #edad put: 30; at: #ciudad put: 'Buenos Aires'; yourself).
		(Dictionary new at: #nombre put: 'Pedro'; at: #edad put: 22; at: #ciudad put: 'Córdoba'; yourself).
		(Dictionary new at: #nombre put: 'Ana'; at: #edad put: 28; at: #ciudad put: 'Rosario'; yourself).
	}.
	
	" Crear y configurar tabla "
	tabla := Tabla2 new.
"	tabla agregarColumna: 'Nombre' ancho: 150 accessor: [ :p | p at: #nombre ].
	tabla agregarColumna: 'Edad' ancho: 80 accessor: [ :p | p at: #edad ].
	tabla agregarColumna: 'Ciudad' ancho: 150 accessor: [ :p | p at: #ciudad ].
	tabla items: personas."
	
	" Abrir en ventana "
	tabla abrirEnVentana.