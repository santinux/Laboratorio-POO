as yet unclassified
reprogramarContratoConFecha: unaNuevaFecha nuevaHora: unaNuevaHora urgente: esUrgente
	| reprogramable |
noReprogramado ifTrue: [ 
        reprogramable := false.
    esUrgente ifTrue: [
        reprogramable := true.
        valor := valor * (1.2).
    ]ifFalse:[reprogramable := self esReprogramable ].

reprogramable  ifTrue: [
        fechaAcordada  := unaNuevaFecha.
        horaAcordada  := unaNuevaHora.
        noReprogramado :=false. 
    ].
     ].