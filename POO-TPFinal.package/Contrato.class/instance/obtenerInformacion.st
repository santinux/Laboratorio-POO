as yet unclassified
obtenerInformacion

	| informacion |
	informacion := OrderedCollection new
		               add: idContrato asString;
		               add: (self esActivo
		               ifTrue: [ 'Activo' ]
		               ifFalse: [ 'Inactivo' ]);
		               add: valor asString;
		               add: fechaFirma asString;
		               add: servicio nombre;
		               yourself.

	^ informacion