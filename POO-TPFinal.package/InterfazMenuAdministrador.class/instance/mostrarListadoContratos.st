as yet unclassified
mostrarListadoContratos
	"Muestra una tabla con los contratos"

	| interfazTablaPresenter |
	interfazTablaPresenter := TablaContratosPresenter new.
	interfazTablaPresenter model: empresa. "Le pasamos el Model"

	"Obtenemos el Morph construido y lo agregamos al navegador"
	self agregarVentana: interfazTablaPresenter build.