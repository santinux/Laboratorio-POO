as yet unclassified
validarNuevoUsuario
	"Revisa que todos los campos estén completos y sean válidos"

	| camposObligatorios campoVacio |
	camposObligatorios := Array new
		                      with: campoNombre;
		                      with: campoApellido;
		                      with: campoDNI;
		                      with: campoContrasegna;
		                      with: campoTelefonoContacto;
		                      with: campoCalle;
		                      with: campoNumero;
		                      with: campoBarrio.

	campoVacio := camposObligatorios
		              detect: [ :campo | campo text isEmpty ]
		              ifNone: [ nil ]