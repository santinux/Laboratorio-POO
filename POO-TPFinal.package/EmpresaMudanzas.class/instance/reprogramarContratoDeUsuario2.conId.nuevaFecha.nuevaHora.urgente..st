as yet unclassified
reprogramarContratoDeUsuario2:unUsuario conId:unIdContrato nuevaFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente
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
	
	encontrado esMudanza  ifFalse: [ 
		^ 'Solo se pueden reprogramar contratos de mudanza' 
	].
	
	encontrado reprogramarContratoConFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente .
	self changed.
	^ 'Contrato renovado correctamente'