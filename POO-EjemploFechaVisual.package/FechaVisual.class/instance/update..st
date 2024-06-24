updating
update: unObjeto
	"Como el elemento FechaVisual actual contiene a los demás elementos visuales de esta
	aplicación, es el único que recibe el mensaje update cada vez que se produce un cambio en el
	modelo FechaModelo actual (referenciado por miFecha). El es el encargado de actualizar sus
	submorphs o vistas.
	Los métodos de la clase FechaModelo 'aCadenaDias', 'aCadenaCompleta' y 'aCadenaBarras'
	devuelven el valor de la fecha en distintos formatos"

	unObjeto isNil ifFalse: [
		fechaDias contents: unObjeto aCadenaDias.
		fechaComp contents: unObjeto aCadenaCompleta.
		fechaBarras contents: unObjeto aCadenaBarras ].