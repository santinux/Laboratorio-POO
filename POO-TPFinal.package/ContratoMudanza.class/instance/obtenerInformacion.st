as yet unclassified
obtenerInformacion

	| informacion |
	informacion := super obtenerInformacion.

	informacion
		add: fechaAcordada asString;
		add: horaAcordada asString.
		
	^ informacion