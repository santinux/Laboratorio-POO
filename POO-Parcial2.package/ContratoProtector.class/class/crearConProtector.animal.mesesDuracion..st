instance creation
crearConProtector: unProtector animal: unAnimal mesesDuracion: losMeses

	| unContrato |
	unContrato := self new.
	unContrato
		inicializarProtector: unProtector
		animal: unAnimal
		mesesDuracion: losMeses.
	^ unContrato