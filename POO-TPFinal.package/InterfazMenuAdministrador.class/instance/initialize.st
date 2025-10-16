initialization
initialize

	super initialize.
	self hResizing: #spaceFill;
     vResizing: #spaceFill.

	self titulo: 'Modo Admin'.
test := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Ingrese su DNI'.
	self agregarMorphCentrado: test conMargen: 40.

	botonListado := BotonAccion new
		              label: 'Listar contratos semanales';
		              color: Color orange;
		              mouseAction: [
			             " navegador agregarVentana:
					              (InterfazMenuAdministrador new empresa: empresa)" ].
	self agregarMorphCentrado: botonListado  conMargen: 20.
		botonServicio := BotonAccion new
		              label: 'Agregar servicio';
		              color: Color orange;
		              mouseAction: [
			             " navegador agregarVentana:
					              (InterfazMenuAdministrador new empresa: empresa)" ].
	self agregarMorphCentrado: botonServicio  conMargen: 40.
