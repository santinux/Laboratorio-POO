deAplicacion
calcularSueldo: laEmpresa
	| valorSueldo |
	valorSueldo := super calcularSueldo: laEmpresa.
	valorSueldo := valorSueldo + (self obtenerAdicionalCargo: laEmpresa) asNumber.
	^ valorSueldo.