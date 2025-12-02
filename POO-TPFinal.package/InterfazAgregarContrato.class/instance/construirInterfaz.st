as yet unclassified
construirInterfaz

	botonContratoGuardamuebles := BotonAccion new
		                              label:
			                              'Agregar Contrato Guardamuebles';
		                              color: Color orange;
		                              mouseAction: [
			                              self agregarContratoConTipo: 1 ].
	self agregarMorphCentrado: botonContratoGuardamuebles conMargen: 20.

	botonContratoMudanzaLocal := BotonAccion new
		                             label: 'Agregar Contrato Mudanza Local';
		                             color: Color orange;
		                             mouseAction: [
			                             self agregarContratoConTipo: 2 ].
	self agregarMorphCentrado: botonContratoMudanzaLocal conMargen: 20.

	botonContratoMudanzaNacional := BotonAccion new
		                                label:
			                                'Agregar Contrato Mudanza Nacional';
		                                color: Color orange;
		                                mouseAction: [
			                                self agregarContratoConTipo: 3 ].
	self agregarMorphCentrado: botonContratoMudanzaNacional conMargen: 20.

	botonContratoMudanzaInternacional := BotonAccion new
		                                     label:
			                                     'Agregar Contrato Mudanza Internacional';
		                                     color: Color orange;
		                                     mouseAction: [
			                                     self agregarContratoConTipo: 4 ].
	self
		agregarMorphCentrado: botonContratoMudanzaInternacional
		conMargen: 20