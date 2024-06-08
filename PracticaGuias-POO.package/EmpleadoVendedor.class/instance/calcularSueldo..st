deAplicacion
calcularSueldo: laEmpresa
	| valorSueldo |
	valorSueldo := super calcularSueldo: laEmpresa.
	valorSueldo := valorSueldo + (self obtenerAdicionalVentas: laEmpresa) asNumber.
	^ valorSueldo.