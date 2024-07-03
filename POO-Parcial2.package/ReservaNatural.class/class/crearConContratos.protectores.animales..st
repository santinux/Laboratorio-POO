instance creation
crearConContratos: losContratos protectores: losProtectores animales: losAnimales
	"Singleton"

	uniqueInstance ifNil: [
		uniqueInstance := self new.
		uniqueInstance
			inicializarConContratos: losContratos
			protectores: losProtectores
			animales: losAnimales ].
	^ uniqueInstance