instance creation
crearConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario
	| empleadito |
	empleadito := self new.
	empleadito inicializarConDatosPersonales: losDatos conLegajo: unLegajo conFechaIngreso: unaFecha conSueldoBasico: unSueldo conHorarioTrabajo: unHorario.
	self setTablaAntiguedad.
	^ empleadito. "self subclassResponsibility."