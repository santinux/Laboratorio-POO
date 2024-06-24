initialization
inicializar
	| dat1 dat2 dat3 dat4 dat5 dat6 fec1 fec2 eAdm1 eAdm2 eDir1 eDir2 eVen1 eVen2 tablaCargos |
	
	fec1 := Date newDay: 12 month: 12 year: 1978.
	fec2 := Date newDay: 5 month: 5 year: 2005.
	
	dat1 := DatosPersona crearConNombre: 'Luis' conApellido: 'Spinetta' conNroDNI: 20323404 conCantidadHijosMenores: 1.
	dat2 := DatosPersona crearConNombre: 'María' conApellido: 'Perramón' conNroDNI: 17878999 conCantidadHijosMenores: 3.
	dat3 := DatosPersona crearConNombre: 'Leo' conApellido: 'Mattioli' conNroDNI: 20787363 conCantidadHijosMenores: 2.
	dat4 := DatosPersona crearConNombre: 'Joaquín' conApellido: 'Sabina' conNroDNI: 19878675 conCantidadHijosMenores: 5.
	dat5 := DatosPersona crearConNombre: 'Pep' conApellido: 'Guardiola' conNroDNI: 26767800 conCantidadHijosMenores: 1.
	dat6 := DatosPersona crearConNombre: 'Antonella' conApellido: 'Rocuzzo' conNroDNI: 30101809 conCantidadHijosMenores: 3.
	
	eAdm1 := EmpleadoAdministrativo crearConDatosPersonales: dat1 conLegajo: 1544 conFechaIngreso: fec1 conSueldoBasico: 1800000 conHorarioTrabajo: '08:00 - 16:00' conHorasExtra: 2 conTituloUniversitario: true.
	eAdm2 := EmpleadoAdministrativo crearConDatosPersonales: dat2 conLegajo: 1550 conFechaIngreso: fec1 conSueldoBasico: 1800000 conHorarioTrabajo: '08:00 - 16:00' conHorasExtra: 1 conTituloUniversitario: true.
	
	eDir1 := EmpleadoDirectivo crearConDatosPersonales: dat3 conLegajo: 1004 conFechaIngreso: fec1 conSueldoBasico: 1800000 conHorarioTrabajo: '08:00 - 16:00' conCargo: 'Director ejecutivo'.
	eDir2 := EmpleadoDirectivo crearConDatosPersonales: dat4 conLegajo: 1010 conFechaIngreso: fec1 conSueldoBasico: 1800000 conHorarioTrabajo: '08:00 - 16:00' conCargo: 'Director cientifico'.
	
	eVen1 := EmpleadoVendedor crearConDatosPersonales: dat5 conLegajo: 1838 conFechaIngreso: fec2 conSueldoBasico: 1000000 conHorarioTrabajo: '08:00 - 16:00' conMontoVentaMes: 3000000.
	eVen2 := EmpleadoVendedor crearConDatosPersonales: dat6 conLegajo: 1840 conFechaIngreso: fec2 conSueldoBasico: 1000000 conHorarioTrabajo: '08:00 - 16:00' conMontoVentaMes: 5000000.
	
	misEmpleados := OrderedCollection new.
	misEmpleados
		add: eAdm1;
		add: eAdm2;
		add: eDir1;
		add: eDir2;
		add: eVen1;
		add: eVen2.
	
	" Se tomaron de Wikipedia: https://es.wikipedia.org/wiki/Categor%C3%ADa:Puestos_en_una_empresa
    Director científico
    Director comercial
    Director de finanzas
    Director de operaciones
    Director de recursos humanos
    Director de riesgos
    Director de seguridad
    Director de sistemas de información
    Director de tecnología
    Director digital
    Director ejecutivo
    Director jurídico
    Director técnico
	"

	tablaCargos := Dictionary new.
	tablaCargos
		at: 'Director ejecutivo' put: 1000000;
		at: 'Director cientifico' put: 800000;
		at: 'Director de finanzas' put: 800000;
		at: 'Director de sistemas de informacion' put: 750000;
		at: 'Director de tecnologia' put: 750000;
		at: 'Director de seguridad' put: 700000;
		at: 'Director tecnico' put: 700000.
		
	miEmpresa := EmpresaGenerica crearConEmpleados: misEmpleados conPorcentajeVendedor: 10 conTablaCargos: tablaCargos conValorTituloUniversitario: 1500000 conValorHoraExtra: 100000.