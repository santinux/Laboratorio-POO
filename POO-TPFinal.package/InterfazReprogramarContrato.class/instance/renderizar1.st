initialization
renderizar1
|botonGuardarReprogramacion|
		super initialize .
      self removeAllMorphs.
		
	"Creo tablas para contrato Mudanza uno con el nombre de la tabla y otra con las columnas de datos de Mudanza"
	tablaMNombre := TablaContratos crearConEncabezados: #('Contratos Mudanza') ancho: 1400 	alto: 30.
	tablaM := TablaContratos crearConEncabezados: ContratoMudanza   obtenerEncabezadoMudanza  	ancho: 1400	alto: 30.
			
	"Obtengo los contratos de Mudanza"
	contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esMudanza ].
	
	"Obtengo los datos de cada tipo "
	datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion].
	tablaUsuario := TablaContratos crearConEncabezados: usuario obtenerDatosUsuario ancho: 1400 	alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"	
	tablaM agregarFilas: datosContratosM.
	
	"Abrir la tabla"

	self agregarMorphCentrado: tablaUsuario obtenerMorph conMargen:10.

	self agregarMorphCentrado: tablaMNombre obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaM obtenerMorph conMargen:10.
	
	"///////////////////////////////////////////////"
	self titulo: 'Reprogramar Contrato'.
	"Obtenemos el contrato a travez de la ID"
	idContrato   := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Ingrese la Id del Contrato'.
		
	self agregarMorphCentrado: idContrato  conMargen: 10.
	
	
	unaNuevaFecha  := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Nueva Fecha de mudanza dd/mm/aa'.
	self agregarMorphCentrado: unaNuevaFecha conMargen: 10.
	
	unaNuevaHora  := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Nueva Hora de mudanza'.
	self agregarMorphCentrado: unaNuevaHora  conMargen: 10.
	
		esUrgente  := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'es urgente? true/false'.
	self agregarMorphCentrado: esUrgente   conMargen: 10.

	botonGuardarReprogramacion  := BotonAccion new label: 'Guardar Reprogramacion'.
	botonGuardarReprogramacion mouseAction: [ 
		|nuevaFecha nuevaHora urgente textoUrgente |
			idTexto :=idContrato getText asNumber .
			"comvertir de texto a fecha dd/mm/yy"
			nuevaFecha := Date fromString:unaNuevaFecha  getText.
			"Comvertir a texto y luego a hora "
			nuevaHora := Time fromString: unaNuevaHora  getText .
			
				"Convertir booleano desde string 'true'/'false'"
				textoUrgente := (esUrgente getText).
				urgente := textoUrgente = 'true'.
	self inform:(empresa  reprogramarContratoDeUsuario:usuario conId: idTexto  nuevaFecha: nuevaFecha nuevaHora: nuevaHora urgente: urgente)].
	self agregarMorphCentrado: botonGuardarReprogramacion conMargen: 10. 	