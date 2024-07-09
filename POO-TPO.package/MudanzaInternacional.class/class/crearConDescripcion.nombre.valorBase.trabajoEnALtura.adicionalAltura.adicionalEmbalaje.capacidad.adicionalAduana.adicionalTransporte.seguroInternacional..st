instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase trabajoEnALtura: unTrabajoEnAltura adicionalAltura: unAdicionalAltura adicionalEmbalaje: unAdicionalEmbalaje capacidad: unaCapacidad adicionalAduana: unAdicionalAduana adicionalTransporte: unAdicionalTransporte seguroInternacional: unSeguroInternacional

	| unaMudanzaInternacional |
	unaMudanzaInternacional := self
		              crearConDescripcion: unaDescripcion
		              nombre: unNombre
		              valorBase: unValorBase
		              trabajoEnAltura: unTrabajoEnAltura
		              adicionalAltura: unAdicionalAltura
		              adicionalEmbalaje: unAdicionalEmbalaje
		              capacidad: unaCapacidad.

	unaMudanzaInternacional
		inicializarAdicionalAduana: unAdicionalAduana
		adicionalTransporte: unAdicionalTransporte
		seguroInternacional: unSeguroInternacional.
	^ unaMudanzaInternacional