instance creation
crearConBaseDeDatos

	| unaEmpresaMudanzas direccionCompartida colClientes colServicios colContratos |
	direccionCompartida := Direccion
		                       crearConCalle: 'Av. Pres. Figueroa Alcorta'
		                       numero: 7597
		                       piso: '-'
		                       dpto: '-'
		                       barrio: 'Belgrano'.

	colClientes := OrderedCollection new
		               add: (Cliente
				                crearConNombre: 'Franco'
				                apellido: 'Armani' nroDNI: 10000000
				                telefonoContacto: 1000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Jonatan'
				                apellido: 'Maidana' nroDNI: 11000000
				                telefonoContacto: 2000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Marcelo'
				                apellido: 'Saracchi' nroDNI: 12000000
				                telefonoContacto: 3000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Jorge'
				                apellido: 'Moreira' nroDNI: 13000000
				                telefonoContacto: 4000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Bruno'
				                apellido: 'Zuculini' nroDNI: 14000000
				                telefonoContacto: 5000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Luciano'
				                apellido: 'Lollo' nroDNI: 15000000
				                telefonoContacto: 6000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Rodrigo'
				                apellido: 'Mora' nroDNI: 16000000
				                telefonoContacto: 7000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Juan'
				                apellido: 'Quintero' nroDNI: 17000000
				                telefonoContacto: 8000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Marcelo'
				                apellido: 'Larrondo' nroDNI: 18000000
				                telefonoContacto: 9000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Gonzalo'
				                apellido: 'Martínez' nroDNI: 19000000
				                telefonoContacto: 10000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Nicolás'
				                apellido: 'De La Cruz' nroDNI: 20000000
				                telefonoContacto: 11000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Benjamín'
				                apellido: 'Rollheiser' nroDNI: 21000000
				                telefonoContacto: 12000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Santiago'
				                apellido: 'Sosa' nroDNI: 22000000
				                telefonoContacto: 13000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Germán'
				                apellido: 'Lux' nroDNI: 23000000
				                telefonoContacto: 14000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Exequiel'
				                apellido: 'Palacios' nroDNI:  24000000
				                telefonoContacto: 15000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Ariel'
				                apellido: 'Rojas' nroDNI: 25000000
				                telefonoContacto: 16000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Carlos'
				                apellido: 'Auzqui' nroDNI: 26000000
				                telefonoContacto: 17000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Camilo'
				                apellido: 'Mayada'  nroDNI: 27000000
				                telefonoContacto: 18000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Rafael'
				                apellido: 'Borré' nroDNI: 28000000
				                telefonoContacto: 19000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Milton'
				                apellido: 'Casco' nroDNI: 29000000
				                telefonoContacto: 20000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Iván'
				                apellido: 'Rossi' nroDNI: 30000000
				                telefonoContacto: 21000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Javier'
				                apellido: 'Pinola' nroDNI: 31000000
				                telefonoContacto: 22000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Leonardo'
				                apellido: 'Ponzio' nroDNI: 32000000
				                telefonoContacto: 23000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Enzo'
				                apellido: 'Pérez' nroDNI: 33000000
				                telefonoContacto: 24000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Enrique'
				                apellido: 'Bologna' nroDNI: 34000000
				                telefonoContacto: 25000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Ignacio'
				                apellido: 'Fernández' nroDNI: 35000000
				                telefonoContacto: 26000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Lucas'
				                apellido: 'Pratto' nroDNI: 36000000
				                telefonoContacto: 27000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Lucas'
				                apellido: 'Martínez Quarta' nroDNI: 37000000
				                telefonoContacto: 28000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Gonzalo'
				                apellido: 'Montiel' nroDNI: 38000000
				                telefonoContacto: 29000000
				                direccion: direccionCompartida);
		               add: (Cliente
				                crearConNombre: 'Ignacio'
				                apellido: 'Scocco' nroDNI: 39000000
				                telefonoContacto: 30000000
				                direccion: direccionCompartida);
		               yourself.

	colServicios := OrderedCollection new
		                add: (Guardamuebles
				                 crearConDescripcion:
					                 'El más económico de nuestros depósitos'
				                 nombre: 'Guardamuebles Base'
				                 valorBase: 10000
				                 tamagnoDisponible: '10 metros cúbicos'
				                 aislamientoTermico: false
				                 guardaDeLlave: false);
		                add: (Guardamuebles
				                 crearConDescripcion: 'El depósito más solicitado'
				                 nombre: 'Guardamuebles Estándar'
				                 valorBase: 20000
				                 tamagnoDisponible: '20 metros cúbicos'
				                 aislamientoTermico: true
				                 guardaDeLlave: true);
		                add: (Guardamuebles
				                 crearConDescripcion:
					                 'El más grande de los depósitos'
				                 nombre: 'Guardamuebles Premium'
				                 valorBase: 30000
				                 tamagnoDisponible: '30 metros cúbicos'
				                 aislamientoTermico: true
				                 guardaDeLlave: true);
		                "Ejemplo para cuando se requiera agregar un servicio""add: (Guardamuebles
										crearConDescripcion:
											'Nuestra mayor y más nueva incorporación'
										nombre: 'Guardamuebles Premium XL'
										valorBase: 40000
										tamagnoDisponible: '40 metros cúbicos'
										aislamientoTermico: true
										guardaDeLlave: true);""Servicios de mudanzas locales"
		                add: (MudanzaLocal
				                 crearConDescripcion:
					                 'El más económico de los servicios de mudanza dentro de la ciudad'
				                 nombre: 'Mudanza Base en Neuquén'
				                 valorBase: 10000
				                 trabajoEnAltura: false
				                 adicionalAltura: 0
				                 adicionalEmbalaje: 1000
				                 capacidad: '10 metros cúbicos'
				                 incluyeCarga: false
				                 incluyeDescarga: false
				                 distanciaMaxima: '10 kilómetros');
		                add: (MudanzaLocal
				                 crearConDescripcion:
					                 'La más conveniente para un edificio en la ciudad'
				                 nombre: 'Mudanza Estándar en Neuquén'
				                 valorBase: 20000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 2000
				                 capacidad: '20 metros cúbicos'
				                 incluyeCarga: true
				                 incluyeDescarga: true
				                 distanciaMaxima: '10 kilómetros');
		                add: (MudanzaLocal
				                 crearConDescripcion:
					                 'Nuestro mejor servicio dentro de la ciudad'
				                 nombre: 'Mudanza Premium en Neuquén'
				                 valorBase: 30000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 3000
				                 capacidad: '20 metros cúbicos'
				                 incluyeCarga: true
				                 incluyeDescarga: true
				                 distanciaMaxima: '10 kilómetros');
		                "Servicios de mudanzas nacionales"add:
			                (MudanzaNacional
				                 crearConDescripcion:
					                 'El más económico de los servicios de mudanza desde el interior del país'
				                 nombre: 'Mudanza Base Desde el Interior'
				                 valorBase: 50000
				                 trabajoEnAltura: false
				                 adicionalAltura: 0
				                 adicionalEmbalaje: 5000
				                 capacidad: '60 metros cúbicos'
				                 desdeInterior: true
				                 haciaInterior: false
				                 mercaderiaFragil: false
				                 adicionalFragil: 0
				                 distanciaAcordada: 1500
				                 adicionalDistancia: 5000);
		                add: (MudanzaNacional
				                 crearConDescripcion:
					                 'El mejor de los servicios de mudanza desde el interior del país'
				                 nombre: 'Mudanza Premium Desde el Interior'
				                 valorBase: 60000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 5000
				                 capacidad: '60 metros cúbicos'
				                 desdeInterior: true
				                 haciaInterior: false
				                 mercaderiaFragil: true
				                 adicionalFragil: 5000
				                 distanciaAcordada: 1500
				                 adicionalDistancia: 5000);
		                add: (MudanzaNacional
				                 crearConDescripcion:
					                 'El más económico de los servicios de mudanza hacia el interior del país'
				                 nombre: 'Mudanza Base Hacia el Interior'
				                 valorBase: 50000
				                 trabajoEnAltura: false
				                 adicionalAltura: 0
				                 adicionalEmbalaje: 5000
				                 capacidad: '60 metros cúbicos'
				                 desdeInterior: false
				                 haciaInterior: true
				                 mercaderiaFragil: false
				                 adicionalFragil: 0
				                 distanciaAcordada: 1500
				                 adicionalDistancia: 5000);
		                add: (MudanzaNacional
				                 crearConDescripcion:
					                 'El mejor de los servicios de mudanza hacia el interior del país'
				                 nombre: 'Mudanza Premium Hacia el Interior'
				                 valorBase: 50000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 5000
				                 capacidad: '60 metros cúbicos'
				                 desdeInterior: false
				                 haciaInterior: true
				                 mercaderiaFragil: true
				                 adicionalFragil: 5000
				                 distanciaAcordada: 1500
				                 adicionalDistancia: 5000);
		                "Servicios de mudanzas internacionales"add:
			                (MudanzaInternacional
				                 crearConDescripcion:
					                 'El más económico de los servicios de mudanza desde el extranjero'
				                 nombre: 'Mudanza Base Desde el Extranjero'
				                 valorBase: 100000
				                 trabajoEnAltura: false
				                 adicionalAltura: 0
				                 adicionalEmbalaje: 7000
				                 capacidad: '40 metros cúbicos'
				                 adicionalAduana: 0
				                 adicionalTransporte: 0
				                 seguroInternacional: false);
		                add: (MudanzaInternacional
				                 crearConDescripcion:
					                 'El mejor de los servicios de mudanza desde el extranjero'
				                 nombre: 'Mudanza Premium Desde Extranjero'
				                 valorBase: 150000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 7000
				                 capacidad: '80 metros cúbicos'
				                 adicionalAduana: 0
				                 adicionalTransporte: 0
				                 seguroInternacional: true);
		                add: (MudanzaInternacional
				                 crearConDescripcion:
					                 'El más económico de los servicios de mudanza hacia el extranjero'
				                 nombre: 'Mudanza Base Hacia el Extranjero'
				                 valorBase: 100000
				                 trabajoEnAltura: false
				                 adicionalAltura: 0
				                 adicionalEmbalaje: 7000
				                 capacidad: '40 metros cúbicos'
				                 adicionalAduana: 0
				                 adicionalTransporte: 0
				                 seguroInternacional: false);
		                add: (MudanzaInternacional
				                 crearConDescripcion:
					                 'El mejor de los servicios de mudanza hacia el extranjero'
				                 nombre: 'Mudanza Premium Hacia Extranjero'
				                 valorBase: 150000
				                 trabajoEnAltura: true
				                 adicionalAltura: 5000
				                 adicionalEmbalaje: 7000
				                 capacidad: '80 metros cúbicos'
				                 adicionalAduana: 0
				                 adicionalTransporte: 0
				                 seguroInternacional: true);
		                yourself.

	"Servicios de guardamuebles"

	colContratos := OrderedCollection new
		                add: (ContratoGuardamuebles
				                 crearConCliente: (colClientes at: 1)
				                 servicio: (colServicios at: 1)
				                 listaElementos: ''
				                 fechaInicio: (Date today addDays: -10)
				                 fechaFin: (Date today addDays: 10));
		                add: (ContratoGuardamuebles
				                 crearConCliente: (colClientes at: 2)
				                 servicio: (colServicios at: 2)
				                 listaElementos: ''
				                 fechaInicio: (Date today addDays: -20)
				                 fechaFin: (Date today addDays: 20));
		                add: (ContratoGuardamuebles
				                 crearConCliente: (colClientes at: 3)
				                 servicio: (colServicios at: 3)
				                 listaElementos: ''
				                 fechaInicio: (Date today addDays: -30)
				                 fechaFin: (Date today addDays: 30));
		                "Contratos de mudanzas locales"add:
			                (ContratoMudanza
				                 crearConCliente: (colClientes at: 4)
				                 servicio: (colServicios at: 4)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -40)
				                 horaAcordada: '08:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 5)
				                 servicio: (colServicios at: 5)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -50)
				                 horaAcordada: '09:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 6)
				                 servicio: (colServicios at: 6)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -60)
				                 horaAcordada: '10:00:00' asTime);
		                "Contratos de mudanzas nacionales"add:
			                (ContratoMudanza
				                 crearConCliente: (colClientes at: 7)
				                 servicio: (colServicios at: 7)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -70)
				                 horaAcordada: '11:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 8)
				                 servicio: (colServicios at: 8)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -80)
				                 horaAcordada: '12:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 9)
				                 servicio: (colServicios at: 9)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -90)
				                 horaAcordada: '13:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 10)
				                 servicio: (colServicios at: 10)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -100)
				                 horaAcordada: '14:00:00' asTime);
		                "Contratos de mudanzas internacionales"add:
			                (ContratoMudanza
				                 crearConCliente: (colClientes at: 11)
				                 servicio: (colServicios at: 11)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -110)
				                 horaAcordada: '15:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 12)
				                 servicio: (colServicios at: 12)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -120)
				                 horaAcordada: '16:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 13)
				                 servicio: (colServicios at: 13)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -130)
				                 horaAcordada: '17:00:00' asTime);
		                add: (ContratoMudanza
				                 crearConCliente: (colClientes at: 14)
				                 servicio: (colServicios at: 14)
				                 listaElementos: ''
				                 fechaAcordada: (Date today addDays: -140)
				                 horaAcordada: '18:00:00' asTime);
		                yourself.

	"Contratos de guardamuebles"

	unaEmpresaMudanzas := self new.
	unaEmpresaMudanzas
		inicializarRazonSocial: 'MudanzasNQN'
		paginaWeb: 'www.mudanzasnqn.com.ar'
		telefonoContacto: 2994490300
		direccion: (Direccion
				 crearConCalle: 'Buenos Aires'
				 numero: 1400
				 piso: '-'
				 dpto: '-'
				 barrio: 'UNCo')
		servicios: colServicios
		clientes: colClientes
		contratos: colContratos.

	^ unaEmpresaMudanzas