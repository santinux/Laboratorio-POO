as yet unclassified
inicializarNavegador: unNavegador empresa: unaEmpresa
	self initialize.
	navegador :=unNavegador.
	empresa:=unaEmpresa.
	empresa addDependent: self.