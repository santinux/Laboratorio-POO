instance creation
crearConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase
	| temp |
	temp := self new.
	temp inicializarConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase.
	^ temp.
    