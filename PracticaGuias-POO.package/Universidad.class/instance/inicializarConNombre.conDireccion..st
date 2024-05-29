constructor
inicializarConNombre: unNombre conDireccion: unaDireccion
	nombre := unNombre.
	direccion := unaDireccion.
	estudiantes := OrderedCollection new. "Se inicia vacío por ser relación de agregación"