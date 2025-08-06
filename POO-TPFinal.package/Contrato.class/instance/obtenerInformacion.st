as yet unclassified
obtenerInformacion

	| informacion |
	informacion := 'ID Contrato: ' , idContrato asString
						  , ' Estado: '
	               , estado , ' Valor: ' , valor asString
	               , ' Fecha firma: ' , fechaFirma asString
	               , ' Tipo de servicio: ' , servicio nombre.
	^ informacion