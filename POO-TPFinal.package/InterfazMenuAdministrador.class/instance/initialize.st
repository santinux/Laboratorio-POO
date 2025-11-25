initialization
initialize

	super initialize.
	self titulo: 'Menú Administrador'.

	test := RubTextFieldMorph new
		        extent: 275 @ 20;
		        ghostText: 'Ingrese un DNI'.
	self agregarMorphCentrado: test conMargen: 40.

	botonListado := BotonAccion new
		                label: 'Listar contratos semanales';
		                color: Color orange;
		                mouseAction: [ self mostrarListadoContratos ].
	self agregarMorphCentrado: botonListado conMargen: 20.

	botonServicio := BotonAccion new
		                 label: 'Agregar servicio';
		                 color: Color orange;
		                 mouseAction: [ " navegador agregarVentana:
					              (InterfazMenuAdministrador new empresa: empresa)"
			                  ].
	self agregarMorphCentrado: botonServicio conMargen: 20