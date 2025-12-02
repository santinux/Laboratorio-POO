Servicio Mudanza Local
verificarDatosMudanzaLocal: unIncluyeCarga conIncluyeDescarga: unIncluyeDescarga conDistanciaMaxima: unaDistanciaMaxima
	"Verifica que incluyeCarga, incluyeDescarga y distanciaMaxima sean válidos"
	
	| textoCarga textoDescarga textoDistancia |
	
	"Verificar incluyeCarga (booleano)"
	textoCarga := unIncluyeCarga getText .
	
	textoCarga isEmpty ifTrue: [
		self inform: 'El campo incluye carga es obligatorio'.
		^ false
	].
	
	(textoCarga = 'true' or: [textoCarga = 'false']) ifFalse: [
		self inform: 'El campo incluye carga debe ser ''true'' o ''false'''.
		^ false
	].
	
	"Verificar incluyeDescarga (booleano)"
	textoDescarga := unIncluyeDescarga getText.
	
	textoDescarga isEmpty ifTrue: [
		self inform: 'El campo incluye descarga es obligatorio'.
		^ false
	].
	
	(textoDescarga = 'true' or: [textoDescarga = 'false']) ifFalse: [
		self inform: 'El campo incluye descarga debe ser ''true'' o ''false'''.
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