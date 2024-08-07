as yet unclassified
obtenerInformacion
	| informacion |
	informacion := super obtenerInformacion.
	informacion := informacion + ' Fecha acordada: ' + fechaAcordada + ' Hora acordada: ' + horaAcordada.
	^ informacion