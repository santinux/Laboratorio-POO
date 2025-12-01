as yet unclassified
obtenerValorFinal
	| valorFinal |
	valorFinal := super obtenerValorFinal.
	valorFinal := valorFinal + self obtenerAdicionales.
	^ valorFinal.