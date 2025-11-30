initialization
renderizar
|tablaUsuario idContrato unaFecha unaListaElementos botonGuardarReprogramacion respuesta |
		super initialize .
      self removeAllMorphs.
		respuesta:=''.
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
	self titulo: 'Renovar Contrato'.
	idContrato   := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Ingrese la Id del Contrato'.
	self agregarMorphCentrado: idContrato  conMargen: 10.
	
	
	unaFecha  := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Nueva Fecha dd/mm/aa'.
	self agregarMorphCentrado: unaFecha conMargen: 10.
	
	unaListaElementos := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Elementos a agregar'.
	self agregarMorphCentrado: unaListaElementos conMargen: 10.


	botonGuardarReprogramacion  := BotonAccion new label: 'Guardar Renovacion'.
	botonGuardarReprogramacion mouseAction: [ 
		|idTexto textoFecha nuevaFecha listaElementos|
			idTexto :=idContrato getText asNumber .
			textoFecha := unaFecha getText.
			nuevaFecha := Date fromString:textoFecha.
			listaElementos := unaListaElementos getText.
	self inform:(empresa  renovarContratoDeUsuario2:usuario conId: idTexto fechaFin: nuevaFecha listaElementos: listaElementos)    
].
	self agregarMorphCentrado: botonGuardarReprogramacion conMargen: 10. 
		
