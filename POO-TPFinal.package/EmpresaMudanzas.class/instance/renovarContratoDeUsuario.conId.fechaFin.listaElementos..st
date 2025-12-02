as yet unclassified
renovarContratoDeUsuario:unUsuario conId: unIdContrato fechaFin: unaFechaFin listaElementos: unaListaElementos

	| encontrado|
		encontrado := contratos
		detect: [ :unContrato | unContrato esContrato: unIdContrato ]
		ifNone: [ nil ].
	
	encontrado ifNil: [ 
		^ 'Contrato no encontrado' 
	].
	
	(encontrado tieneCliente: unUsuario) ifFalse: [ 
		^ 'El contrato no pertenece a este usuario' 
	].
	
	encontrado esActivo ifFalse: [ 
		^ 'El contrato no está activo' 
	].
	
	encontrado esGuardamuebles ifFalse: [ 
		^ 'Solo se pueden renovar contratos de guardamuebles' 
	].
	
	encontrado renovar: unaFechaFin listaElementos: unaListaElementos.
	self changed.
	^ 'Contrato renovado correctamente'