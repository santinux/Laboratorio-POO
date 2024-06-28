instance creation
crearConContratos: losContratos protectores: losProtectores
	"Singleton"

	uniqueInstance ifNil: [
		uniqueInstance := self new.
		uniqueInstance inicializarConContratos: losContratos
			                  protectores: losProtectores ].
	^ uniqueInstance