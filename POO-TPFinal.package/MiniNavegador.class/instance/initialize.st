initialization
initialize

	| morphContenido |
	super initialize.

	"1. Configuración de la ventana principal"
	self setLabel: 'Mega Mini Navegador de Prueba'.
	self extent: 400 @ 300.

	"2. Inicialización del contenedor (usamos PanelMorph, más idiomático para un contenedor visible)"
	contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     "Añadimos TableLayout para que el *contenido interno* se redimensione, 
		aunque no sea LayoutMorph, PanelMorph en Pharo 11 suele adoptar esta política."
		                     layoutPolicy: TableLayout new;
		                     listDirection: #topToBottom;
		                     vResizing: #spaceFill;
		                     hResizing: #spaceFill;
		                     cellInset: 0 @ 0.

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