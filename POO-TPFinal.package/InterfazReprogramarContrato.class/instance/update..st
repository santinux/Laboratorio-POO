updating
update: unObjeto
contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion].
tablaM reconstruirConDatos:  datosContratosM.