initialization
initialize

	super initialize.

	self titulo: 'Mudanzas-NQN Login'.

	campoDNI := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Ingrese su DNI'.
	self agregarMorphCentrado: campoDNI conMargen: 40.

	campoContrasegna := RubTextFieldMorph new
		                    extent: 275 @ 20;
		                    ghostText: 'Ingrese su contraseña'.
	self agregarMorphCentrado: campoContrasegna conMargen: 10.

	botonIniciarSesion := BotonAccion new label: 'Iniciar Sesión'.
	"Hacer la búsqueda del usuario en la DB y obtener su instancia"
	"Con la instancia de usuario moverse a la interfaz de menú de usuario"
	botonIniciarSesion mouseAction: [ self validarUsuario: campoDNI ].
	self agregarMorphCentrado: botonIniciarSesion conMargen: 20.

	botonRegistrarse := BotonAccion new label: 'Registrarse'.
	botonRegistrarse mouseAction: [ self inform: 'Botón Registrarse presionado' ].
	self agregarMorphCentrado: botonRegistrarse conMargen: 10.

	botonAdmin := BotonAccion new
		              label: 'Modo Administrador del Sistema';
		              color: Color orange;
		              mouseAction: [
			              navegador agregarVentana:
					              (InterfazMenuAdministrador new navegador:self  empresa: empresa) ].
	self agregarMorphCentrado: botonAdmin conMargen: 40.

	empresa ifNotNil: [
		empresa addDependent: self.
		self update: empresa ]