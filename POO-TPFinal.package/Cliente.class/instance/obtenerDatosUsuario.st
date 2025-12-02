as yet unclassified
obtenerDatosUsuario
	| datosUsuario|	
	datosUsuario:= 
	OrderedCollection new
		add: 'Nombre : ',nombre  ;
		add: 'Apellido : ',apellido ;
		add: 'DNI: ' ,nroDNI asString ;
		yourself.

	^ datosUsuario