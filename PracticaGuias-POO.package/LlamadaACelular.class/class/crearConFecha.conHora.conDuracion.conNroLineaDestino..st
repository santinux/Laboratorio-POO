instance creation
crearConFecha: unaFecha conHora: unaHora conDuracion: unaDuracion conNroLineaDestino: unNroDestino
	| llamadita |
	llamadita := self new.
	llamadita inicializarConFecha: unaFecha conHora: unaHora conDuracion: unaDuracion conNroLineaDestino: unNroDestino.
	 "ValorCPP := (unaHora between: '20:00' and: '08:00') ifTrue: [ 0,22. ] ifFalse: [ 0,335 ]."
	ValorCPPNormal ifNil: [ self setValorCPPNormal. self setValorCPPReducido ].
	^ llamadita.