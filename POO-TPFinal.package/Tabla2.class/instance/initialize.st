initialization
initialize
	super initialize.
	columnas := OrderedCollection new.
	datos := OrderedCollection new.
	filas := OrderedCollection new.
	alturaFila := 30.
	self crearMorph.