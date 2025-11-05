accessing
tablaContratos
	"Accessor perezoso: crea la tabla solo si es necesario y la devuelve."

	tablaContratos ifNil: [
		tablaContratos := self newTable
			                  showColumnHeaders;
			                  items: [
				                  self model generarListadoContratoSemanal ];
			                  addColumn: (SpStringTableColumn new
					                   title: 'Fecha';
					                   evaluated: #fecha);
			                  addColumn: (SpStringTableColumn new
					                   title: 'Peso Carga';
					                   evaluated: '');
			                  addColumn: (SpTableColumn new
					                   title: 'Destino';
					                   evaluated: #lugarDestino);
			                  yourself.
		"Conecta la tabla para que reaccione a cambios en el modelo"
		self connectPresenters ].
	^ tablaContratos