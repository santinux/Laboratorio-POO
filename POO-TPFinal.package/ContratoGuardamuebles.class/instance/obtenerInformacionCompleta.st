as yet unclassified
obtenerInformacionCompleta

    | informacion fechasR |
    informacion := self obtenerInformacion.
	fechasR := renovaciones joinUsing: ', '.
    informacion
        add: listaElementos  asString;
        add: fechasR  asString.

    ^ informacion