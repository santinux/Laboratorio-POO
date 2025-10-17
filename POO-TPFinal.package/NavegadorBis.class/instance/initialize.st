initialization
initialize

	super initialize.
	self extent: 750 @ 450.
	self setLabel: 'Navegador Mudanzas NQN'.

	self inicializarPilaNavegacion.
	self inicializarBarraNavegacion.
	self inicializarContenedorVentana.

	barraNavegacion fullFrame: (LayoutFrame new
			 leftFraction: 0;
			 topFraction: 0;
			 rightFraction: 1;
			 bottomFraction: 0.075;
			 yourself).
	contenedorVentana fullFrame: (LayoutFrame new
			 leftFraction: 0;
			 topFraction: 0.075;
			 rightFraction: 1;
			 bottomFraction: 1;
			 yourself).

	self addMorph: barraNavegacion.
	self addMorph: contenedorVentana.
	
	"Primer ventana para el login"
	self agregarVentana: (InterfazLogin new
			 navegador: self
			 empresa: EmpresaMudanzas crearConBaseDeDatos)