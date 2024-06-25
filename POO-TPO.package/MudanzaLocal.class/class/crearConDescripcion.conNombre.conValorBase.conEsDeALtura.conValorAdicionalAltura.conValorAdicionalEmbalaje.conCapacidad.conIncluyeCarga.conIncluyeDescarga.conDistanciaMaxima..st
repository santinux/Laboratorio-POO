as yet unclassified
crearConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conEsDeALtura: siEsDeAltura conValorAdicionalAltura: unValorAdicionalAltura conValorAdicionalEmbalaje: unValorAdicionalEmbalaje conCapacidad: unaCapacidad conIncluyeCarga: siIncluyeCarga conIncluyeDescarga: siIncluyeDescarga conDistanciaMaxima: unaDistanciaMaxima
	| temp |
	temp := self new.
	temp inicializarConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conEsDeALtura: siEsDeAltura conValorAdicionalAltura: unValorAdicionalAltura conValorAdicionalEmbalaje: unValorAdicionalEmbalaje conCapacidad: unaCapacidad conIncluyeCarga: siIncluyeCarga conIncluyeDescarga: siIncluyeDescarga conDistanciaMaxima: unaDistanciaMaxima.
	^ temp.