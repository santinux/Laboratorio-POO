as yet unclassified
crearConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conEsDeALtura: siEsDeAltura conValorAdicionalAltura: unValorAdicionalAltura conValorAdicionalEmbalaje: unValorAdicionalEmbalaje conCapacidad: unaCapacidad conHaciaInterior: siHaciaInterior conDesdeInterior: siDesdeInterior conMercaderiaFragil: siMercaderiaFragil conValorAdicionalFragil: unValorAdicionalFragil conDistanciaAcordada: unaDistanciaAcordada conValorAdicionalPorDistancia: unValorAdicionalPorDistancia

	| temp |
	temp := self new.
	temp
		inicializarConDescripcion: unaDescripcion
		conNombre: unNombre
		conValorBase: unValorBase
		conEsDeALtura: siEsDeAltura
		conValorAdicionalAltura: unValorAdicionalAltura
		conValorAdicionalEmbalaje: unValorAdicionalEmbalaje
		conCapacidad: unaCapacidad
		conHaciaInterior: siHaciaInterior
		conDesdeInterior: siDesdeInterior
		conMercaderiaFragil: siMercaderiaFragil
		conValorAdicionalFragil: unValorAdicionalFragil
		conDistanciaAcordada: unaDistanciaAcordada
		conValorAdicionalPorDistancia: unValorAdicionalPorDistancia.
	^ temp