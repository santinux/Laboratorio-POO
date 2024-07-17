instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase trabajoEnAltura: unTrabajoEnAltura adicionalAltura: unAdicionalAltura adicionalEmbalaje: unAdicionalEmbalaje capacidad: unaCapacidad

	| unaMudanza |
	unaMudanza := self
		        crearConDescripcion: unaDescripcion
		        nombre: unNombre
		        valorBase: unValorBase.
	unaMudanza
		incializarAdicionalEmbalaje: unAdicionalEmbalaje
		adicionalAltura: unAdicionalAltura
		trabajoEnAltura: unTrabajoEnAltura
		capacidad: unaCapacidad.
	^ unaMudanza