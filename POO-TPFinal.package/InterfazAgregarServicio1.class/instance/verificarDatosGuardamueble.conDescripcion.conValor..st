as yet unclassified
verificarDatosGuardamueble: unTamaño conDescripcion: unAislamiento conValor: unGuardaLlave
	"Verifica que tamaño, tiene aislamiento y si guarda llave sean válidos"
	
	| textoTamaño numeroTamaño  textoAislamiento textoGuardaLlave |
	
	"Verificar tamaño"
	textoTamaño := unTamaño getText.
	
	textoTamaño isEmpty ifTrue: [
		self inform: 'El tamaño es obligatorio'.
		^ false
	].
[numeroTamaño := textoTamaño asNumber.
	numeroTamaño > 0 ifFalse: [self error: 'El tamaño numero debe ser mayor a 0']]
		on: Error do: [:ex | 
			self inform: 'El tamaño debe ser un número válido'.
			^ false
		].
	"verificar tiene aislamiento"
textoAislamiento := unAislamiento getText.
	
	textoAislamiento isEmpty ifTrue: [
		self inform: 'El campo tiene aislamiento es obligatorio'.
		^ false
	].
	
	
	(textoAislamiento = 'true' or: [textoAislamiento = 'false']) ifFalse: [
		self inform: 'El campo tiene aislamiento debe ser ''true'' o ''false'' '.
		^ false
	].
"Verificar guarda llave"
textoGuardaLlave := unGuardaLlave getText.
	
	textoGuardaLlave isEmpty ifTrue: [
		self inform: 'El campo tiene aislamiento es obligatorio'.
		^ false
	].
	
	
	(textoGuardaLlave = 'true' or: [textoGuardaLlave = 'false']) ifFalse: [
		self inform: 'El campo tiene aislamiento debe ser ''true'' o ''false'' '.
		^ false
	].
	
	^ true