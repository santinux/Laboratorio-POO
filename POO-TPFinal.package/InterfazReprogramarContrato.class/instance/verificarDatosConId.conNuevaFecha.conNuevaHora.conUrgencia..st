as yet unclassified
verificarDatosConId: idContrato conNuevaFecha: unaNuevaFecha conNuevaHora: unaNuevaHora conUrgencia: esUrgente
	"Verifica que el ID sea un número válido"

	| numeroId textoFecha nuevaFecha textoHora nuevaHora textoUrgente respuesta |
	respuesta := true.
	idContrato ifNil: [
		self inform: 'El ID del contrato es obligatorio'.
		^ false ].

	[
	numeroId := idContrato getText asNumber.
	numeroId > 0 ifFalse: [ self error: 'ID inválido' ] ]
		on: Error
		do: [ :ex |
			self inform: 'El ID debe ser un número válido'.
			^ false ].

	textoFecha := unaNuevaFecha getText.

	textoFecha isEmpty ifTrue: [
		self inform: 'La fecha es obligatoria'.
		^ false ].

	[ nuevaFecha := Date fromString: textoFecha ]
		on: Error
		do: [ :ex |
			self inform:
				'Formato de fecha inválido. Use mm/dd/aa (ej: 12/25/24)'.
			^ false ].

	textoHora := unaNuevaHora getText.

	textoHora isEmpty ifTrue: [
		self inform: 'La hora es obligatoria'.
		^ false ].

	[ nuevaHora := Time fromString: textoHora ]
		on: Error
		do: [ :ex |
			self inform: 'Formato de hora inválido. Use hh:mm (ej: 14:30)'.
			^ false ].
	textoUrgente := esUrgente getText.

	textoUrgente isEmpty ifTrue: [
		self inform: 'El campo urgente es obligatorio'.
		^ false ].

	(textoUrgente = 'si' or: [ textoUrgente = 'no' ]) ifFalse: [
		self inform: 'El campo urgente debe ser "si" o "no"'.
		^ false ].

	^ respuesta