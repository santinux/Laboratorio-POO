as yet unclassified
obtenerValorMulta

	| valorMulta diasFaltantes |
	valorMulta := valor.
	diasFaltantes := fechaAcordada - Date today.
	diasFaltantes >= 1 ifTrue: [ valorMulta := 0 ].
	^ valorMulta