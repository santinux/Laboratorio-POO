as yet unclassified
generarInformacionContrato

	| informacion |
	informacion := 'Fecha: ' , fechaContrato asString, ' Nombre y teléfono: '
	               , cliente obtenerNombreYTelefonoCliente
	               , ' Nombre de servicio: '
	               , servicio obtenerNombreServicio.
	^ informacion