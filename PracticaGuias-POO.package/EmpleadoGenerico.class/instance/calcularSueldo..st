deAplicacion
calcularSueldo: laEmpresa
	| antiguedad valorSueldo |
	antiguedad := self calcularAntiguedad.
	valorSueldo := sueldoBasico + antiguedad.
	^ valorSueldo.