as yet unclassified
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora adicionalTrans: a
	"| pepe |
	pepe := super crearConCliente:  servicio:  listaElementos:  fechaAcordada:  horaAcordada: 
	adicionalTransporte := a.
	^ pepe"