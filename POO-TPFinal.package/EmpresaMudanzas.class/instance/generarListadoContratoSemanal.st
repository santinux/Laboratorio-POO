as yet unclassified
generarListadoContratoSemanal

	| colContratoSemanal |
	colContratoSemanal := OrderedCollection new.

	colContratoSemanal:= contratos select: [ :c | c esContratoDeLaSemana ].
	
	^ colContratoSemanal