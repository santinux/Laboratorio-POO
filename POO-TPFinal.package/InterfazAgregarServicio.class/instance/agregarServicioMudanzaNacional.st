as yet unclassified
agregarServicioMudanzaNacional

	| unDesdeInterior unHaciaInterior unMercaderiaFragil unAdicionalFragil unDistanciaAcordada unAdicionalDistancia botonGuardar |
	self titulo: 'Datos Mudanza Nacional'.

	"Campos booleanos"
	unDesdeInterior := RubTextFieldMorph new
		                   extent: 275 @ 20;
		                   ghostText: 'Desde interior? true/false'.
	self agregarMorphCentrado: unDesdeInterior conMargen: 10.

	unHaciaInterior := RubTextFieldMorph new
		                   extent: 275 @ 20;
		                   ghostText: 'Hacia interior? true/false'.
	self agregarMorphCentrado: unHaciaInterior conMargen: 10.

	unMercaderiaFragil := RubTextFieldMorph new
		                      extent: 275 @ 20;
		                      ghostText: 'Mercadería frágil? true/false'.
	self agregarMorphCentrado: unMercaderiaFragil conMargen: 10.

	"Campos numéricos"
	unAdicionalFragil := RubTextFieldMorph new
		                     extent: 275 @ 20;
		                     ghostText:
			                     'Adicional por frágil (0 si no es frágil)'.
	self agregarMorphCentrado: unAdicionalFragil conMargen: 10.

	unDistanciaAcordada := RubTextFieldMorph new
		                       extent: 275 @ 20;
		                       ghostText:
			                       'Distancia acordada en km (ej: 500)'.
	self agregarMorphCentrado: unDistanciaAcordada conMargen: 10.

	unAdicionalDistancia := RubTextFieldMorph new
		                        extent: 275 @ 20;
		                        ghostText: 'Adicional por distancia'.
	self agregarMorphCentrado: unAdicionalDistancia conMargen: 10.

	botonGuardar := BotonAccion new label: 'Guardar'.
	botonGuardar mouseAction: [
		(self
			 verificarDatosMudanzaNacional: unDesdeInterior
			 conHaciaInterior: unHaciaInterior
			 conMercaderiaFragil: unMercaderiaFragil
			 conAdicionalFragil: unAdicionalFragil
			 conDistanciaAcordada: unDistanciaAcordada
			 conAdicionalDistancia: unAdicionalDistancia) ifTrue: [
			| desdeInterior haciaInterior mercaderiaFragil adicionalFragil distanciaAcordada adicionalDistancia unServicio |
			desdeInterior := unDesdeInterior getText = 'true'.
			haciaInterior := unHaciaInterior getText = 'true'.
			mercaderiaFragil := unMercaderiaFragil getText = 'true'.
			adicionalFragil := unAdicionalFragil getText asNumber.
			distanciaAcordada := unDistanciaAcordada getText asNumber.
			adicionalDistancia := unAdicionalDistancia getText asNumber.

			"1:nombre 2:descripcion 3:valorBase 4:trabajo en altura 5:adicional altura 6:adicional embalaje 7:capacidad"
			unServicio := ServicioMudanzaNacional
				              crearConDescripcion: (coleccionDatos at: 2)
				              nombre: (coleccionDatos at: 1)
				              valorBase: (coleccionDatos at: 3)
				              trabajoEnAltura: (coleccionDatos at: 4)
				              adicionalAltura: (coleccionDatos at: 5)
				              adicionalEmbalaje: (coleccionDatos at: 6)
				              capacidad: (coleccionDatos at: 7)
				              desdeInterior: desdeInterior
				              haciaInterior: haciaInterior
				              mercaderiaFragil: mercaderiaFragil
				              adicionalFragil: adicionalFragil
				              distanciaAcordada: distanciaAcordada
				              adicionalDistancia: adicionalDistancia.

			self inform: (empresa agregarServicio: unServicio).
			navegador volver ] ].

	self agregarMorphCentrado: botonGuardar conMargen: 20