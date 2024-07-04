instance creation
crearConContratos: losContratos protectores: losProtectores animales: losAnimales
	"Singleton"

	uniqueInstance ifNil: [
		uniqueInstance := self new.
		uniqueInstance
			inicializarContratos: losContratos
			protectores: losProtectores
			animales: losAnimales ].
	^ uniqueInstance