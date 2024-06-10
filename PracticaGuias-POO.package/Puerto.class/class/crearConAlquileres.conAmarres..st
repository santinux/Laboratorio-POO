instance creation
crearConAlquileres: losAlquileres conAmarres: losAmarres
	| puertito |
	puertito := self new.
	puertito inicialilzarConAlquileres: losAlquileres conAmarres: losAmarres.
	^ puertito .