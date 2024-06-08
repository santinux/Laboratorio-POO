instance creation
crearConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conCargo: unCargo
	| empleadito |
	empleadito := self new.
	empleadito inicializarConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conCargo: unCargo.
	^ empleadito.