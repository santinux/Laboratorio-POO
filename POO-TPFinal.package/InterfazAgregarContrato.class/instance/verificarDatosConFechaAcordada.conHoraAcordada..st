as yet unclassified
verificarDatosConFechaAcordada:unaFechaAcordada conHoraAcordada:unaHoraAcordada
	"Verifica que el ID sea un número válido"
	"idContrato unaNuevaFecha unaNuevaHora esUrgente w"
	|textoFecha fechaAcordada textoHora horaAcordada|
	
	textoFecha := unaFechaAcordada getText.
	
	textoFecha isEmpty ifTrue: [
		self inform: 'La fecha es obligatoria'.
		^ false
	].
	
	[fechaAcordada := Date fromString: textoFecha.]
		on: Error do: [:ex | 
			self inform: 'Formato de fecha inválido. Use mm/dd/aa (ej: 12/25/24)'.
			^ false
		].
	
	fechaAcordada := Date fromString: textoFecha.
		(fechaAcordada< Date today) ifTrue: [
		self inform: 'La fecha Acordada debe ser posterior al dia de hoy'.
		^ false
	].
	textoHora := unaHoraAcordada getText.
	
	textoHora isEmpty ifTrue: [
		self inform: 'La hora es obligatoria'.
		^ false
	].
	
	[horaAcordada := Time fromString: textoHora.]
		on: Error do: [:ex | 
			self inform: 'Formato de hora inválido. Use hh:mm (ej: 14:30)'.
			^ false
		].
	
^true