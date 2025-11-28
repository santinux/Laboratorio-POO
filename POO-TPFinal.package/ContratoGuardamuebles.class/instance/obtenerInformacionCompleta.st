as yet unclassified
obtenerInformacionCompleta
    | informacion ultimaFechaR |
    informacion := self obtenerInformacion.
	ultimaFechaR := renovaciones joinUsing: ', '.
	
	ultimaFechaR  := renovaciones isEmpty 
    ifFalse: [renovaciones last]
    ifTrue: [''].
	
    informacion
        add: listaElementos  asString;
        add: ultimaFechaR  asString.

    ^ informacion