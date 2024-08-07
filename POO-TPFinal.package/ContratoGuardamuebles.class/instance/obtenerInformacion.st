as yet unclassified
obtenerInformacion

	| informacion |
	informacion := super obtenerInformacion.
	informacion := informacion , ' Fecha inicio: ' , fechaInicio asString
	               , ' Fecha fin: ' , fechaFin asString.
	^ informacion