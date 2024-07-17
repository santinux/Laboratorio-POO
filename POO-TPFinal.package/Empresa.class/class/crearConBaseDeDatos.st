instance creation
crearConBaseDeDatos
	| unaEmpresaMudanzas colClientes colServicios |

colClientes := OrderedCollection new
	add: (Cliente crearConNombre: 'Franco' apellido: 'Armani' telefonoContacto: 1000000 direccion: nil);
	add: (Cliente crearConNombre: 'Jonatan' apellido: 'Maidana' telefonoContacto: 2000000 direccion: nil);
	add: (Cliente crearConNombre: 'Marcelo' apellido: 'Saracchi' telefonoContacto: 3000000 direccion: nil);
	add: (Cliente crearConNombre: 'Jorge' apellido: 'Moreira' telefonoContacto: 4000000 direccion: nil);
	add: (Cliente crearConNombre: 'Bruno' apellido: 'Zuculini' telefonoContacto: 5000000 direccion: nil);
	add: (Cliente crearConNombre: 'Luciano' apellido: 'Lollo' telefonoContacto: 6000000 direccion: nil);
	add: (Cliente crearConNombre: 'Rodrigo' apellido: 'Mora' telefonoContacto: 7000000 direccion: nil);
	add: (Cliente crearConNombre: 'Juan' apellido: 'Quintero' telefonoContacto: 8000000 direccion: nil);
	add: (Cliente crearConNombre: 'Marcelo' apellido: 'Larrondo' telefonoContacto: 9000000 direccion: nil);
	add: (Cliente crearConNombre: 'Gonzalo' apellido: 'Martínez' telefonoContacto: 10000000 direccion: nil);
	add: (Cliente crearConNombre: 'Nicolás' apellido: 'De La Cruz' telefonoContacto: 11000000 direccion: nil);
	add: (Cliente crearConNombre: 'Benjamín' apellido: 'Rollheiser' telefonoContacto: 12000000 direccion: nil);
	add: (Cliente crearConNombre: 'Santiago' apellido: 'Sosa' telefonoContacto: 13000000 direccion: nil);
	add: (Cliente crearConNombre: 'Germán' apellido: 'Lux' telefonoContacto: 14000000 direccion: nil);
	add: (Cliente crearConNombre: 'Exequiel' apellido: 'Palacios' telefonoContacto: 15000000 direccion: nil);
	add: (Cliente crearConNombre: 'Ariel' apellido: 'Rojas' telefonoContacto: 16000000 direccion: nil);
	add: (Cliente crearConNombre: 'Carlos' apellido: 'Auzqui' telefonoContacto: 17000000 direccion: nil);
	add: (Cliente crearConNombre: 'Camilo' apellido: 'Mayada' telefonoContacto: 18000000 direccion: nil);
	add: (Cliente crearConNombre: 'Rafael' apellido: 'Borré' telefonoContacto: 19000000 direccion: nil);
	add: (Cliente crearConNombre: 'Milton' apellido: 'Casco' telefonoContacto: 20000000 direccion: nil);
	add: (Cliente crearConNombre: 'Iván' apellido: 'Rossi' telefonoContacto: 21000000 direccion: nil);
	add: (Cliente crearConNombre: 'Javier' apellido: 'Pinola' telefonoContacto: 22000000 direccion: nil);
	add: (Cliente crearConNombre: 'Leonardo' apellido: 'Ponzio' telefonoContacto: 23000000 direccion: nil);
	add: (Cliente crearConNombre: 'Enzo' apellido: 'Pérez' telefonoContacto: 24000000 direccion: nil);
	add: (Cliente crearConNombre: 'Enrique' apellido: 'Bologna' telefonoContacto: 25000000 direccion: nil);
	add: (Cliente crearConNombre: 'Ignacio' apellido: 'Fernández' telefonoContacto: 26000000 direccion: nil);
	add: (Cliente crearConNombre: 'Lucas' apellido: 'Pratto' telefonoContacto: 27000000 direccion: nil);
	add: (Cliente crearConNombre: 'Lucas' apellido: 'Martínez Quarta' telefonoContacto: 28000000 direccion: nil);
	add: (Cliente crearConNombre: 'Gonzalo' apellido: 'Montiel' telefonoContacto: 29000000 direccion: nil);
	add: (Cliente crearConNombre: 'Ignacio' apellido: 'Scocco' telefonoContacto: 30000000 direccion: nil);
	yourself.
	
colServicios := OrderedCollection new
	add: (Guardamuebles crearConDescripcion: 'El más económico de nuestros depósitos' nombre: 'Guardamuebles Base' valorBase: 10000 tamagnoDisponible: '10 metros cúbicos' aislamientoTermico: false guardaDeLlave: false);
	add: (Guardamuebles crearConDescripcion: 'El depósito más solicitado' nombre: 'Guardamuebles Estándar' valorBase: 20000 tamagnoDisponible: '20 metros cúbicos' aislamientoTermico: true guardaDeLlave: true);
	add: (Guardamuebles crearConDescripcion: 'El más grande de los depósitos' nombre: 'Guardamuebles Premium' valorBase: 30000 tamagnoDisponible: '30 metros cúbicos' aislamientoTermico: true guardaDeLlave: true);
	"Ejemplo para cuando se requiera agregar un servicio"
	"add: (Guardamuebles crearConDescripcion: 'Nuestra mayor y más nueva incorporación' nombre: 'Guardamuebles Premium XL' valorBase: 40000 tamagnoDisponible: '40 metros cúbicos' aislamientoTermico: true guardaDeLlave: true);"
	add: (MudanzaLocal crearConDescripcion: 'Ideal para una mudanza dentro de la ciudad' nombre: 'Mudanza en Neuquén' valorBase: 10000 trabajoEnAltura: false adicionalAltura: nil adicionalEmbalaje: 1000 capacidad: '20 metros cúbicos' incluyeCarga: false incluyeDescarga: false distanciaMaxima: '15 kilómetros');
	yourself.
	
	unaEmpresaMudanzas := self new.
	unaEmpresaMudanzas inicializarRazonSocial: 'MudanzasNQN' paginaWeb: 'www.mudanzasnqn.com.ar' telefonoContacto: 2994490300 direccion: (Direccion crearConCalle: 'Buenos Aires' numero: 1400 piso: nil dpto: nil barrio: 'UNCo') servicios: colServicios clientes: colClientes contratos: nil.
	
^ unaEmpresaMudanzas.