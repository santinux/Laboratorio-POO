initialization
initialize

	super initialize.
	self setLabel: 'Navegador Mudanzas NQN'.
	self extent: 750 @ 450.
	
	self inicializarPilaNavegacion.
	self inicializarBarraNavegacion.
	self inicializarContenedorVentana.

	self addMorph: barraNavegacion frame: (0 @ 0 corner: 1 @ 0.075).
	self addMorph: contenedorVentana frame: (0 @ 0.075 corner: 1 @ 1).
	"Primer ventana para el login"
	self agregarVentana: (InterfazLogin new
			 navegador: self
			 empresa: EmpresaMudanzas crearConBaseDeDatos)