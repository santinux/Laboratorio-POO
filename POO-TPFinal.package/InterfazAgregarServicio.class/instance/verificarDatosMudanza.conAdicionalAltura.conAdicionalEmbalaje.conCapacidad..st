as yet unclassified
verificarDatosMudanza: unTrabajoEnAltura conAdicionalAltura: unAdicionalAltura conAdicionalEmbalaje: unAdicionalEmbalaje conCapacidad: unaCapacidad
	"Verifica que trabajoEnAltura, adicionalAltura, adicionalEmbalaje y capacidad sean válidos"
	
	| textoAltura textoEmbalaje textoCapacidad numeroAltura numeroEmbalaje numeroCapacidad esTrabajoAltura textoAdicionalAltura |
	
	"Verificar trabajo en altura"
	textoAltura := unTrabajoEnAltura getText.
	
	textoAltura isEmpty ifTrue: [
		self inform: 'El campo trabajo en altura es obligatorio'.
		^ false
	].
	
	(textoAltura = 'si' or: [textoAltura = 'no']) ifFalse: [
		self inform: 'El campo trabajo en altura debe ser "si" o "no"'.
		^ false
	].
	
	esTrabajoAltura := textoAltura = 'si'.
	
	"Verificar adicional altura"
	textoAdicionalAltura := unAdicionalAltura getText.
	
	esTrabajoAltura ifTrue: [
		textoAdicionalAltura isEmpty ifTrue: [
			self inform: 'El adicional de altura es obligatorio cuando hay trabajo en altura'.
			^ false
		].
		
		[numeroAltura := textoAdicionalAltura asNumber.
		numeroAltura > 0 ifFalse: [self error: 'El adicional de altura debe ser mayor a 0']]
			on: Error do: [:ex | 
				self inform: 'El adicional de altura debe ser un número válido y mayor a 0'.
				^ false
			].
	] ifFalse: [
		"Si no hay trabajo en altura, el adicional debe ser 0"
		textoAdicionalAltura isEmpty ifFalse: [
			[numeroAltura := textoAdicionalAltura asNumber.
			numeroAltura = 0 ifFalse: [self error: 'El adicional de altura debe ser 0 cuando no hay trabajo en altura']]
				on: Error do: [:ex | 
					self inform: 'El adicional de altura debe ser 0 cuando no hay trabajo en altura'.
					^ false
				].
		].
	].
	
	"Verificar adicional embalaje"
	textoEmbalaje := unAdicionalEmbalaje getText.
	
	textoEmbalaje isEmpty ifTrue: [
		self inform: 'El adicional de embalaje es obligatorio (puede ser 0)'.
		^ false
	].
	
	[numeroEmbalaje := textoEmbalaje asNumber.
	numeroEmbalaje >= 0 ifFalse: [self error: 'El adicional de embalaje no puede ser negativo']]
		on: Error do: [:ex | 
			self inform: 'El adicional de embalaje debe ser un número válido (puede ser 0)'.
			^ false
		].
	
	"Verificar capacidad (número mayor a 0)"
	textoCapacidad := unaCapacidad getText.
	
	textoCapacidad isEmpty ifTrue: [
		self inform: 'La capacidad es obligatoria'.
		^ false
	].
	
	[numeroCapacidad := textoCapacidad asNumber.
	numeroCapacidad > 0 ifFalse: [self error: 'La capacidad debe ser mayor a 0']]
		on: Error do: [:ex | 
			self inform: 'La capacidad debe ser un número válido y mayor a 0'.
			^ false
		].
	
	^ true