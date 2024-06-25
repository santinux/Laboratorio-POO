as yet unclassified
inicializarConDescripcion: unaDescripcion conNombre: unNombre conValorBase: unValorBase conEsDeALtura: siEsDeAltura conValorAdicionalAltura: unValorAdicionalAltura conValorAdicionalEmbalaje: unValorAdicionalEmbalaje conCapacidad: unaCapacidad

	self
		inicializarConDescripcion: unaDescripcion
		conNombre: unNombre
		conValorBase: unValorBase.
	esDeAltura := siEsDeAltura.
	valorAdicionalAltura := unValorAdicionalAltura.
	valorAdicionalEmbalaje := unValorAdicionalEmbalaje.
	capacidad := unaCapacidad