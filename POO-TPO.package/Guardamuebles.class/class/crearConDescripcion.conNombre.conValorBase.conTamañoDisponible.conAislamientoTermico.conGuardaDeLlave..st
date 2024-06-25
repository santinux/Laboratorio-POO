as yet unclassified
crearConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conTamañoDisponible: unTamañoDisponible conAislamientoTermico: tieneAislamientoTermico conGuardaDeLlave: tieneGuardaDeLlave
	| temp |
	temp := self new.
	temp inicializarConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conTamañoDisponible: unTamañoDisponible conAislamientoTermico: tieneAislamientoTermico conGuardaDeLlave: tieneGuardaDeLlave.
	^ temp.