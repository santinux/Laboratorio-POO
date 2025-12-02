as yet unclassified
obtenerInformacion
	| informacion |	
	informacion:= 
	OrderedCollection new
		add:idServicio;
		add: nombre ;
		add: descripcion ;
		add: valorBase   ;
		yourself.

	^ informacion