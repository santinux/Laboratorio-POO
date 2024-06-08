Esta clase está diseñada para evitar tener que ingresar manualmente los valores en el Playground, solo se debe instanciar esta clase en el mismo de la siguiente manera:

For the Class part:  State a one line summary. For example, "I represent a paragraph of text".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- getEmpresa
- getEmpleados
- crear

```language=Pharo&caption=Cómo arrancar el test en el Playground&anchor=Fig1
| miTestEmpresa misEsclavos miEmpresita colSueldos |
"Creamos una instancia de la clase TestEmpresa"
miTestEmpresa := TestEmpresa crear.

"Obtenemos la colección de empleados"
misEsclavos := miTestEmpresa getEmpleados.

"Obtenemos la empresa"
miEmpresita := miTestEmpresa getEmpresa.

"Calculamos y almacenamos los sueldos de los empleados"
colSueldos := OrderedCollection new.
misEsclavos do: [ :unEmpl | colSueldos add: (unEmpl calcularSueldo: miEmpresita) ].

"Escribimos los elementos listados"
Transcript clear.
Transcript show: 'Listado de empleados:'; cr.
misEsclavos do: [ :unEmpl | Transcript show: unEmpl toString; cr ].
Transcript show: 'Listado de sueldos de los empleados:'; cr.
colSueldos do: [ :unsueldo | Transcript show: unsueldo; cr ].
```

Internal Representation and Key Implementation Points.

    Instance Variables
	miEmpresa:		<Object>
	misEmpleados:		<Object>


    Implementation Points