accessing
inicializarNavegador: unNavegador empresa: unaEmpresa usuario: unUsuario
	self initialize.
	navegador :=unNavegador.
	empresa:=unaEmpresa.
	usuario :=unUsuario .
	empresa addDependent: self.