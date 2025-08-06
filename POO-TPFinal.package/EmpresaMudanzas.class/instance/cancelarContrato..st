as yet unclassified
cancelarContrato: unIdContrato

	| encontrado respuesta |
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil ].
	encontrado
		ifNotNil: [
			encontrado esActivo
				ifTrue: [
					encontrado cancelar.
					respuesta := 'Contrato cancelado' ]
				ifFalse: [ respuesta := 'Contrato inactivo' ] ]
		ifNil: [ respuesta := 'Contrato no encontrado' ]