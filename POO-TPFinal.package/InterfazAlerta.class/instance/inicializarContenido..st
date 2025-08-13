accessing
inicializarContenido: unContenido

	contenido := StringMorph new
		             contents: unContenido;
		             font:
			             (LogicalFont
				              familyName: 'Source Sans Pro'
				              pointSize: 12).
	self agregarMorphCentrado: contenido conMargen: 20