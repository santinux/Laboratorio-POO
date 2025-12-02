as yet unclassified
reconstruirConDatos: unaColeccionDeFilas
	"Limpia la tabla y agrega nuevos datos"
	
	self limpiarFilas.
	self agregarFilas: unaColeccionDeFilas.