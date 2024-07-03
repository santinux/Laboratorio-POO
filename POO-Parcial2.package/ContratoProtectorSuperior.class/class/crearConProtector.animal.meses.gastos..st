as yet unclassified
crearConProtector: unProtector animal: unAnimal meses:losMeses gastos: colGastos

	| unContratoSuperior |
	unContratoSuperior := self crearConProtector: unProtector animal: unAnimal meses: losMeses.
	unContratoSuperior inicializarConGastos: colGastos.
	^ unContratoSuperior