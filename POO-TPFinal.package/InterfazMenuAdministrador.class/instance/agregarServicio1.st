as yet unclassified
agregarServicio1
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	|botonServicioGuardamuebles botonServicioMudanzaLocal botonServicioMudanzaNacional botonServicioMudanzaInternacional botonCancelarServicio interfaz|
	interfaz:= Interfaz new empresa: empresa .
	
	interfaz  titulo: 'Agregar Nuevo Servicio'.

	botonServicioGuardamuebles := BotonAccion new
		                label: 'Agregar Servicio Guardamuebles';
		                color: Color orange;
		                mouseAction: [ self agregarServicioGuardamuebles  ].
	interfaz agregarMorphCentrado: botonServicioGuardamuebles conMargen: 20.

		botonServicioMudanzaLocal := BotonAccion new
		                label: 'Agregar Servicio Mudanza Local';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaLocal   ].
interfaz agregarMorphCentrado: botonServicioMudanzaLocal conMargen: 20.
	
	botonServicioMudanzaNacional := BotonAccion new
		                label: 'Agregar Servicio Mudanza Nacional';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaNacional   ].
	interfaz agregarMorphCentrado: botonServicioMudanzaNacional conMargen: 20.
	
	botonServicioMudanzaInternacional := BotonAccion new
		                label: 'Agregar Servicio Mudanza Internacional';
		                color: Color orange;
		                mouseAction: [ self agregarServicioMudanzaInternacional   ].
	interfaz agregarMorphCentrado: botonServicioMudanzaInternacional conMargen: 20.
	
botonCancelarServicio := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonCancelarServicio mouseAction: [ self initialize ].
	

^ interfaz .
