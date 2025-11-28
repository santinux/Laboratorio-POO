as yet unclassified
reprogramarContrato: unIdContrato nuevaFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente

	| encontrado |
	encontrado := contratos
		              detect: [ :unContrato |
		              unContrato esContrato: unIdContrato ]
		              ifNone: [ nil].
	encontrado ifNotNil: [
		(encontrado esActivo and: [ encontrado esMudanza ]) ifTrue: [
			encontrado
				reprogramarContratoConFecha: unaNuevaFecha
				nuevaHora: unaNuevaHora
				urgente: esUrgente ] ]