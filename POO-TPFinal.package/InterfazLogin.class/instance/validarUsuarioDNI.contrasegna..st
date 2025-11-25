as yet unclassified
validarUsuarioDNI: unCampoDNI contrasegna: unCampoContrasegna

	| unNroDNI |
	unCampoDNI text isNotEmpty & unCampoContrasegna text isNotEmpty
		ifTrue: [
			unNroDNI := unCampoDNI getText asNumber.
			usuario := empresa obtenerClienteConDNI: unNroDNI.
			usuario
				ifNotNil: [
					usuario contrasegna = unCampoContrasegna getText asString
						ifTrue: [
							navegador agregarVentana: (InterfazMenuUsuario
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario) ]
						ifFalse: [ self inform: 'La contraseña es incorrecta' ] ]
				ifNil: [
				self inform: 'El DNI ingresado no corresponde a un cliente' ] ]
		ifFalse: [ self inform: 'No ha ingresado un número de DNI' ]