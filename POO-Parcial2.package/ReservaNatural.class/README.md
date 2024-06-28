## Una clase para representar una reserva natural.

Al instanciarme, solo tendrá acceso a una única instancia de mi clase, ya que mi constructor está implementado según el patrón de diseño _singleton_.

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two

## Cómo instanciarme:

```
| reservaPeritoMoreno contrato1 contrato2 protector1 protector2 colProtectores |

protector1 := Protector crearConNombre: 'Luis' nroDNI: 24454666 nroMovil: 14544666.
protector2 := Protector crearConNombre: 'Chester' nroDNI: 10909666 nroMovil: 478787666.

colProtectores := OrderedCollection new.
colProtectores add: protector1; add: protector2.

reservaPeritoMoreno := ReservaNatural crearConContratos: 'colContratos' protectores: colProtectores.
```

Internal Representation and Key Implementation Points.

    Instance Variables
	animales:		<Object>
	contratos:		<Object>
	protectores:		<Object>


    Implementation Points