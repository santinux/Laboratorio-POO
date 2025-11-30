as yet unclassified
reprogramarContratoConFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente
	| reprogramable |
noReprogramado ifTrue: [ 
	reprogramable := self esReprogramable .        
   reprogramable ifFalse:[ 
								esUrgente ifTrue: [
        						reprogramable := true.
        						valor := valor * (1.2).
    								]
		].

	reprogramable  ifTrue: [
        fechaAcordada  := unaNuevaFecha.
        horaAcordada  := unaNuevaHora.
        noReprogramado :=false. 
    		].
     ].