as yet unclassified
construirTabla
	"Construye la tabla completa con encabezados y contenido"

	contenedor := Morph new
		              color: Color white;
		              borderWidth: 2;
		              borderColor: Color black;
		              extent: ancho @ alto;
		              layoutPolicy: TableLayout new;
		              listDirection: #bottomToTop;
		              cellInset: 0;
		              hResizing: #spaceFill;
		              vResizing: #shrinkWrap.

	self agregarEncabezados