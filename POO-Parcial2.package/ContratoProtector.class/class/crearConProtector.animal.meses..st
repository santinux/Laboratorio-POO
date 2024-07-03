instance creation
crearConProtector: unProtector animal: unAnimal meses: losMeses

	| unContrato |
	unContrato := self new.
	unContrato
		inicializarConProtector: unProtector
		animal: unAnimal
		meses: losMeses.
	^ unContrato