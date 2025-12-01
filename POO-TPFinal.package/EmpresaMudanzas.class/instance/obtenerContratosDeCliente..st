as yet unclassified
obtenerContratosDeCliente: unCliente

^ contratos select: [ :unContrato |
		                 unContrato tieneCliente: unCliente ].