as yet unclassified
construirInterfaz

	botonListaContratos := BotonAccion new
		                       label: 'Listar contratos ';
		                       mouseAction: [
			                       navegador agregarVentana:
					                       (InterfazVerListaContratos new
						                        navegador: navegador;
						                        empresa: empresa usuario: usuario) ].
	self agregarMorphCentrado: botonListaContratos conMargen: 20.


	botonRegistrarContrato := BotonAccion new
		                          label: 'Registrar Contrato';
		                          mouseAction: [ navegador agregarVentana:
					                          (InterfazAgregarContrato
						                           new navegador: navegador;
						                           empresa: empresa
						                           usuario: usuario)
			                           ].
	self agregarMorphCentrado: botonRegistrarContrato conMargen: 20.

	botonCancelarContratos := BotonAccion new
		                          label: 'Cancelar Contrato';
		                          mouseAction: [ "navegador agregarVentana:
					                          (InterfazCancelarContrato
						                           crearConNavegador: navegador
						                           empresa: empresa
						                           usuario: usuario)"
			                           ].
	self agregarMorphCentrado: botonCancelarContratos conMargen: 20.


	botonReprogramarContrato := BotonAccion new
		                            label: 'Reprogramar Contrato Mudanza';
		                            mouseAction: [ "navegador agregarVentana:
					                            (InterfazReprogramarContrato
						                             crearConNavegador: navegador
						                             empresa: empresa
						                             usuario: usuario)"
			                             ].
	self agregarMorphCentrado: botonReprogramarContrato conMargen: 20.

	botonRenovarContrato := BotonAccion new
		                        label: 'Renovar Contrato Guardamuebles';
		                        mouseAction: [ "navegador agregarVentana:
					                        (InterfazRenovarContratoGuardamuebles
						                         crearConNavegador: navegador
						                         empresa: empresa
						                         usuario: usuario)"
			                         ].
	self agregarMorphCentrado: botonRenovarContrato conMargen: 20