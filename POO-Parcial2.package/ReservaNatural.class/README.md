## Una clase para representar una reserva natural.

Al instanciarme, solo tendrá acceso a una única instancia de mi clase, ya que mi constructor está implementado según el patrón de diseño _singleton_.

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two

## Cómo instanciarme:

```
| reservaPeritoMoreno colContratos colProtectores colAnimales contrato1 contrato2 protector1 protector2 animal1 animal2 listado |

protector1 := Protector crearConNombre: 'Luis' nroDNI: 24454666 nroMovil: 14544666.
protector2 := Protector crearConNombre: 'Chester' nroDNI: 10909666 nroMovil: 478787666.
colProtectores := OrderedCollection new add: protector1; add: protector2; yourself.

animal1 := Mamifero crearConNombre: 'Lio' edad: 10 peso: 2022 pelaje: 'Corto' velocidad: 26.
animal2 := Pez crearConNombre: 'Nemo' edad: 2 peso: 3 tipoAgua: 'Salada' profundidadNado: '200'.
colAnimales := OrderedCollection new add: animal1; add: animal2; yourself.

contrato1 := ContratoProtector crearConProtector: protector1 animal: animal1 mesesDuracion: 6.
contrato2 := ContratoProtectorSuperior crearConProtector: protector2 animal: animal2 mesesDuracion: 10.
colContratos := OrderedCollection new add: contrato1; add: contrato2; yourself.

reservaPeritoMoreno := ReservaNatural crearConContratos: colContratos protectores: colProtectores animales: colAnimales.

listado := reservaPeritoMoreno generarListadoOrdenado: 1.
listado do: [ :unNombre | Transcript show: unNombre ].

```

Internal Representation and Key Implementation Points.

    Instance Variables
	animales:		<Object>
	contratos:		<Object>
	protectores:		<Object>


    Implementation Points