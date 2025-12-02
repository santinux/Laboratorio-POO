Servicio Guardamuebles
agregarServicioGuardamuebles
	"muestra el formulario para agregar los datos especirficos de servicio guardamuebles"
	" tamañoDisponible aislamientoTermico guardaDeLlave"
	| unTamaño unAislamiento unGuardaLlave botonGuardar |
	self titulo: 'Datos Guardamuebles'.
	
	unTamaño := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Tamaño Disponible'.
	self agregarMorphCentrado: unTamaño conMargen: 10.
	
	unAislamiento := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Tiene aislamiento true/false'.
	self agregarMorphCentrado: unAislamiento conMargen: 10.
	
unGuardaLlave := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Guarda llave true/false'.
	self agregarMorphCentrado: unGuardaLlave conMargen: 10.
	
	botonGuardar := BotonAccion new label: 'Guardar'.
	botonGuardar mouseAction: [ 
	(self verificarDatosGuardamueble: unTamaño conDescripcion: unAislamiento conValor: unGuardaLlave ) ifTrue: [ 
		|tieneAislamiento tieneGuardaLlave tamaño nuevoServicio|
		tamaño:= unTamaño getText .
		"Convertir booleano desde string 'true'/'false'"
		tieneAislamiento := (unAislamiento getText) = 'true'.
		"Convertir booleano desde string 'true'/'false'"
		tieneGuardaLlave := (unGuardaLlave getText) = 'true'.
		nuevoServicio:=Guardamuebles 
					crearConDescripcion: (coleccionDatos at:2) 
					nombre: (coleccionDatos at:1) 
					valorBase: (coleccionDatos at:3) 
					tamagnoDisponible: tamaño 
					aislamientoTermico: tieneAislamiento  
					guardaDeLlave: tieneGuardaLlave.
				self inform:(empresa agregarServicio: nuevoServicio) .
				navegador volver .
		
		] ].
	self agregarMorphCentrado: botonGuardar conMargen: 20.
	
	