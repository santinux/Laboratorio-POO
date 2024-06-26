as yet unclassified
mover: tMov
	| distancia |
	distancia := super mover: tMov.
	distancia := (velocidad * tMov).
	^ distancia