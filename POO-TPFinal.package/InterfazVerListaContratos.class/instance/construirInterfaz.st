as yet unclassified
construirInterfaz
	"Obtengo los contratos del cliente"

	contratos := empresa obtenerContratosDeCliente: usuario.

	"Creo dos tablas para contrato Guardamuebles uno con el nombre de la tabla y otra con las columnas de datos de Guardamuebles"
	tablaGNombre := Tabla
		                crearConEncabezados: #( 'Contratos Guardamuebles' )
		                ancho: 1400
		                alto: 30.
	tablaG := Tabla
		          crearConEncabezados:
		          ContratoGuardamuebles obtenerEncabezado
		          ancho: 1400
		          alto: 30.

	"Creo dos tablas para contrato Mudanza uno con el nombre de la tabla y otra con las columnas de datos de Mudanza"
	tablaMNombre := Tabla
		                crearConEncabezados: #( 'Contratos Mudanzas' )
		                ancho: 1400
		                alto: 30.
	tablaM := Tabla
		          crearConEncabezados: ContratoMudanza obtenerEncabezado
		          ancho: 1400
		          alto: 30.

	"Separo los contratos de Guardamuebles con los de Mudanza"
	contratosG := contratos select: [ :c | c esGuardamuebles ].
	contratosM := contratos select: [ :c | c esMudanza ].

	"Obtengo los datos de cada tipo "
	datosContratosG := contratosG collect: [ :contrato |
		                   contrato obtenerInformacion ].
	datosContratosM := contratosM collect: [ :contrato |
		                   contrato obtenerInformacion ].
	tablaUsuario := Tabla
		                crearConEncabezados: usuario obtenerDatosCliente
		                ancho: 1400
		                alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"
	tablaM agregarFilas: datosContratosM.
	tablaG agregarFilas: datosContratosG.

	"Abrir la tabla"

	self agregarMorphIzquierda: tablaUsuario obtenerMorph conMargen: 10.

	self agregarMorphIzquierda: tablaGNombre obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaG obtenerMorph conMargen: 10.

	self agregarMorphIzquierda: tablaMNombre obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaM obtenerMorph conMargen: 10