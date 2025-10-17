initialization
inicializarBarraNavegacion

	| botonVolver |
	barraNavegacion := PanelMorph new
		                   color: Color lightGray;
		                   extent: self width @ 30.

	botonVolver := SimpleButtonMorph new
		               label: '← Volver';
		               color: Color gray;
		               borderColor: Color gray;
		               extent: 80 @ 20;
		               position: barraNavegacion position + (5 @ 5);
		               useRoundedCorners.
	botonVolver on: #mouseUp send: #goBack to: self.

	barraNavegacion addMorph: botonVolver