accessing
getValorCPPNormal
	"Inicializa la variable de clase"
	ValorCPPNormal ifNil: [ self setValorCPPNormal ].
	^ ValorCPPNormal.