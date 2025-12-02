Servicio Mudanza Internacional
agregarServicioMudanzaInternacional
	"adicionalAduana adicionalTransporte seguroInternacional"
	| unAdicionalAduana unAdicionalTransporte unSeguroInternacional botonGuardar |
	
	self titulo: 'Datos Mudanza Interacional'.	

	"Campos numéricos"
	unAdicionalAduana := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Adicional por aduana'.
	self agregarMorphCentrado: unAdicionalAduana conMargen: 10.
	
	unAdicionalTransporte := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Adicional por transporte'.
	self agregarMorphCentrado: unAdicionalTransporte conMargen: 10.
	
	"Campo booleano"
	unSeguroInternacional := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Seguro internacional? true/false'.
	self agregarMorphCentrado: unSeguroInternacional conMargen: 10.
	
	botonGuardar := BotonAccion new label: 'Guardar'.
	botonGuardar mouseAction: [ 
		(self verificarDatosMudanzaInternacional: unAdicionalAduana conAdicionalTransporte: unAdicionalTransporte conSeguroInternacional: unSeguroInternacional) ifTrue: [ 
			| adicionalAduana adicionalTransporte seguroInternacional unServicio |
			
			adicionalAduana := unAdicionalAduana getText asNumber.
			adicionalTransporte := unAdicionalTransporte getText asNumber.
			seguroInternacional := unSeguroInternacional getText = 'true'.
			
			"1:nombre 2:descripcion 3:valorBase 4:trabajo en altura 5:adicional altura 6:adicional embalaje 7:capacidad"
			unServicio :=MudanzaInternacional 
							crearConDescripcion: (coleccionDatos at:2) 
							nombre:(coleccionDatos at:1)  
							valorBase:(coleccionDatos at:3)  
							trabajoEnAltura: (coleccionDatos at:4) 
							adicionalAltura:(coleccionDatos at:5)  
							adicionalEmbalaje:(coleccionDatos at:6)  
							capacidad:(coleccionDatos at:7)  
							adicionalAduana:adicionalAduana   
							adicionalTransporte:adicionalTransporte  
							seguroInternacional:seguroInternacional .
				
			self inform: (empresa agregarServicio: unServicio) .
			navegador volver .
		] 
	].
	
	self agregarMorphCentrado: botonGuardar conMargen: 20.