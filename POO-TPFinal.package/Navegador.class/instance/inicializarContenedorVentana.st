initialization
inicializarContenedorVentana
	"contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     extent: self width @ self height"

	"	contenedorVentanas := (InterfazLogin new
			 navegador: self
			 empresa: EmpresaMudanzas crearConBaseDeDatos)"
"Añadimos TableLayout para que el *contenido interno* se redimensione, 
		aunque no sea LayoutMorph, PanelMorph en Pharo 11 suele adoptar esta política."
	contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     
		                     layoutPolicy: TableLayout new;
		                     listDirection: #topToBottom;
		                     vResizing: #spaceFill;
		                     hResizing: #spaceFill;
		                     cellInset: 0 @ 0