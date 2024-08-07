as yet unclassified
obtenerClienteConDNI: unNroDNI
	^ clientes detect: [ :unCliente | unCliente tieneDNI: unNroDNI ] ifNone: nil.