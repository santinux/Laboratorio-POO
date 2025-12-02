Servicio Mudanza
agregarServicioMudanzaTipo: unTipo
	"muestra el formulario para agregar los datos específicos de servicio mudanza"
	" adicionalEmbalaje adicionalAltura trabajoEnAltura capacidad"
	| unTrabajoEnAltura unAdicionalAltura unAdicionalEmbalaje unaCapacidad botonContinuar |
	
	self titulo: 'Datos Mudanza'.
	
	unTrabajoEnAltura := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Es un trabajo en altura true/false'.
	self agregarMorphCentrado: unTrabajoEnAltura conMargen: 10.
	
	unAdicionalAltura := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Valor adicional por altura (0 si no es trabajo de altura)'.
	self agregarMorphCentrado: unAdicionalAltura conMargen: 10.
	
	unAdicionalEmbalaje := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Valor adicional por embalaje'.
	self agregarMorphCentrado: unAdicionalEmbalaje conMargen: 10.
	
	"Campo para capacidad (número mayor a 0)"
	unaCapacidad := RubTextFieldMorph new
		extent: 275 @ 20;
		ghostText: 'Capacidad en kg (ej: 1000)'.
	self agregarMorphCentrado: unaCapacidad conMargen: 10.

	botonContinuar := BotonAccion new label: 'Continuar'.
	botonContinuar mouseAction: [ 
		(self verificarDatosMudanza: unTrabajoEnAltura conAdicionalAltura: unAdicionalAltura conAdicionalEmbalaje: unAdicionalEmbalaje conCapacidad: unaCapacidad) ifTrue: [ 
			coleccionDatos add: (unTrabajoEnAltura getText= 'true').
			coleccionDatos add: (unAdicionalAltura getText asNumber).
			coleccionDatos add: (unAdicionalEmbalaje getText asNumber).
			coleccionDatos add: (unaCapacidad getText asNumber).
				"1:nombre 2:descripcion 3:valorBase 4:trabajo en altura 5:adicional altura 6:adicional embalaje 7:capacidad"
			unTipo =2 ifTrue: [self agregarServicioMudanzaLocal  ].
			unTipo =3 ifTrue: [self agregarServicioMudanzaNacional  ].	
			unTipo =4 ifTrue: [self agregarServicioMudanzaInternacional ].
		] 
	].
	
	self agregarMorphCentrado: botonContinuar conMargen: 20.