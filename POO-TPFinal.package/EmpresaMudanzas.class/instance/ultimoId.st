as yet unclassified
ultimoId

	^ contratos
		  ifNotEmpty: [ contratos last obtenerId ]
		  ifEmpty: [ 0 ]