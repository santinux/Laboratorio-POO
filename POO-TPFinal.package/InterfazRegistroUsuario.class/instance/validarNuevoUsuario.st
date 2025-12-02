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
						  crearConNombre: campoNombre text asString
						  apellido: campoApellido text asString
						  nroDNI: campoDNI text asNumber
						  contrasegna: campoContrasegna text asString
						  telefonoContacto: campoTelefonoContacto text asNumber
						  direccion: (Direccion
								   crearConCalle: campoCalle text asString
								   numero: campoNumero text
								   piso:
								   (campoPiso
									    ifNotNil: [ campoPiso text asString ]
									    ifNil: [ '-' ])
								   dpto:
								   (campoDpto
									    ifNotNil: [ campoDpto text asString ]
									    ifNil: [ '-' ])
								   barrio: campoBarrio text asString))) ]
		ifFalse: [ self inform: 'Debe completar los campos obligatorios' ]