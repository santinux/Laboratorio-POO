initialization
initialize
	"este método se ejecutará inmediatamente después del new"

	super initialize.

	"Se establece el color del elemento gráfico, y su posición en la pantalla, o sea el WORLD.
	La posición para este morph es la esquina superior izquierda del recuadro.
	El método 'extent' es para indicar el ancho y alto del recuadro"
	self color: Color blue.
	self position: 45 @ 45.
	self bounds: (self position extent: 350 @ 350).

	"Se crea una instancia del modelo, en este caso de FechaModelo, y se guarda una referencia a
	ella en el morph FechaVisual, de esta manera se produce la conexión entre la vista y su
	modelo."
	miFecha := FechaModelo nuevo: Date today.

	"Se crean los elementos gráficos (morphs) que se utilizarán para visualizar de distinta forma
	la fecha contenida en la variable miFecha que referencia al modelo"
	fechaComp := StringMorph new.
	fechaDias := StringMorph new.
	fechaBarras := StringMorph new.

	"Se crean 2 botones, que serán utilizados para solicitar el incremento y decremento de la fecha
	según una cantidad de días dada.
	El tercer botón botonCerrar responderá minimizando la ventana"
	botonInc := BotonAccionn new.
	botonDec := BotonAccionn new.
	botonCerrar := BotonAccionn new.

	"Se agregan los 5 elementos gráficos a FechaVisual, que actúa como elemento gráfico contenedor"
	self addMorph: fechaDias.
	self addMorph: fechaComp.
	self addMorph: fechaBarras.
	self addMorph: botonInc.
	self addMorph: botonDec.
	self addMorph: botonCerrar.

	"Se posicionan los elementos gráficos dentro del área de FechaVisual"
	origen := self innerBounds origin.
	fechaDias position: origen + (10 @ 10).
	fechaComp position: origen + (10 @ 30).
	fechaBarras position: origen + (10 @ 50).
	botonInc position: origen + (150 @ 12).
	botonDec position: botonInc position + (0 @ 22).
	botonCerrar position: botonDec position + (0 @ 25).
	botonInc label: 'INCREMENTAR'.
	botonDec label: 'DECREMENTAR'.
	botonCerrar label: 'CERRAR'.

	"Para que los cambios producidos en la instancia del modelo se reflejen en los elementos
	gráficos es necesario que los elementos gráficos se registren como dependientes del modelo.
	En este caso el único que se registra como dependiente es la instancia de FechaVisual.
	Luego cada vez que se produzca un cambio sobre miFecha, su único dependiente será avisado para
	que se produzca la actualización de la vista"
	miFecha addDependent: self.
	self update: miFecha.

	"Aqui se indica cual será la acción que se ejecutará cuando haya alguna acción del mouse sobre
	cada botón"
	botonInc mouseAction: [ miFecha incrementar: 10 ].
	botonDec mouseAction: [ miFecha decrementar: 2 ].
	botonCerrar mouseAction: [ self cerrar ]