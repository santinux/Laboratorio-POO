instance creation
crearConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conHorasExtra: unasHorasExtra conTituloUniversitario: unTituloUniversitario
	| empleadito |
	empleadito := self new.
	empleadito inicializarConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario conHorasExtra: unasHorasExtra conTituloUniversitario: unTituloUniversitario.
	^ empleadito.