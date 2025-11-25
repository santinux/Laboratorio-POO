as yet unclassified
generarInformacionContrato
"NO IMPLEMENTADO"
	| informacion |
	informacion := 'Fecha: ' , fechaFirma asString
	               , ' Nombre y teléfono: '
	               , cliente obtenerNombreYTelefonoCliente
	               , ' Nombre de servicio: '
	               , servicio obtenerNombreServicio.
	^ informacion