as yet unclassified
obtenerValorMulta

	| valorMulta diasFaltantes |
	valorMulta := valor.
	diasFaltantes := fechaAcordada - Date today.
	diasFaltantes >= 7 ifTrue: [ valorMulta := 0 ].
	^ valorMulta