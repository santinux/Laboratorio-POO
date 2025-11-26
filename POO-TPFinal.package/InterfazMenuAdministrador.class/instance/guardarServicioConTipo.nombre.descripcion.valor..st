as yet unclassified
guardarServicioConTipo: campoTipo nombre: campoNombre descripcion: campoDescripcion valor: campoValorBase 
	"Guarda el nuevo servicio en la empresa"
	
	| tipo nombre descripcion valor colServicios |
	
	
	tipo := campoTipo getText trimBoth.
	nombre := campoNombre getText trimBoth.
	descripcion := campoDescripcion getText trimBoth.
	valor := campoValorBase .
	
	(tipo isEmpty or: [ nombre isEmpty or: [ descripcion isEmpty or: [ valor isNil ]]]) ifTrue: [
		^ self inform: 'Todos los campos son obligatorios' ].
	
	"Aquí agregas la lógica para crear el servicio en la empresa"
	
	colServicios := empresa getColServicio .
	colServicios add: (Guardamuebles
				                 crearConDescripcion: descripcion 
				                 nombre: nombre 
				                 valorBase: valor 
				                 tamagnoDisponible: 'prueba de creador de servicios'
				                 aislamientoTermico: false
				                 guardaDeLlave: false). 
	
	self inform: 'Servicio agregado correctamente'.
	self initialize.