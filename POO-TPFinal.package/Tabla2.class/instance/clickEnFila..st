mouse events
clickEnFila: unItem
	" Sobrescribir en subclases para manejar clicks "

	Transcript
		show: ('Click en: ' , unItem asString);
		cr