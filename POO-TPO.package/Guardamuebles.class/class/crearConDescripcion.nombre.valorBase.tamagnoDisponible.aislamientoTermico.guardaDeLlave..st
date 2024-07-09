instance creation
crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase tamagnoDisponible: unTamagnoDisponible aislamientoTermico: unAislamientoTermico guardaDeLlave: unGuardaDeLlave
	| unGuardamuebles |
	unGuardamuebles := self crearConDescripcion: unaDescripcion nombre: unNombre valorBase: unValorBase.
	unGuardamuebles inicializarTamagnoDisponible: unTamagnoDisponible aislamientoTermico: unAislamientoTermico guardaDeLlave: unGuardaDeLlave.
	^ unGuardamuebles