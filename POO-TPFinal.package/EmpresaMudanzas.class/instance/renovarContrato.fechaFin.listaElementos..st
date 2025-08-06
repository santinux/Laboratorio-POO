as yet unclassified
renovarContrato: unIdContrato fechaFin: unaFechaFin listaElementos: unaListaElementos

	| encontrado |
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil ].
		encontrado ifNotNil: [ encontrado esActivo ifTrue: [ encontrado renovar: unaFechaFin ] ]