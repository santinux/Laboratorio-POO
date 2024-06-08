deAplicacion
calcularSueldo: laEmpresa
	| valorSueldo |
	valorSueldo := super calcularSueldo: laEmpresa.
	valorSueldo := valorSueldo + (horasExtra * laEmpresa obtenerValorHoraExtra).
	valorSueldo := valorSueldo + laEmpresa obtenerValorTitulo.
	^ valorSueldo.