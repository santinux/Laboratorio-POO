instance creation
crearConDni: unDni conNombre: unNombre conApellido: unApellido conLegajo: unLegajo
	| e |
	e := self new.
	e inicializarConDni: unDni conNombre: unNombre conApellido: unApellido conLegajo: unLegajo.
	^ e.