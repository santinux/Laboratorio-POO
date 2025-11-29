updating
update: unObjeto
contratosG := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
datosContratosG := contratosG collect: [ :contrato | contrato obtenerInformacion].
tablaG reconstruirConDatos:  datosContratosG.

contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esMudanza  ].
datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion].
tablaM reconstruirConDatos:  datosContratosM.