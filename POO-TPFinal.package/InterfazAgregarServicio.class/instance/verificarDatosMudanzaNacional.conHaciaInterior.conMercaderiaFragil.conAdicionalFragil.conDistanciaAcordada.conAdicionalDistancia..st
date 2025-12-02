as yet unclassified
verificarDatosMudanzaNacional: unDesdeInterior conHaciaInterior: unHaciaInterior conMercaderiaFragil: unMercaderiaFragil conAdicionalFragil: unAdicionalFragil conDistanciaAcordada: unaDistanciaAcordada conAdicionalDistancia: unAdicionalDistancia
	"Verifica que todos los datos de mudanza nacional sean válidos"
	
	| textoDesdeInterior textoHaciaInterior textoMercaderiaFragil textoAdicionalFragil textoDistanciaAcordada textoAdicionalDistancia esMercaderiaFragil |
	
	"Verificar desdeInterior - no vacío y booleano válido"
	textoDesdeInterior := unDesdeInterior getText.
	textoDesdeInterior isEmpty ifTrue: [
		self inform: 'El campo desde interior es obligatorio'.
		^ false
	].
	(textoDesdeInterior = 'true' or: [textoDesdeInterior = 'false']) ifFalse: [
		self inform: 'El campo desde interior debe ser ''true'' o ''false'''.
		^ false
	].
	
	"Verificar haciaInterior - no vacío y booleano válido"
	textoHaciaInterior := unHaciaInterior getText.
	textoHaciaInterior isEmpty ifTrue: [
		self inform: 'El campo hacia interior es obligatorio'.
		^ false
	].
	(textoHaciaInterior = 'true' or: [textoHaciaInterior = 'false']) ifFalse: [
		self inform: 'El campo hacia interior debe ser ''true'' o ''false'''.
		^ false
	].
	
	"Verificar mercaderiaFragil - no vacío y booleano válido"
	textoMercaderiaFragil := unMercaderiaFragil getText.
	textoMercaderiaFragil isEmpty ifTrue: [
		self inform: 'El campo mercadería frágil es obligatorio'.
		^ false
	].
	(textoMercaderiaFragil = 'true' or: [textoMercaderiaFragil = 'false']) ifFalse: [
		self inform: 'El campo mercadería frágil debe ser ''true'' o ''false'''.
		^ false
	].
	
	esMercaderiaFragil := textoMercaderiaFragil = 'true'.
	
	"Verificar adicionalFragil - condicional según mercaderiaFragil"
	textoAdicionalFragil := unAdicionalFragil getText.
	textoAdicionalFragil isEmpty ifTrue: [
		self inform: 'El adicional por frágil es obligatorio'.
		^ false
	].
	
	esMercaderiaFragil ifTrue: [
		"Si es mercadería frágil, el adicional debe ser mayor a 0"
		[textoAdicionalFragil asNumber > 0 ifFalse: [self error: 'Adicional frágil debe ser mayor a 0']]
			on: Error do: [:ex | 
				self inform: 'El adicional por frágil debe ser un número mayor a 0 cuando la mercadería es frágil'.
				^ false
			].
	] ifFalse: [
		"Si no es mercadería frágil, el adicional debe ser exactamente 0"
		[textoAdicionalFragil asNumber = 0 ifFalse: [self error: 'Adicional frágil debe ser 0 cuando la mercadería no es frágil']]
			on: Error do: [:ex | 
				self inform: 'El adicional por frágil debe ser 0 cuando la mercadería no es frágil'.
				^ false
			].
	].
	
	"Verificar distanciaAcordada (número mayor a 0)"
	textoDistanciaAcordada := unaDistanciaAcordada getText.
	textoDistanciaAcordada isEmpty ifTrue: [
		self inform: 'La distancia acordada es obligatoria'.
		^ false
	].
	[textoDistanciaAcordada asNumber > 0 ifFalse: [self error: 'Distancia acordada debe ser mayor a 0']]
		on: Error do: [:ex | 
			self inform: 'La distancia acordada debe ser un número mayor a 0'.
			^ false
		].
	
	"Verificar adicionalDistancia (número mayor o igual a 0)"
	textoAdicionalDistancia := unAdicionalDistancia getText.
	textoAdicionalDistancia isEmpty ifTrue: [
		self inform: 'El adicional por distancia es obligatorio (puede ser 0)'.
		^ false
	].
	[textoAdicionalDistancia asNumber >= 0 ifFalse: [self error: 'Adicional distancia no puede ser negativo']]
		on: Error do: [:ex | 
			self inform: 'El adicional por distancia debe ser un número válido (puede ser 0)'.
			^ false
		].
	
	^ true