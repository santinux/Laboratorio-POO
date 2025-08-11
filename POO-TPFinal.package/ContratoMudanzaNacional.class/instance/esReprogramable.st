as yet unclassified
esReprogramable

	| condicion diasFaltantes|
	diasFaltantes := (Date today - fechaAcordada) asDays abs.
	condicion := diasFaltantes > 5.
	condicion ifTrue: [ valor := valor + adicional ].
	^ condicion