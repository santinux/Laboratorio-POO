deAplicacion
calcularAntiguedad
	| agnos valorAntiguedad porcentajeAntiguedad |
	agnos := self calcularAgnosAntiguedad.
	porcentajeAntiguedad := self class obtenerPorcentaje: agnos.
	valorAntiguedad := sueldoBasico * porcentajeAntiguedad / 100.
	^ valorAntiguedad.