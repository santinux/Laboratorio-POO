as yet unclassified
reprogramarContratoDeUsuario:unUsuario conId:unIdContrato nuevaFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente

	| encontrado |
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil].
	encontrado ifNotNil: [
		(encontrado tieneCliente: unUsuario) ifTrue: [ 
		(encontrado esActivo and: [ encontrado esMudanza ]) ifTrue: [
			encontrado
				reprogramarContratoConFecha: unaNuevaFecha
				nuevaHora: unaNuevaHora
				urgente: esUrgente ] ].
		].
self changed .