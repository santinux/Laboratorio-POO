as yet unclassified
historialVolver: unHistorial

	| unaInterfaz |
	unaInterfaz := unHistorial pop.
	unaInterfaz ifNotNil: [ unaInterfaz openCenteredInWorld ] ifNil: [ InterfazAlertaError new contenido: 'Nada para volver' ]