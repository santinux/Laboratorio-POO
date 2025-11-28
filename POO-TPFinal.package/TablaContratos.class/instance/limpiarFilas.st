as yet unclassified
limpiarFilas
	"Elimina todas las filas de datos, manteniendo los encabezados"
	
	filas do: [ :fila | contenedor removeMorph: fila ].
	filas removeAll.
	
	"Resetear el alto al valor inicial (solo encabezado)"
	alto := 30.
	contenedor extent: ancho @ alto.