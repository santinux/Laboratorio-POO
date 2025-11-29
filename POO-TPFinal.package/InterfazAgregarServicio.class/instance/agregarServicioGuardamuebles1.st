Propios
agregarServicioGuardamuebles1
	"Limpia la interfaz actual y muestra el formulario para agregar servicio"
	
	| unNombre unaDescripcion unValorBase botonGuardarServicio |
	super initialize.
	self removeAllMorphs.
	self titulo: 'Agregar Nuevo Servicio Guardamuebles'.
	
	unNombre := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Nombre del servicio'.
	self agregarMorphCentrado: unNombre conMargen: 10.
	
	unaDescripcion := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Descripción del servicio'.
	self agregarMorphCentrado: unaDescripcion conMargen: 10.
	
unValorBase := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Valor base (ej: 50000)'.
	self agregarMorphCentrado: unValorBase conMargen: 10.
	
	self agregarServicioMudanzaLocal .
	
	botonGuardarServicio := BotonAccion new label: 'Guardar Servicio'.
	botonGuardarServicio mouseAction: [ 
	self guardarServicioConNombre: unNombre   descripcion: unaDescripcion  valor: unValorBase   
].
	self agregarMorphCentrado: botonGuardarServicio conMargen: 20.
	
	self agregarMorphCentrado: botonCancelarServicio conMargen: 10.