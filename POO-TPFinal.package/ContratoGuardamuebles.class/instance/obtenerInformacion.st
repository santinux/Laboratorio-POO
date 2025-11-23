as yet unclassified
obtenerInformacion

    | informacion |
    informacion := super obtenerInformacion.

    informacion
        add: fechaInicio asString;
        add: fechaFin asString.

    ^ informacion