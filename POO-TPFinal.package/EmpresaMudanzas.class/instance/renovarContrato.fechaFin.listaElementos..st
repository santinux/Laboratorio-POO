as yet unclassified
renovarContrato: unIdContrato fechaFin: unaFechaFin listaElementos: unaListaElementos

	| encontrado renovado |
	renovado:= false.
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil ].
	encontrado ifNotNil: [
		(encontrado esActivo and: [ encontrado esGuardamuebles ]) ifTrue: [
			encontrado renovar: unaFechaFin listaElementos: unaListaElementos. renovado:=true] ].
	
	self changed .
	^renovado .
	
