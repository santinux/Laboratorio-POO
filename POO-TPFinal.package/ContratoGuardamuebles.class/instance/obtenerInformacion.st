as yet unclassified
obtenerInformacion
	| informacion |
	informacion := super obtenerInformacion.
	informacion := informacion + ' Fecha inicio: ' + fechaInicio + ' Fecha fin: ' + fechaFin.
	^ informacion.