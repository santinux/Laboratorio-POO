initialization
initialize

	super initialize.
	self titulo: 'Mudanzas-NQN'.
	campoDNI := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Ingrese su DNI'.
	self agregarMorphCentrado: campoDNI conMargen: 40.

	botonIniciarSesion := BotonAccion new label: 'Iniciar Sesión'.
	"Hacer la búsqueda del usuario en la DB y obtener su instancia"
	"Con la instancia de usuario moverse a la interfaz de menú de usuario"
	botonIniciarSesion mouseAction: [ self validarUsuario: campoDNI ].
	self agregarMorphCentrado: botonIniciarSesion conMargen: 20.

	botonAdmin := BotonAccion new
		              label: 'Modo Administrador del Sistema';
		              color: Color orange;
		              mouseAction: [
			              navegador agregarVentana:
					              (InterfazMenuAdministrador new empresa: empresa) ].
	self agregarMorphCentrado: botonAdmin conMargen: 40.

	empresa ifNotNil: [
		empresa addDependent: self.
		self update: empresa ]