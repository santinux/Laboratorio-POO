instance creation
crearConNombre: unNombre velocidad: unaVelocidad pelaje: unPelaje
	| mamifero |
	mamifero := self new.
	mamifero inicializarConNombre: unNombre velocidad: unaVelocidad pelaje: unPelaje.
	^ mamifero