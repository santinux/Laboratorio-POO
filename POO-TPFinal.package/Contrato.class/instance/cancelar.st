as yet unclassified
cancelar
	| valorMulta |
	valorMulta := self obtenerValorMulta.
	estado := 'cancelado'.
	valor := valorMulta.
	^ true