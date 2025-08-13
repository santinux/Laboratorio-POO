initialization
initialize

	super initialize.
	self setLabel: 'Navegador Mudanzas NQN'.
	self inicializarMorphContenido.
	self inicializarBarraNavegacion.
	self inicializarPilaNavegacion.
	self addMorph: barraNavegacion frame: (0 @ 0 corner: 1 @ 0.075).
	self addMorph: morphContenido frame: (0 @ 0.075 corner: 1 @ 1).
	"Tamaño de la ventana por defecto"
	self extent: 750 @ 450