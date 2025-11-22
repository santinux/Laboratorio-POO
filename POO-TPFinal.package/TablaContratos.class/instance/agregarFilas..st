as yet unclassified
agregarFilas: unaColeccionDeFilas
	"Agrega múltiples filas a la tabla"
	
	unaColeccionDeFilas do: [ :fila |
		self agregarFila: fila
	].