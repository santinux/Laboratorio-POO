as yet unclassified
verificarDatosConId: textoId conNuevaFecha:unafecha conNuevaHora:unaHora conUrgencia:esUrgente
	"Verifica que el ID sea un número válido"
	
	| respuesta validado numeroId|
	validado:=true.
	"Validacion Id"
	textoId isEmpty ifTrue: [
		self inform: 'El ID del contrato es obligatorio'.
		^ nil
	].
	
	[numeroId := textoId asNumber.
	numeroId > 0 ifFalse: [self error: 'ID inválido']]
		on: Error do: [:ex | 
			self inform: 'El ID debe ser un número válido'.
			^ nil
		].
	
	^ numeroId