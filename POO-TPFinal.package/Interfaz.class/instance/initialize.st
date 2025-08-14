initialization
initialize

	super initialize.
	self
		color: Color gray;
		borderColor: Color black;
		borderWidth: 2;
		useRoundedCorners.
	self extent: 740 @ 380
	"Al conocer a navegador, puede adaptarse a sus dimensiones"