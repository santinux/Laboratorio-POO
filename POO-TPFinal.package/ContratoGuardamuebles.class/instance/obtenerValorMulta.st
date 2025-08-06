as yet unclassified
obtenerValorMulta

	| valorMulta diasFaltantes condicion |
	valorMulta := valor.
	diasFaltantes := fechaInicio - Date today.
	condicion := diasFaltantes < 10 and: [ diasFaltantes > 3 ].
	condicion ifTrue: [ valorMulta := valor * 0.10 ].
	diasFaltantes >= 10 ifTrue: [ valorMulta := 0 ].
	^ valorMulta