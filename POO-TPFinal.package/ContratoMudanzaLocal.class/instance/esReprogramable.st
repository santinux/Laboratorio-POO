as yet unclassified
esReprogramable

	| condicion diasFaltantes |
	diasFaltantes := (Date today - fechaAcordada) asDays abs.
	condicion := diasFaltantes >= 2.
	^ condicion