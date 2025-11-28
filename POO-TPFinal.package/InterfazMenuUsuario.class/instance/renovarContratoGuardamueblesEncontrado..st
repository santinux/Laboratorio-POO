as yet unclassified
"protocol: #'as yet unclassified'"

renovarContratoGuardamueblesEncontrado:unContrato
| tablaG tablaGNombre tablaUsuario datosContratosG botonVolver unaFecha unaListaElementos botonGuardarReprogramacion|
		super initialize .
      self removeAllMorphs.
		
	"Creo dos tablas para contrato Guardamuebles uno con el nombre de la tabla y otra con las columnas de datos de Guardamuebles"
	tablaGNombre := TablaContratos crearConEncabezados: #('Contrato a Renovar') ancho: 1400 	alto: 30.
	tablaG := TablaContratos crearConEncabezados: ContratoGuardamuebles  obtenerEncabezadoGuardamuebleCompleto 	ancho: 1400	alto: 30.
	
	"Obtengo los datos del contrato "
	datosContratosG  := OrderedCollection with: unContrato obtenerInformacionCompleta. 
	tablaUsuario := TablaContratos crearConEncabezados: usuario obtenerDatosUsuario ancho: 1400 	alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"	
	tablaG agregarFilas: datosContratosG.
	
	"Abrir la tabla"

	self agregarMorphCentrado: tablaUsuario obtenerMorph conMargen:10.

	self agregarMorphCentrado: tablaGNombre obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaG obtenerMorph conMargen:10.
	
	"///////////////////////////////////////////////"
	"Obtenemos el contrato a travez de la ID"
	self titulo: 'Renovar Contrato'.
	
	unaFecha  := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Nueva Fecha dd/mm/aa'.
	self agregarMorphCentrado: unaFecha conMargen: 10.
	
	unaListaElementos := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Elementos a agregar'.
	self agregarMorphCentrado: unaListaElementos conMargen: 10.


	botonGuardarReprogramacion  := BotonAccion new label: 'Guardar Reprogramacion'.
	botonGuardarReprogramacion mouseAction: [ 
	self guardarReprogramacionConContrato:unContrato conFecha: unaFecha conLista: unaListaElementos    
].
	self agregarMorphCentrado: botonGuardarReprogramacion conMargen: 10. 
	"//////////////////////////////////////////"
	
	
	
		botonVolver := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonVolver mouseAction: [ self initialize ].
	self agregarMorphCentrado: botonVolver conMargen: 10.