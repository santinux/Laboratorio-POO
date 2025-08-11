as yet unclassified
renovar: unaFechaFin listaElementos: unaListaElementos
	"Se actualiza la fecha de fin del contrato y se almacena la fecha en la que se hace la renovacion"

	fechaFin := unaFechaFin.
	renovaciones add: Date today.
	listaElementos + unaListaElementos asString.