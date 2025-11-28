as yet unclassified
renovarContratoGuardamuebles
| tablaG tablaGNombre tablaUsuario contratosG datosContratosG botonVolver idContrato unContrato botonBuscarContrato |
		super initialize .
      self removeAllMorphs.
		
	"Creo dos tablas para contrato Guardamuebles uno con el nombre de la tabla y otra con las columnas de datos de Guardamuebles"
	tablaGNombre := TablaContratos crearConEncabezados: #('Contratos Guardamuebles') ancho: 1400 	alto: 30.
	tablaG := TablaContratos crearConEncabezados: ContratoGuardamuebles  obtenerEncabezadoGuardamuebleCompleto 	ancho: 1400	alto: 30.
			
	"Obtengo los contratos de Guardamuebles con los de Mudanza"
	contratosG := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
	
	"Obtengo los datos de cada tipo "
	datosContratosG := contratosG collect: [ :contrato | contrato obtenerInformacionCompleta].
	tablaUsuario := TablaContratos crearConEncabezados: usuario obtenerDatosUsuario ancho: 1400 	alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"	
	tablaG agregarFilas: datosContratosG.
	
	"Abrir la tabla"

	self agregarMorphCentrado: tablaUsuario obtenerMorph conMargen:10.

	self agregarMorphCentrado: tablaGNombre obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaG obtenerMorph conMargen:10.
	
	"///////////////////////////////////////////////"
	"Obtenemos el contrato a travez de la ID"
	idContrato   := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Ingrese la Id del Contrato'.
	self agregarMorphCentrado: idContrato  conMargen: 10.
	
	botonBuscarContrato  := BotonAccion new label: 'Buscar Contrato'.
		botonBuscarContrato mouseAction: [ 
			|idTexto|
			idTexto :=idContrato getText asNumber .
			
	unContrato := contratosG  
    detect: [:contrato | contrato esContrato: idTexto ]
    ifNone: [nil].

	"Verifica si el contrato es nulo"	
	unContrato ifNotNil: [ self renovarContratoGuardamueblesEncontrado: unContrato ].
		
		 ] .           
	self agregarMorphCentrado: botonBuscarContrato conMargen: 10.


	
	"//////////////////////////////////////////"
	
	
	
		botonVolver := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonVolver mouseAction: [ self initialize ].
	self agregarMorphCentrado: botonVolver conMargen: 10.