initialization
initialize

	super initialize.
	self
		color: Color gray;
		borderColor: Color black;
		borderWidth: 2;
		useRoundedCorners.
		self extent: 750 @ 450.

	"botonCerrar := BotonCerrar new.
	botonCerrar
		position: self topRight - (botonCerrar width @ 0);
		mouseAction: [ self delete ].
	self addMorphFront: botonCerrar."