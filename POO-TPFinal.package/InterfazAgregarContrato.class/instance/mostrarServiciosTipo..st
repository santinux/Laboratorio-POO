as yet unclassified
mostrarServiciosTipo: unNroTipo

	| servicios tablaServicio tablaS datosServicios |
	servicios := empresa servicios.
	unNroTipo = 1 ifTrue: [
		tablaServicio := Tabla
			                 crearConEncabezados:
			                 #( 'Servicios Guardamuebles' )
			                 ancho: 1400
			                 alto: 30.
		tablaS := Tabla
			          crearConEncabezados:
			          #( 'Id' 'Nombre' 'Descripcion' 'Valor Base' )
			          ancho: 1400
			          alto: 30.
		serviciosTipo := servicios select: [ :servicioB |
			                 servicioB esGuardamuebles ].
		datosServicios := serviciosTipo collect: [ :servicioB |
			                  servicioB obtenerInformacion ].
		tablaS agregarFilas: datosServicios ].



	unNroTipo = 2 ifTrue: [
		tablaServicio := Tabla
			                 crearConEncabezados:
			                 #( 'Servicios Mudanza Local' )
			                 ancho: 1400
			                 alto: 30.
		tablaS := Tabla
			          crearConEncabezados:
			          #( 'Id' 'Nombre' 'Descripcion' 'Valor Base' )
			          ancho: 1400
			          alto: 30.
		serviciosTipo := servicios select: [ :servicioB | servicioB esLocal ].
		datosServicios := serviciosTipo collect: [ :servicioB |
			                  servicioB obtenerInformacion ].
		tablaS agregarFilas: datosServicios ].
	unNroTipo = 3 ifTrue: [
		tablaServicio := Tabla
			                 crearConEncabezados:
			                 #( 'Servicios Mudanza Nacional' )
			                 ancho: 1400
			                 alto: 30.
		tablaS := Tabla
			          crearConEncabezados:
			          #( 'Id' 'Nombre' 'Descripcion' 'Valor Base' )
			          ancho: 1400
			          alto: 30.
		serviciosTipo := servicios select: [ :servicioB |
			                 servicio esNacional ].
		datosServicios := serviciosTipo collect: [ :servicioB |
			                  servicioB obtenerInformacion ].
		tablaS agregarFilas: datosServicios ].
	unNroTipo = 4 ifTrue: [
		tablaServicio := Tabla
			                 crearConEncabezados:
			                 #( 'Servicios Mudanza Internacional' )
			                 ancho: 1400
			                 alto: 30.
		tablaS := Tabla
			          crearConEncabezados:
			          #( 'Id' 'Nombre' 'Descripcion' 'Valor Base' )
			          ancho: 1400
			          alto: 30.
		serviciosTipo := servicios select: [ :servicioB |
			                 servicioB esInternacional ].
		datosServicios := serviciosTipo collect: [ :servicioB |
			                  servicioB obtenerInformacion ].
		tablaS agregarFilas: datosServicios ].

	"Obtengo los datos de cada tipo "
	"Abrir la tabla"
	self agregarMorphIzquierda: tablaServicio obtenerMorph conMargen: 10.
	self agregarMorphIzquierda: tablaS obtenerMorph conMargen: 10