as yet unclassified
esCancelable
	| dias |
	dias := (Date today - fechaFirma) asDays abs.
	0 < dias < 10
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]