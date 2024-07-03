as yet unclassified
crearConProtector: unProtector animal: unAnimal gastos: colGastos
	| unContratoSuperior |
	unContratoSuperior := self new.
	unContratoSuperior inicializarConProtector: unProtector animal: unAnimal gastos: colGastos.
	^ unContratoSuperior