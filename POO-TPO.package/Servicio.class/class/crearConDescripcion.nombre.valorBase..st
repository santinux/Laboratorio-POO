instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase

	| unServicio |
	unServicio := self new.
	unServicio
		inicializarDescripcion: unaDescripcion nombre: unNombre
		valorBase: unValorBase.
	^ unServicio