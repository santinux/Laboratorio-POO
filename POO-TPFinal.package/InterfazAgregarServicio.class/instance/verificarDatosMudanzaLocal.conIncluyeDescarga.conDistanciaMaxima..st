as yet unclassified
verificarDatosMudanzaLocal: unIncluyeCarga conIncluyeDescarga: unIncluyeDescarga conDistanciaMaxima: unaDistanciaMaxima
	"Verifica que incluyeCarga, incluyeDescarga y distanciaMaxima sean válidos"
	
	| textoCarga textoDescarga textoDistancia |
	
	"Verificar incluyeCarga (booleano)"
	textoCarga := unIncluyeCarga getText .
	
	textoCarga isEmpty ifTrue: [
		self inform: 'El campo incluye carga es obligatorio'.
		^ false
	].
	
	(textoCarga = 'si' or: [textoCarga = 'no']) ifFalse: [
		self inform: 'El campo incluye carga debe ser "si" o "no"'.
		^ false
	].
	
	"Verificar incluyeDescarga (booleano)"
	textoDescarga := unIncluyeDescarga getText.
	
	textoDescarga isEmpty ifTrue: [
		self inform: 'El campo incluye descarga es obligatorio'.
		^ false
	].
	
	(textoDescarga = 'si' or: [textoDescarga = 'no']) ifFalse: [
		self inform: 'El campo incluye descarga debe ser "si" o "no"'.
		^ false
	].
	
	"Verificar distanciaMaxima (número positivo)"
	textoDistancia := unaDistanciaMaxima getText.
	
	textoDistancia isEmpty ifTrue: [
		self inform: 'La distancia máxima es obligatoria'.
		^ false
	].
	
	[textoDistancia asNumber > 0 ifFalse: [self error: 'La distancia debe ser mayor a 0']]
		on: Error do: [:ex | 
			self inform: 'La distancia máxima debe ser un número válido y mayor a 0'.
			^ false
		].
	
	^ true