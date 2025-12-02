as yet unclassified
verificarDatosConFechaInicio: unaFechaInicio conFechaFin:unaFechaFin
	"Verifica que las fechas sean validas y que fecha inicio es >= a fecha fin"
	"idContrato unaFecha unaListaElementos"
	| textoFechaFin textoFechaInicio fechaFin fechaInicio |
	textoFechaInicio := unaFechaInicio getText.
	
	textoFechaInicio isEmpty ifTrue: [
		self inform: 'La fecha inicio es obligatoria'.
		^ false
	].
	
	[fechaInicio := Date fromString: textoFechaInicio.]
		on: Error do: [:ex | 
			self inform: 'Formato de fecha inicio inválido. Use mm/dd/aa (ej: 12/25/24)'.
			^ false
		].
	
	textoFechaFin := unaFechaFin getText.
	
	textoFechaFin isEmpty ifTrue: [
		self inform: 'La fecha1 fin es obligatoria'.
		^ false
	].
	
	[fechaFin := Date fromString: textoFechaFin.]
		on: Error do: [:ex | 
			self inform: 'Formato de fecha fin inválido. Use mm/dd/aa (ej: 12/25/24)'.
			^ false
		].
	
	fechaInicio := Date fromString: textoFechaInicio.
	fechaFin := Date fromString: textoFechaFin.
	fechaFin <= fechaInicio  ifTrue:[
		self inform: 'La fecha inicio debe ser anterior a la fecha fin'.
		^ false
	].
	
^true 