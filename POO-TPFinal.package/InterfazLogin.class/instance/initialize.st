initialization
initialize

	super initialize.
	self titulo: 'Mudanzas-NQN'.
	campoDNI := RubTextFieldMorph new
		            extent: 275 @ 20;
		            ghostText: 'Ingrese su DNI'.
	self agregarMorphCentrado: campoDNI conMargen: 10.
	self openCenteredInWorld