initialization
inicializarCliente: unCliente servicio: unServicio listaElementos: unaListaElementos

	cliente := unCliente.
	servicio := unServicio.
	listaElementos := unaListaElementos.
	estado := 'activo'.
	valor := servicio obtenerValorFinal.
	fechaFirma := Date today