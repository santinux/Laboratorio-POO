initialization
initialize

	super initialize.

	self titulo: 'Mudanzas-NQN Registro'.

	"Agregamos los campos y botones para el formulario de registro del usuario"

	campoNombre := RubTextFieldMorph new
		               extent: 275 @ 20;
		               ghostText: 'Ingrese su nombre'.
	self agregarMorphCentrado: campoNombre conMargen: 40.

	campoApellido := RubTextFieldMorph new
		                 extent: 275 @ 20;
		                 ghostText: 'Ingrese su apellido'.
	self agregarMorphCentrado: campoApellido conMargen: 20.

	campoDNI := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Ingrese su DNI'.
	self agregarMorphCentrado: campoDNI conMargen: 20.

	campoContrasegna := RubTextFieldMorph new
		                    extent: 275 @ 20;
		                    ghostText: 'Ingrese su contraseña'.
	self agregarMorphCentrado: campoContrasegna conMargen: 20.

	campoTelefonoContacto := RubTextFieldMorph new
		                         extent: 275 @ 20;
		                         ghostText:
			                         'Ingrese su teléfono de contacto'.
	self agregarMorphCentrado: campoTelefonoContacto conMargen: 20.

	campoCalle := RubTextFieldMorph new
		              extent: 275 @ 20;
		              ghostText: 'Ingrese su calle'.
	self agregarMorphCentrado: campoCalle conMargen: 20.

	campoNumero := RubTextFieldMorph new
		               extent: 275 @ 20;
		               ghostText: 'Ingrese número de domicilio'.
	self agregarMorphCentrado: campoNumero conMargen: 20.

	campoPiso := RubTextFieldMorph new
		             extent: 275 @ 20;
		             ghostText: 'Ingrese su teléfono de contacto'.
	self agregarMorphCentrado: campoPiso conMargen: 20.

	campoDpto := RubTextFieldMorph new
		             extent: 275 @ 20;
		             ghostText: 'Ingrese su número de departamento'.
	self agregarMorphCentrado: campoDpto conMargen: 20.

	campoBarrio := RubTextFieldMorph new
		               extent: 275 @ 20;
		               ghostText: 'Ingrese su barrio'.
	self agregarMorphCentrado: campoBarrio conMargen: 20.
	
