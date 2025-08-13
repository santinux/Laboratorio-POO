as yet unclassified
inicializarPilaNavegacion

	pilaNavegacion := PilaNavegacion new.
	morphContenido ifNotNil: [ pilaNavegacion apilar: morphContenido ] ifNil: [ nil ]