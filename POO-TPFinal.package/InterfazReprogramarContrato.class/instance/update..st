updating
update: unObjeto
contratosM := (empresa obtenerContratosDeCliente: usuario) select: [ :c | c esMudanza ].
datosContratosM := contratosM collect: [ :contrato | contrato obtenerInformacion].
tablaM reconstruirConDatos:  datosContratosM.