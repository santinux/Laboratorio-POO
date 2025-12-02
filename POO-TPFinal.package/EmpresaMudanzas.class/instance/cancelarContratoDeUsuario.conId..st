as yet unclassified
cancelarContratoDeUsuario: unUsuario conId: unIdContrato

	| encontrado|
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
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
	encontrado cancelar.
		self changed.
	^ 'Contrato cancelado' 