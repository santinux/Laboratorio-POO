mouse events
mouseLeaveFila: unaFila
	| index |
	index := filas indexOf: unaFila.
	unaFila color: (index odd
		ifTrue: [ Color white ]
		ifFalse: [ Color veryLightGray ]).