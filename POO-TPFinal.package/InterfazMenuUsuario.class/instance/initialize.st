initialization
initialize
	super initialize.
	self titulo: 'Menú usuario'.

	botonListaContratos := BotonAccion new
		                label: 'Listar contratos ';
		                color: Color orange;
		                mouseAction: [ self verListaContratos ].
	self agregarMorphCentrado: botonListaContratos   conMargen: 20.
	

	botonRegistrarContrato := BotonAccion new
		                label: 'Registrar Contrato';
		                color: Color orange;
		                mouseAction: [ self registrarContrato ].
	self agregarMorphCentrado: botonRegistrarContrato  conMargen: 20.

	botonCancelarContratos := BotonAccion new
		                 label: 'Cancelar Contrato';
		                 color: Color orange;
		                 mouseAction: [ self cancelarContrato].
	self agregarMorphCentrado: botonCancelarContratos conMargen: 20.
	

	botonReprogramarContrato := BotonAccion new
		                 label: 'Reprogramar Contrato Mudanza';
		                 color: Color orange;
		                 mouseAction: [ self reprogramarContrato ].
	self agregarMorphCentrado: botonReprogramarContrato conMargen: 20.
	
	botonRenovarContrato := BotonAccion new
		                 label: 'Renovar Contrato Guardamuebles';
		                 color: Color orange;
		                 mouseAction: [ self renovarContratoGuardamuebles].
	self agregarMorphCentrado: botonRenovarContrato conMargen: 20.
	