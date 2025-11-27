as yet unclassified
verListaContratos
	| contratos tablaM tablaG tablaGNombre tablaMNombre tablaUsuario contratosG contratosM datosContratosG datosContratosM botonVolver  |
		super initialize .
      self removeAllMorphs.
	
	"Obtengo los contratos del cliente"
	contratos := empresa obtenerContratosDeCliente: usuario .
	
	"Creo dos tablas para contrato Guardamuebles uno con el nombre de la tabla y otra con las columnas de datos de Guardamuebles"
	tablaGNombre := TablaContratos crearConEncabezados: #('Contratos Guardamuebles') ancho: 1400 	alto: 30.
	tablaG := TablaContratos crearConEncabezados: ContratoGuardamuebles  obtenerEncabezadoGuardamueble 	ancho: 1400	alto: 30.
			
	"Creo dos tablas para contrato Mudanza uno con el nombre de la tabla y otra con las columnas de datos de Mudanza"
	tablaMNombre := TablaContratos crearConEncabezados: #('Contratos Mudanzas') 	ancho: 1400	alto: 30.
	tablaM := TablaContratos crearConEncabezados: ContratoMudanza   obtenerEncabezadoMudanza 	ancho: 1400	alto: 30.
			
	"Separo los contratos de Guardamuebles con los de Mudanza"
	contratosG := contratos select: [ :c | c esGuardamuebles ].
	contratosM:= contratos select: [ :c | c esMudanza ].
	
	"Obtengo los datos de cada tipo "
	datosContratosG := contratosG collect: [ :contrato | contrato obtenerInformacion  ].
	datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion  ].
	tablaUsuario := TablaContratos crearConEncabezados: usuario obtenerDatosUsuario ancho: 1400 	alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"			
	tablaM agregarFilas: datosContratosM.
	tablaG agregarFilas: datosContratosG.
	
	"Abrir la tabla"

	self agregarMorphCentrado: tablaUsuario obtenerMorph conMargen:10.

	self agregarMorphCentrado: tablaGNombre obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaG obtenerMorph conMargen:10.

	self agregarMorphCentrado: tablaMNombre obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaM obtenerMorph conMargen:10.
	
		botonVolver := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonVolver mouseAction: [ self initialize ].
	self agregarMorphCentrado: botonVolver conMargen: 10.