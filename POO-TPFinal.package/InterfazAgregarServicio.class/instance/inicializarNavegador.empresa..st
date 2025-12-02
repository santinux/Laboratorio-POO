accessing
inicializarNavegador: unNavegador empresa: unaEmpresa 
	self initialize.
	navegador :=unNavegador.
	empresa:=unaEmpresa.
	coleccionDatos := OrderedCollection new.
	empresa addDependent: self.