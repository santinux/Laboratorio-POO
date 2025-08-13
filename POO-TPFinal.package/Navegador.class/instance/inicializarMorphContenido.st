initialization
inicializarMorphContenido
	"
	contentMorph := PanelMorph new.
	contentMorph color: Color white.
	contentMorph borderWidth: 0.
"

	morphContenido := InterfazLogin new empresa:
		                  EmpresaMudanzas crearConBaseDeDatos