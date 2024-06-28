accessing
uniqueInstance
	"Singleton sin parámetros (según el libro)"

	uniqueInstance ifNil: [ uniqueInstance := self new ].
	^ uniqueInstance