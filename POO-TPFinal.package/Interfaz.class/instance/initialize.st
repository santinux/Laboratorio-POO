initialization
initialize

	super initialize.
	self
		color: Color gray;
		borderColor: Color black;
		borderWidth: 2;
		useRoundedCorners.
	self extent: 500 @ 350.
	
	"empresa := EmpresaMudanzas crearConBaseDeDatos."

	botonCerrar := BotonCerrar new.
	self addMorphFront: botonCerrar.
	botonCerrar
		position: self topRight - (botonCerrar width @ 0);
		mouseAction: [ self delete ].

	botonMinimizar := BotonMinimizar new.
	self addMorphFront: botonMinimizar.
	botonMinimizar
		position: botonCerrar position - (23 @ 0);
		mouseAction: [ self collapse ].