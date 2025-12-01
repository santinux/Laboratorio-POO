instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase trabajoEnAltura: unTrabajoEnAltura adicionalAltura: unAdicionalAltura adicionalEmbalaje: unAdicionalEmbalaje capacidad: unaCapacidad desdeInterior: unDesdeInterior haciaInterior: unHaciaInterior mercaderiaFragil: unaMercaderiaFragil adicionalFragil: unAdicionalFragil distanciaAcordada: unaDistanciaAcordada adicionalDistancia: unAdicionalDistancia
	| unaMudanzaNacional |
	unaMudanzaNacional := self crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase trabajoEnAltura: unTrabajoEnAltura adicionalAltura: unAdicionalAltura adicionalEmbalaje: unAdicionalEmbalaje capacidad: unaCapacidad.
	unaMudanzaNacional inicializarDesdeInterior: unDesdeInterior haciaInterior: unHaciaInterior mercaderiaFragil: unaMercaderiaFragil adicionalFragil: unAdicionalFragil distanciaAcordada: unaDistanciaAcordada adicionalDistancia: unAdicionalDistancia.
	^ unaMudanzaNacional 