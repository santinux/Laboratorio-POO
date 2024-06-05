deAplicacion
calcularAgnosAntiguedad
	| agnos |
	agnos := (Date today - fechaIngreso) years.
	^ agnos.