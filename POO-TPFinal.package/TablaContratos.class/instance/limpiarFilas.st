as yet unclassified
limpiarFilas
	"Elimina todas las filas de datos, manteniendo los encabezados"
	
	filas do: [ :fila | contenedor removeMorph: fila ].
	filas removeAll.