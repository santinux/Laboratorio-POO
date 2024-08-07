as yet unclassified
obtenerInformacion

	| informacion |
	informacion := super obtenerInformacion.
	informacion := informacion , ' Fecha acordada: ' , fechaAcordada asString
	               , ' Hora acordada: ' , horaAcordada asString.
	^ informacion