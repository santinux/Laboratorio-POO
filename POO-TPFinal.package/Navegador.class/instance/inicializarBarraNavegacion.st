initialization
inicializarBarraNavegacion

	| botonVolver |
	barraNavegacion := PanelMorph new.
	barraNavegacion color: Color lightGray.
	barraNavegacion extent: self width @ 30.

	botonVolver := SimpleButtonMorph new.
	botonVolver label: '← Volver'.
	botonVolver color: Color veryLightGray.
	botonVolver borderColor: Color gray.
	botonVolver extent: 80 @ 20.
	botonVolver position: barraNavegacion position + (10 @ 5).
	botonVolver on: #mouseUp send: #goBack to: self.

	barraNavegacion addMorph: botonVolver

	"Add navbar at the top
	self addMorph: barraNavegacion frame: (0 @ 0 corner: 1 @ 0.075).

	Adjust content morph position to be below navbar
	self addMorph: contenidoMorph frame: (0 @ 0.075 corner: 1 @ 1)"