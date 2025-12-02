as yet unclassified
construirInterfaz

	| botonGuardarReprogramacion idContrato unaNuevaFecha unaNuevaHora esUrgente |
	self removeAllMorphs.

	"Creo tablas para contrato Mudanza uno con el nombre de la tabla y otra con las columnas de datos de Mudanzas"
	tablaMNombre := Tabla
		                crearConEncabezados: #( 'Contratos Mudanza' )
		                ancho: 1400
		                alto: 30.
	tablaM := Tabla
		          crearConEncabezados: ContratoMudanza obtenerEncabezado
		          ancho: 1400
		          alto: 30.

	"Obtengo los contratos de Mudanza"
	contratosM := (empresa obtenerContratosDeCliente: usuario) select: [
		              :c | c esMudanza ].

	"Obtengo los datos de cada tipo "
	datosContratosM := contratosM collect: [ :contrato |
		                   contrato obtenerInformacion ].
	tablaUsuario := Tabla
		                crearConEncabezados: usuario obtenerDatosUsuario
		                ancho: 1400
		                alto: 30.

	"Agrego los datos de cada contrato a la tabla correspondiente"
	tablaM agregarFilas: datosContratosM.

	"Abrir la tabla"

	self agregarMorphIzquierda: tablaUsuario obtenerMorph conMargen: 10.

	self agregarMorphIzquierda: tablaMNombre obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaM obtenerMorph conMargen: 10.

	"Obtenemos el contrato a travez de la ID"
	idContrato := RubTextFieldMorph new
		              extent: 275 @ 20;
		              ghostText: 'Ingrese la Id del Contrato'.

	self agregarMorphCentrado: idContrato conMargen: 10.


	unaNuevaFecha := RubTextFieldMorph new
		                 extent: 275 @ 20;
		                 ghostText: 'Nueva Fecha de mudanza dd/mm/aa'.
	self agregarMorphCentrado: unaNuevaFecha conMargen: 10.

	unaNuevaHora := RubTextFieldMorph new
		                extent: 275 @ 20;
		                ghostText: 'Nueva Hora de mudanza'.
	self agregarMorphCentrado: unaNuevaHora conMargen: 10.

	esUrgente := RubTextFieldMorph new
		             extent: 275 @ 20;
		             ghostText: 'es urgente? true/false'.
	self agregarMorphCentrado: esUrgente conMargen: 10.

	botonGuardarReprogramacion := BotonAccion new label:
		                              'Guardar Reprogramacion'.
	botonGuardarReprogramacion mouseAction: [
		(self
			 verificarDatosConId: idContrato
			 conNuevaFecha: unaNuevaFecha
			 conNuevaHora: unaNuevaHora
			 conUrgencia: esUrgente) ifTrue: [
			| nuevaFecha nuevaHora urgente idTexto |
			idTexto := idContrato getText asNumber.
			"comvertir de texto a fecha dd/mm/yy"
			nuevaFecha := Date fromString: unaNuevaFecha getText.
			"Comvertir a texto y luego a hora "
			nuevaHora := Time fromString: unaNuevaHora getText.
			"Convertir booleano desde string 'true'/'false'"
			urgente := esUrgente getText = 'true'.
			self inform: (empresa
					 reprogramarContratoDeUsuario: usuario
					 conId: idTexto
					 nuevaFecha: nuevaFecha
					 nuevaHora: nuevaHora
					 urgente: urgente) ] ].
	self agregarMorphCentrado: botonGuardarReprogramacion conMargen: 10