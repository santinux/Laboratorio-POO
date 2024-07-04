instance creation
crearConProtector: unProtector animal: unAnimal mesesDuracion: losMeses

	| unContratoSuperior |
	unContratoSuperior := super
		                      crearConProtector: unProtector
		                      animal: unAnimal
		                      mesesDuracion: losMeses.
	unContratoSuperior inicializarGastos.
	^ unContratoSuperior