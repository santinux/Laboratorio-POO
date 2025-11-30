Propios
guardarServicioGConNombre: campoNombre descripcion: campoDescripcion valor: campoValorBase tamaño:unTamaño asilamiento:unAislamiente guardaLlave:unGuardaLlave
	"Guarda el nuevo servicio en la empresa"
	
	| nombre descripcion valor colServicios |
	
	nombre := campoNombre getText .
	descripcion := campoDescripcion getText .
	valor := campoValorBase getText asNumber.
	
	( nombre isEmpty or: [ descripcion isEmpty or: [ valor isNil ]]) ifTrue: [
		^ self inform: 'Todos los campos son obligatorios' ].
	
	"Aquí agregas la lógica para crear el servicio en la empresa"
	
	colServicios := empresa getColServicio .
	colServicios add: (Guardamuebles
				                 crearConDescripcion: descripcion 
				                 nombre: nombre 
				                 valorBase: valor 
				                 tamagnoDisponible:unTamaño
				                 aislamientoTermico: unAislamiente
				                 guardaDeLlave: unGuardaLlave). 
	
	self inform: 'Servicio agregado correctamente'.
	self initialize.