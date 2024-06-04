constructor
crearConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conMontoVentaMes: unMontoVentaMes
	| empleadito |
	empleadito := self new.
	empleadito inicializarConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conMontoVentaMes: unMontoVentaMes.
	^ empleadito.