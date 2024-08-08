accessing
contenido: unContenido
	"Configura el color del texto del botón a negro"

	self label: unContenido.
	"Acceder al TextMorph dentro del botón"
	contenido := self submorphs detect: [ :m | m isKindOf: StringMorph ] ifNone: [ nil ].

	"Cambiar el color del texto"
	contenido color: Color black