as yet unclassified
renovarContrato: unIdContrato fechaFin: unaFechaFin listaElementos: unaListaElementos

	| encontrado |
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil ].
	encontrado ifNotNil: [
		(encontrado esActivo and: [ encontrado esGuardamuebles ]) ifTrue: [
			encontrado renovar: unaFechaFin listaElementos: unaListaElementos] ]