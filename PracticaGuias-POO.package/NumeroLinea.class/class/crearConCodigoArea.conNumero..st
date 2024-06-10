instance creation
crearConCodigoArea: unCodigoArea conNumero: unNumero
	| numerito |
	numerito := self new.
	numerito inicializarConCodigoArea: unCodigoArea conNumero: unNumero.
	^ numerito.