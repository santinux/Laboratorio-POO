as yet unclassified
validarUsuario: unCampoDNI

	| unNroDNI |
	unCampoDNI text isNotEmpty
		ifTrue: [
			unNroDNI := unCampoDNI getText asNumber.
			usuario := empresa obtenerClienteConDNI: unNroDNI.
			usuario
				ifNotNil: [
					navegador agregarVentana: (InterfazMenuUsuario
							 crearConNavegador: navegador
							 empresa: empresa
							 usuario: usuario) ]
				ifNil: [ self inform: 'El DNI ingresado no corresponde a un cliente' ] ]
		ifFalse: [ self inform: 'No ha ingresado un número de DNI' ]