deAplicacion
calcularAgnosAntiguedad
	| fechaActual agnos |
	fechaActual := Date today.
	agnos := (fechaActual year - fechaIngreso year).
	"(fechaActual dayOfYear < fechaIngreso dayOfYear) ifTrue: [ agnos := agnos - 1 ]."
	^ agnos.