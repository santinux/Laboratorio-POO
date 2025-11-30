updating
update: unObjeto

"Actualizo los datos de contratos guardamuebles"
contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esMudanza ].
datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion].
tablaM reconstruirConDatos:  datosContratosM.

"Actualizo los datos de contratos mudanza"
contratosG := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esGuardamuebles ].
datosContratosG := contratosG collect: [ :contrato | contrato obtenerInformacion].
tablaG reconstruirConDatos:  datosContratosG.