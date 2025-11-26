as yet unclassified
obtenerInformacion
	| informacion |	
	informacion:= 
	OrderedCollection new
		add: nombre ;
		add: descripcion ;
		add: valorBase   ;
		yourself.

	^ informacion