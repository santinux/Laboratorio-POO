as yet unclassified
validarNuevoUsuario
	"Revisa que todos los campos estén completos y sean válidos"

	| camposObligatorios |
	camposObligatorios := OrderedCollection new
		                      add: campoNombre;
		                      add: campoApellido;
		                      add: campoDNI;
		                      add: campoContrasegna;
		                      add: campoTelefonoContacto;
		                      add: campoCalle;
		                      add: campoNumero;
		                      add: campoBarrio;
		                      yourself.

	(camposObligatorios allSatisfy: [ :campo | campo text isNotEmpty ])
		ifTrue: [ self inform: 'TODO' ]
		ifFalse: [ self inform: 'Debe completar los campos obligatorios' ]