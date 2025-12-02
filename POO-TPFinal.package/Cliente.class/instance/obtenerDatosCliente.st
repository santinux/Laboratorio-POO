as yet unclassified
obtenerDatosCliente

	| datosCliente |
	datosCliente := OrderedCollection new
		                add: 'Nombre : ' , nombre;
		                add: 'Apellido : ' , apellido;
		                add: 'DNI: ' , nroDNI asString;
		                yourself.

	^ datosCliente