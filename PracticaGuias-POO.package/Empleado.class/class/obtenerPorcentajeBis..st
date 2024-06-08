accessing
obtenerPorcentajeBis: agnosAntiguedad
	"Según los años que lleve trabajando se retorna el porcentaje correspondiente"
	| porcentaje claves clavesFiltradas mayorClave |
	"Obtener las claves del Dictionary"
	claves := TablaAntiguedad keys asSortedCollection.
	"Obtener la mayor de las keys"
	clavesFiltradas := claves select: [ :clave | clave <= agnosAntiguedad ].
	mayorClave := clavesFiltradas isEmpty ifTrue: [ 0 ] ifFalse: [ clavesFiltradas last ].
	porcentaje := TablaAntiguedad at: mayorClave.
	^ porcentaje.