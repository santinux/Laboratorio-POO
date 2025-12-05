as yet unclassified
verificarDatosMudanzaInternacional: unAdicionalAduana conAdicionalTransporte: unAdicionalTransporte conSeguroInternacional: unSeguroInternacional
	"Verifica que adicionalAduana, adicionalTransporte y seguroInternacional sean válidos"
	
	| textoAdicionalAduana textoAdicionalTransporte textoSeguroInternacional |
	
	"Verificar adicionalAduana "
	textoAdicionalAduana := unAdicionalAduana getText.
	textoAdicionalAduana isEmpty ifTrue: [
		self inform: 'El adicional por aduana es obligatorio (puede ser 0)'.
		^ false
	].
	[textoAdicionalAduana asNumber >= 0 ifFalse: [self error: 'Adicional aduana no puede ser negativo']]
		on: Error do: [:ex | 
			self inform: 'El adicional por aduana debe ser un número válido (puede ser 0)'.
			^ false
		].
	
	"Verificar adicionalTransporte "
	textoAdicionalTransporte := unAdicionalTransporte getText.
	textoAdicionalTransporte isEmpty ifTrue: [
		self inform: 'El adicional por transporte es obligatorio (puede ser 0)'.
		^ false
	].
	[textoAdicionalTransporte asNumber >= 0 ifFalse: [self error: 'Adicional transporte no puede ser negativo']]
		on: Error do: [:ex | 
			self inform: 'El adicional por transporte debe ser un número válido (puede ser 0)'.
			^ false
		].
	
	"Verificar seguroInternacional"
	textoSeguroInternacional := unSeguroInternacional getText.
	textoSeguroInternacional isEmpty ifTrue: [
		self inform: 'El campo seguro internacional es obligatorio'.
		^ false
	].
	(textoSeguroInternacional = 'si' or: [textoSeguroInternacional = 'no']) ifFalse: [
		self inform: 'El campo seguro internacional debe ser "si" o "no"'.
		^ false
	].
	
	^ true