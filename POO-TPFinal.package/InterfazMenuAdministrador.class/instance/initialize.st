initialization
initialize

	super initialize.
	self titulo: 'Menú Administrador'.

	botonListado := BotonAccion new
		                label: 'Listar contratos semanales';
		                color: Color orange;
		                mouseAction: [
			                navegador agregarVentana:
					                (InterfazListarContratoSemanales new
						                 navegador: navegador;
						                 empresa: empresa) ].
	self agregarMorphCentrado: botonListado conMargen: 20.

	botonListarServicio := BotonAccion new
		                       label: 'Listar Servicios';
		                       color: Color orange;
		                       mouseAction: [ "self mostrarServicios" ].
	self agregarMorphCentrado: botonListarServicio conMargen: 20.

	botonServicio := BotonAccion new
		                 label: 'Agregar servicio';
		                 color: Color orange;
		                 mouseAction: [ "self agregarServicio" ].
	self agregarMorphCentrado: botonServicio conMargen: 20