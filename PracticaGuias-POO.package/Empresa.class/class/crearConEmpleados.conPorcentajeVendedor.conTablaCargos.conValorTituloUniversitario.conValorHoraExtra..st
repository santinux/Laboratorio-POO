instance creation
crearConEmpleados: unaColEmpleados conPorcentajeVendedor: unPorcentajeVendedor conTablaCargos: unaTablaCargos conValorTituloUniversitario: unValorTituloUniversitario conValorHoraExtra: unValorHoraExtra
	| empresita |
	empresita := self new.
	empresita inicializarConEmpleados: unaColEmpleados conPorcentajeVendedor: unPorcentajeVendedor conTablaCargos: unaTablaCargos conValorTituloUniversitario: unValorTituloUniversitario conValorHoraExtra: unValorHoraExtra.
	^ empresita.