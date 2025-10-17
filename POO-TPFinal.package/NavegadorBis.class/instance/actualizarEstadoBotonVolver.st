as yet unclassified
actualizarEstadoBotonVolver
	"Habilita o deshabilita el botón Volver. Necesitamos acceder al botón."
	
	| botonVolver |
	"Asumiendo que botonVolver es el único Morph en barraNavegacion"
	botonVolver := self barraNavegacion submorphs first. 
	
	"Si solo queda la interfaz inicial (tamaño = 1), se deshabilita."
	botonVolver enabled: (pilaNavegacion size > 1).