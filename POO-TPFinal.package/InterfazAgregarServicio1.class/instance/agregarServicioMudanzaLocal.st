as yet unclassified
agregarServicioMudanzaLocal
	| unIncluyeCarga unIncluyeDescarga unaDistanciaMaxima botonGuardar |
	
	self titulo: 'Datos Mudanza Local'.
	

	unIncluyeCarga := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: '¿Incluye carga? true/false'.
	self agregarMorphCentrado: unIncluyeCarga conMargen: 10.
	

	unIncluyeDescarga := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: '¿Incluye descarga? true/false'.
	self agregarMorphCentrado: unIncluyeDescarga conMargen: 10.
	

	unaDistanciaMaxima := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Distancia máxima en km (ej: 50)'.
	self agregarMorphCentrado: unaDistanciaMaxima conMargen: 10.
	
	botonGuardar := BotonAccion new label: 'Guardar'.
	botonGuardar mouseAction: [ 
		(self verificarDatosMudanzaLocal: unIncluyeCarga conIncluyeDescarga: unIncluyeDescarga conDistanciaMaxima: unaDistanciaMaxima) ifTrue: [ 
			|incluyeCarga incluyeDescarga distanciaMaxima unServicio|
			incluyeCarga:=unIncluyeCarga getText = 'true'.
			incluyeDescarga:=unIncluyeDescarga getText = 'true'.
			 distanciaMaxima:=unaDistanciaMaxima getText asNumber.
						"1:nombre 2:descripcion 3:valorBase 4:trabajo en altura 5:adicional altura 6:adicional embalaje 7:capacidad"
				unServicio:=MudanzaLocal 
								crearConDescripcion: (coleccionDatos at:2)  
								nombre:(coleccionDatos at:1)  
								valorBase:(coleccionDatos at:3)  
								trabajoEnAltura:(coleccionDatos at:4)  
								adicionalAltura:(coleccionDatos at:5)
			  				   adicionalEmbalaje:(coleccionDatos at:6)  
								capacidad:(coleccionDatos at:7)  
								incluyeCarga:incluyeCarga  
								incluyeDescarga:incluyeDescarga  
								distanciaMaxima:distanciaMaxima.
			self inform: (empresa agregarServicio: unServicio ).
			navegador volver . 
		] 
	].
	
	self agregarMorphCentrado: botonGuardar conMargen: 20.