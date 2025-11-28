initialization
initialize

	| morphContenido |
	super initialize.

	"1. Configuración de la ventana principal"
	self setLabel: 'Mini Navegador de Prueba'.
	self extent: 400 @ 300.

	self inicializarContenedorVentana.

	"3. Creación del Morph de Contenido (Rectángulo Rojo)"
	morphContenido := Morph new
		                  color: Color red;
		                  extent: 200 @ 100.

	"4. Configuración de Resizing para el contenido, para que llene el contenedorVentana"
	morphContenido
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	"5. Composición (¡LA CLAVE!)"
	"Usamos addMorph:frame: para que el SystemWindow posicione el contenedorVentana."
	"El LayoutFrame debe ocupar el 100% (0@0 corner: 1@1) de la SystemWindow."
	self addMorph: contenedorVentana frame: (0 @ 0.075 corner: 1 @ 1).

	"6. Añadir el contenido al contenedor"
	contenedorVentana addMorph: morphContenido