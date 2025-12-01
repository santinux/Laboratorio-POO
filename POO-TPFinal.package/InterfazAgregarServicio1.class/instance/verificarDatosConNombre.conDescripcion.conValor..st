as yet unclassified
verificarDatosConNombre: unNombre conDescripcion: unaDescripcion conValor: unValorBase
	"Verifica que nombre, descripción y valor sean válidos"
	
	| textoNombre textoDescripcion textoValor numeroValor |
	
	"Verificar nombre"
	textoNombre := unNombre getText.
	
	textoNombre isEmpty ifTrue: [
		self inform: 'El nombre del servicio es obligatorio'.
		^ false
	].
	
	"Verificar descripción"
	textoDescripcion := unaDescripcion getText.
	
	textoDescripcion isEmpty ifTrue: [
		self inform: 'La descripción del servicio es obligatoria'.
		^ false
	].
	
	"Verificar valor"
	textoValor := unValorBase getText.
	
	textoValor isEmpty ifTrue: [
		self inform: 'El valor del servicio es obligatorio'.
		^ false
	].
	
	[numeroValor := textoValor asNumber.
	numeroValor > 0 ifFalse: [self error: 'El valor debe ser mayor a 0']]
		on: Error do: [:ex | 
			self inform: 'El valor debe ser un número válido y mayor a 0'.
			^ false
		].
	
	^ true