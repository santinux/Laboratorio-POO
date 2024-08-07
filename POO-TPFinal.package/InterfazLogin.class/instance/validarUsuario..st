as yet unclassified
validarUsuario: unCampoDNI

	| unNroDNI |
	unCampoDNI text isNotEmpty
		ifTrue: [
			unNroDNI := unCampoDNI getText asNumber.
			usuario := empresa obtenerClienteConDNI: unNroDNI.
			usuario
				ifNotNil: [
					self delete.
					InterfazMenuUsuario crearConEmpresa: empresa usuario: usuario ]
				ifNil: [
					InterfazAlertaError new contenido:
						'El DNI ingresado no corresponde a un cliente' ] ]
		ifFalse: [
			InterfazAlertaError new contenido:
				'No ha ingresado un número de DNI' ]