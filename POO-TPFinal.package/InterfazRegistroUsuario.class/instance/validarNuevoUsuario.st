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
		ifTrue: [
			self inform: (empresa registrarCliente: (Cliente
					 crearConNombre: campoNombre text
					 apellido: campoApellido text
					 nroDNI: campoDNI text
					 contrasegna: campoContrasegna text
					 telefonoContacto: campoTelefonoContacto text
					 direccion: (Direccion
							  crearConCalle: campoCalle text
							  numero: campoNumero text
							  piso: (campoPiso ifNotNil: [ campoPiso text ] ifNil: [ '-' ])
							  dpto: (campoDpto ifNotNil: [ campoDpto text ] ifNil: [ '-' ])
							  barrio: campoBarrio text))).
							]
		ifFalse: [ self inform: 'Debe completar los campos obligatorios' ]