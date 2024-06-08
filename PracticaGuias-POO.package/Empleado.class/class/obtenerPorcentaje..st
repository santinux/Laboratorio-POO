accessing
obtenerPorcentaje: agnosAntiguedad
	"Según los años que lleve trabajando se retorna el porcentaje correspondiente"
	| mayorClave |
	mayorClave := 0.
	TablaAntiguedad associationsDo: [ :assoc |
		(assoc key <= agnosAntiguedad and: [ assoc key > mayorClave ]) ifTrue: [
			mayorClave := assoc key
			].
		].
	^ TablaAntiguedad at: mayorClave.