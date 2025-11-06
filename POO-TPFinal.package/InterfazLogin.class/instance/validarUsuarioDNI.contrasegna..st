as yet unclassified
validarUsuarioDNI: unDNI contrasegna: unaContrasegna

	| unNroDNI |
	(unDNI text isNotEmpty) & (unaContrasegna text isNotEmpty)
		ifTrue: [
			unNroDNI := unDNI getText asNumber.
			usuario := empresa obtenerClienteConDNI: unNroDNI.
			usuario
				ifNotNil: [
					usuario contrasegna = unaContrasegna getText
						ifTrue: [
							navegador agregarVentana: (InterfazMenuUsuario
									 crearConNavegador: navegador
									 empresa: empresa
									 usuario: usuario) ]
						ifFalse: [ self inform: 'La contraseña es incorrecta' ] ]
				ifNil: [
				self inform: 'El DNI ingresado no corresponde a un cliente' ] ]
		ifFalse: [ self inform: 'No ha ingresado un número de DNI' ]