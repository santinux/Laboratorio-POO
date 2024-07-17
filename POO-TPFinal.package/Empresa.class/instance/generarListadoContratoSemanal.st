as yet unclassified
generarListadoContratoSemanal
|colContratoSemanal|

colContratoSemanal := OrderedCollection new.

contratos do: [:unContrato|(unContrato esContratoDeLaSemana)
    ifTrue: [colContratoSemanal add: unContrato generarInformacionContrato ]  ].
^colContratoSemanal.