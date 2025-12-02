as yet unclassified
validarId:unID

| existe numeroId |
unID ifNil: [
		self inform: 'El ID del contrato es obligatorio'.
		^ false
	].
	
	[numeroId := unID getText asNumber.
	numeroId > 0 ifFalse: [self error: 'ID inválido']]
		on: Error do: [:ex | 
			self inform: 'El ID debe ser un número válido'.
			^ false
		].
numeroId := unID getText asNumber.
existe := serviciosTipo  anySatisfy: [ : servicioTipo | servicioTipo esServicio: numeroId ].
existe ifFalse: [
						self inform:  'ID no pertenece a la lista de servicios buscado'.
						^ false].
	^ true