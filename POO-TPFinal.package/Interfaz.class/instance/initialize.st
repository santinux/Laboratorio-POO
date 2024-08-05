initialization
initialize
	"este método se ejecutará inmediatamente después del new"

	super initialize.

	"Se establece el color del elemento gráfico, y su posición en la pantalla, o sea el WORLD.
	La posición para este morph es la esquina superior izquierda del recuadro.
	El método 'extent' es para indicar el ancho y alto del recuadro"
	self
		color: Color gray;
		borderColor: Color black.
	self
		borderWidth: 2;
		useRoundedCorners.
	"self position: 45 @ 45."
	self bounds: (self position extent: 350 @ 350).

	"empresa := EmpresaMudanzas crearConBaseDeDatos."

	botonCerrar := BotonCerrar new.
	self addMorphFront: botonCerrar.
	botonCerrar position: self topRight - (botonCerrar width @ 0).
	botonCerrar mouseAction: [ self delete ].

	botonMinimizar := BotonMinimizar new.
	self addMorphFront: botonMinimizar.
	botonMinimizar position: botonCerrar position - (23 @ 0).
	botonMinimizar mouseAction: [ self collapse ].

	self openCenteredInWorld