initialization
inicializarContenedorVentana

	contenedorVentana := PanelMorph new
		                     color: Color lightGray;
		                     extent: self width @ self height
	"	contenedorVentanas := (InterfazLogin new
			 navegador: self
			 empresa: EmpresaMudanzas crearConBaseDeDatos)"