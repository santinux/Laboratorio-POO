as yet unclassified
esContratoDeLaSemana
	|resultado diferencia|

	diferencia := (Date today - fechaContrato) asDays abs.
	resultado := (diferencia <= 7).

	^ resultado.
