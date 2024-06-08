deAplicacion
obtenerAdicionalCargo: laEmpresa
	| adicional |
	adicional := laEmpresa obtenerValorCargo: cargo.
	^ adicional.