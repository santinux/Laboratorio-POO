as yet unclassified
renovarContratoDeUsuario:unUsuario conId: unIdContrato fechaFin: unaFechaFin listaElementos: unaListaElementos

	| encontrado renovado respuesta |
	renovado:= false.
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil ].
	encontrado ifNotNil: [
					(encontrado tieneCliente: unUsuario) ifTrue: [ 
		(encontrado esActivo and: [ encontrado esGuardamuebles ]) ifTrue: [
			encontrado renovar: unaFechaFin listaElementos: unaListaElementos. renovado:=true] ].
	]ifNil:[] .
	
	self changed .
	^renovado .
	
