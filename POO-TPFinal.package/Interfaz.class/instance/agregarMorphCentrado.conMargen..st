as yet unclassified
agregarMorphCentrado: unMorph conMargen: unMargen

	"self submorphs
		ifNotEmpty:  [
			unMorph position:
				(self width - unMorph width) / 2
				@ (self lastSubmorph bottom + unMargen) ]
		ifEmpty: [
		unMorph position: self width - unMorph width / 2 @ unMargen ].
	self addMorphBack: unMorph
	
gregarMorphCentrado: unMorph conMargen: unMargen"

	"self submorphs
		ifNotEmpty: [
			unMorph position:
				(self width - unMorph width) / 2  ""Cambiar el - por /""
				@ (self lastSubmorph bottom + unMargen) ]
		ifEmpty: [
			unMorph position: (self width - unMorph width) / 2 @ unMargen ].  ""Aquí también""
	self addMorphBack: unMorph"
	| posicionX |
	
	"Si el morph es más ancho que el contenedor, lo alineamos al borde izquierdo"
	unMorph width > self width
		ifTrue: [ self width:unMorph width ].
	posicionX := unMorph width > self width
		ifTrue: [ 0 ]
		ifFalse: [ (self width - unMorph width) / 2 ].
	
	self submorphs
		ifNotEmpty: [
			unMorph position: posicionX @ (self lastSubmorph bottom + unMargen) ]
		ifEmpty: [
			unMorph position: posicionX @ unMargen ].
	self addMorphBack: unMorph