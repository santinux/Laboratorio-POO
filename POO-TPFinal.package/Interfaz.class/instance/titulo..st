accessing
titulo: unTitulo

	titulo := StringMorph new
		          contents: unTitulo;
		          font:
			          (LogicalFont familyName: 'Source Sans Pro' pointSize: 14).
	self agregarMorphCentrado: titulo conMargen: 0