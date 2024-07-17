as yet unclassified
esContratoDeLaSemana
	|resultado diferencia|

	diferencia := (Date today - fechaFirma) asDays abs.
	resultado := (diferencia <= 7).

	^ resultado.
