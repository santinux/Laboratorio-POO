as yet unclassified
obtenerContratosDeCliente: unCliente
	| unosContratos |
	unosContratos := contratos select: [ :unContrato | unContrato tieneCliente: unCliente ].
	^ unosContratos 