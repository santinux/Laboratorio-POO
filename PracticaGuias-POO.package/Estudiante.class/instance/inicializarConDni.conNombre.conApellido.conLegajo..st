constructor
inicializarConDni: unDni conNombre: unNombre conApellido: unApellido conLegajo: unLegajo
	dni := unDni.
	nombre := unNombre.
	apellido := unApellido.
	legajo := unLegajo.
	universidades := OrderedCollection new. "Se inicia vacío por ser relación de agregación"