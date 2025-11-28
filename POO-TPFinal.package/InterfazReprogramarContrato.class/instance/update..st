updating
update: unObjeto
contratosG := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
datosContratosG := contratosG collect: [ :contrato | contrato obtenerInformacionCompleta].
tablaG reconstruirConDatos:  datosContratosG.