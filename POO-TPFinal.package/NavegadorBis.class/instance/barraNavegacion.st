accessing
barraNavegacion
    "Accessor perezoso para barraNavegacion. Reemplaza a inicializarBarraNavegacion."

    barraNavegacion isNil 
        ifTrue: [
            | botonVolver panel |
            panel := PanelMorph new color: Color lightGray.
            
            "El panel no necesita un extent fijo si se usa un layout, pero aquí lo omitiremos por simplicidad."
            "Si el panel debe tener un layout interno (ej: TableLayout), lo configuraríamos aquí."

            botonVolver := SimpleButtonMorph new
                label: '← Volver';
                color: Color gray;
                borderColor: Color gray;
                extent: 80 @ 20; 
                useRoundedCorners.

            "En lugar de position: fija, usemos un layout simple si es posible, o addMorphCentered:"
            panel addMorph: botonVolver. 
            
            "Conexión de la acción"
            botonVolver on: #mouseUp send: #goBack to: self.

            barraNavegacion := panel.
        ].
        
    ^ barraNavegacion