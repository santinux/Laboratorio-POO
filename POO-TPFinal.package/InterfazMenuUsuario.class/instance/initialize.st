initialization
initialize
	super initialize.
	self titulo: 'Menú usuario'.

	botonListaContratos := BotonAccion new
		                label: 'Listar contratos ';
		                color: Color green ;
		                mouseAction: [ navegador agregarVentana: (InterfazVerListaContratos  
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario) ].
	self agregarMorphCentrado: botonListaContratos   conMargen: 20.
	

	botonRegistrarContrato := BotonAccion new
		                label: 'Registrar Contrato';
		                color: Color green;
		                mouseAction: [navegador agregarVentana: (InterfazAgregarContrato   
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario)].
	self agregarMorphCentrado: botonRegistrarContrato  conMargen: 20.

	botonCancelarContratos := BotonAccion new
		                 label: 'Cancelar Contrato';
		                 color: Color green;
		                 mouseAction: [ navegador agregarVentana: (InterfazCancelarContrato  
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario)].
	self agregarMorphCentrado: botonCancelarContratos conMargen: 20.
	

	botonReprogramarContrato := BotonAccion new
		                 label: 'Reprogramar Contrato Mudanza';
		                 color: Color green;
		                 mouseAction: [ navegador agregarVentana: (InterfazReprogramarContrato  
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario)].
	self agregarMorphCentrado: botonReprogramarContrato conMargen: 20.
	
	botonRenovarContrato := BotonAccion new
		                 label: 'Renovar Contrato Guardamuebles';
		                 color: Color green;
		                 mouseAction: [ navegador agregarVentana: (InterfazRenovarContratoGuardamuebles 
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario)].
	self agregarMorphCentrado: botonRenovarContrato conMargen: 20.
	