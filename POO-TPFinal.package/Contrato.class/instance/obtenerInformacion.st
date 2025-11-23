as yet unclassified
obtenerInformacion
	| informacion |	
	informacion:= 
	OrderedCollection new
		add: idContrato ;
		add: (self esActivo  ifTrue: ['Activo'] ifFalse: ['Inactivo']);
		add: valor  ;
		add: fechaFirma ;
		add: servicio nombre;
		yourself.

	^ informacion