as yet unclassified
agregarServicio
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	|botonServicioGuardamuebles botonServicioMudanzaLocal botonServicioMudanzaNacional botonServicioMudanzaInternacional botonCancelarServicio |
self removeAllMorphs.
	self titulo: 'Agregar Nuevo Servicio'.

	botonServicioGuardamuebles := BotonAccion new
		                label: 'Agregar Servicio Guardamuebles';
		                color: Color orange;
		                mouseAction: [ self agregarServicioGuardamuebles  ].
	self agregarMorphCentrado: botonServicioGuardamuebles conMargen: 20.

		botonServicioMudanzaLocal := BotonAccion new
		                label: 'Agregar Servicio Mudanza Local';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaLocal   ].
	self agregarMorphCentrado: botonServicioMudanzaLocal conMargen: 20.
	
	botonServicioMudanzaNacional := BotonAccion new
		                label: 'Agregar Servicio Mudanza Nacional';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaNacional   ].
	self agregarMorphCentrado: botonServicioMudanzaNacional conMargen: 20.
	
	botonServicioMudanzaInternacional := BotonAccion new
		                label: 'Agregar Servicio Mudanza Internacional';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaInternacional   ].
	self agregarMorphCentrado: botonServicioMudanzaInternacional conMargen: 20.
	
botonCancelarServicio := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonCancelarServicio mouseAction: [ self initialize ].