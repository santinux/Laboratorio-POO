as yet unclassified
verificarDatosConId: idContrato 
	"Verifica que el ID sea un número válido"
	"idContrato unaNuevaFecha unaNuevaHora esUrgente w"
	| numeroId respuesta |
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
	
^respuesta 