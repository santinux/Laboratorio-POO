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

	"Buscamos el usuario en la DB y con su instancia vamos a la interfaz de menú de usuario"
	botonIniciarSesion mouseAction: [
		self validarUsuarioDNI: campoDNI contrasegna: campoContrasegna ].
	self agregarMorphCentrado: botonIniciarSesion conMargen: 20.

	botonRegistrarse := BotonAccion new label: 'Registrarse'.
	botonRegistrarse mouseAction: [
		navegador agregarVentana: (InterfazRegistroUsuario new
				 navegador: navegador;
				 empresa: empresa) ].
	self agregarMorphCentrado: botonRegistrarse conMargen: 10.

	botonAdmin := BotonAccion new
		              label: 'Modo Administrador del Sistema';
		              color: Color orange;
		              mouseAction: [
			              navegador agregarVentana:
					              (InterfazMenuAdministrador new navegador: navegador; empresa: empresa) ].
	self agregarMorphCentrado: botonAdmin conMargen: 40.

	empresa ifNotNil: [
		empresa addDependent: self.
		self update: empresa ]