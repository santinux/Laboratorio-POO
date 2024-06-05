deAplicacion
calcularSueldo: laEmpresa
	| valorSueldo |
	valorSueldo := sueldoBasico + self calcularAntiguedad.
	^ valorSueldo.