as yet unclassified
crearConProtector: unProtector animal: unAnimal observaciones: lasObservaciones

	| unContrato |
	unContrato := self new.
	unContrato
		inicializarConProtector: unProtector
		animal: unAnimal
		observaciones: lasObservaciones.
	^ unContrato