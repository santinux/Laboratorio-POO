as yet unclassified
verificarDatosConNombre: idContrato conNuevaFecha:unaNuevaFecha
	"Verifica que el ID sea un número válido"
	"idContrato unaFecha unaListaElementos"
	| numeroId textoFecha nuevaFecha respuesta |
	respuesta :=true.
	idContrato ifNil: [
		self inform: 'El ID del contrato es obligatorio'.
		^ false
	].
	
	[numeroId := idContrato getText asNumber.
	numeroId > 0 ifFalse: [self error: 'ID inválido']]
		on: Error do: [:ex | 
			self inform: 'El ID debe ser un número válido'.
			^ false
		].
	
	textoFecha := unaNuevaFecha getText.
	
	textoFecha isEmpty ifTrue: [
		self inform: 'La fecha es obligatoria'.
		^ false
	].
	
	[nuevaFecha := Date fromString: textoFecha.]
		on: Error do: [:ex | 
			self inform: 'Formato de fecha inválido. Use mm/dd/aa (ej: 12/25/24)'.
			^ false
		].
	
^respuesta 