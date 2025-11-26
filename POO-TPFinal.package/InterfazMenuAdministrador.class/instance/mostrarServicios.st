as yet unclassified
mostrarServicios
	| servicios tablaS tablaServicio datosServicios botonCancelarServicio |
	super initialize .
self removeAllMorphs.
	"Obtengo los contratos semanales"
	servicios := empresa getColServicio  .
			
	"Creo dos tablas para contrato Mudanza uno con el nombre de la tabla y otra con las columnas de datos de Mudanza"
	tablaServicio := TablaContratos crearConEncabezados: #('Servicios') 	ancho: 1400	alto: 30.
	tablaS := TablaContratos crearConEncabezados: #('Nombre' 'Descripcion' 'Valor Base') 	ancho: 1400	alto: 30.

	
	"Obtengo los datos de cada tipo "
	
	datosServicios:= servicios collect: [ :servicio | servicio obtenerInformacion  ].

	"Agrego los datos de cada contrato a la tabla correspondiente"			
	tablaS agregarFilas: datosServicios.
	
	"Abrir la tabla"

	self agregarMorphCentrado: tablaServicio obtenerMorph conMargen:10.
	self agregarMorphCentrado: tablaS obtenerMorph conMargen:10.
	
	botonCancelarServicio := BotonAccion new 
		label: 'Volver';
		color: Color orange.
	botonCancelarServicio mouseAction: [ self initialize ].
	self agregarMorphCentrado: botonCancelarServicio conMargen: 10.