updating
update: unObjeto
contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacionCompleta].
tablaM reconstruirConDatos:  datosContratosM.