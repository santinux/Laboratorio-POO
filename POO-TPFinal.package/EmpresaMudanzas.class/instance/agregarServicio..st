Propios
agregarServicio:unServicio
	unServicio  setId: (self ultimoIdServicio  asNumber + 1).
	servicios add:unServicio.
	self changed .
	^ 'Servicio agregado' 

