instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase trabajoEnAltura: unTrabajoEnAltura adicionalAltura: unAdicionalAltura adicionalEmbalaje: unAdicionalEmbalaje capacidad: unaCapacidad incluyeCarga: unIncluyeCarga incluyeDescarga: unIncluyeDescarga distanciaMaxima: unaDistanciaMaxima
	| unaMudanzaLocal |
	unaMudanzaLocal := self
		                   crearConDescripcion: unaDescripcion
		                   nombre: unNombre
		                   valorBase: unValorBase
		                   trabajoEnAltura: unTrabajoEnAltura
		                   adicionalAltura: unAdicionalAltura
		                   adicionalEmbalaje: unAdicionalEmbalaje
		                   capacidad: unaCapacidad.
	unaMudanzaLocal
		inicializarIncluyeCarga: unIncluyeCarga
		incluyeDescarga: unIncluyeDescarga
		distanciaMaxima: unaDistanciaMaxima.
	^ unaMudanzaLocal