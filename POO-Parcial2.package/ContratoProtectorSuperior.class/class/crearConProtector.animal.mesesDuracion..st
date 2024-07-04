instance creation
crearConProtector: unProtector animal: unAnimal mesesDuracion: losMeses

	| unContratoSuperior |
	unContratoSuperior := self
		                      crearConProtector: unProtector
		                      animal: unAnimal
		                      mesesDuracion: losMeses.
	unContratoSuperior inicializarGastos.
	^ unContratoSuperior