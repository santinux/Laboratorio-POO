constructor
crearConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario
	| empleadito |
	empleadito := self new.
	empleadito inicializarConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario.
	^ empleadito.