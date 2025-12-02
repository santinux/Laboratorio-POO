as yet unclassified
construirInterfaz
	"Obtenemos los contratos semanales"

	contratosSemanal := empresa generarListadoContratoSemanal.

	"Una tabla con la cabecera y otra con los datos de los contratos guardamuebles"
	tablaGNombre := Tabla
		                crearConEncabezados: #( 'Contratos Guardamuebles' )
		                ancho: 1400
		                alto: 30.
	tablaG := Tabla
		          crearConEncabezados:
		          ContratoGuardamuebles obtenerEncabezado
		          ancho: 1400
		          alto: 30.

	"Una tabla con la cabecera y otra con los datos de los contratos mudanzas"
	tablaMNombre := Tabla
		                crearConEncabezados: #( 'Contratos Mudanzas' )
		                ancho: 1400
		                alto: 30.
	tablaM := Tabla
		          crearConEncabezados: ContratoMudanza obtenerEncabezado
		          ancho: 1400
		          alto: 30.

	"Separamos los contratos de guardamuebles de los de mudanza"
	contratosG := contratosSemanal select: [ :c | c esGuardamuebles ].
	contratosM := contratosSemanal select: [ :c | c esMudanza ].

	"Obtenemos los datos de cada tipo"
	datosContratosG := contratosG collect: [ :contrato |
		                   contrato obtenerInformacion ].
	datosContratosM := contratosM collect: [ :contrato |
		                   contrato obtenerInformacion ].

	"Agregamos los datos de cada contrato a la tabla correspondiente"
	tablaM agregarFilas: datosContratosM.
	tablaG agregarFilas: datosContratosG.

	"Agregamos la tabla a la interfaz actual"
	self agregarMorphIzquierda: tablaGNombre obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaG obtenerMorph conMargen: 10.

	self agregarMorphIzquierda: tablaMNombre obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaM obtenerMorph conMargen: 10