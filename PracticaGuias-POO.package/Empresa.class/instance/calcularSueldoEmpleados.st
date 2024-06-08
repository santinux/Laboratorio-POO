deAplicacion
calcularSueldoEmpleados
	| sueldoEmpleados |
	sueldoEmpleados := 0.
	empleados do: [ :unEmpleado | sueldoEmpleados + (unEmpleado calcularSueldo: self) ].
	^ sueldoEmpleados.