Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, "I represent a paragraph of text".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- ¿Cómo crear instancias de la clase?

```language=Pharo&caption=Creación de un Estudiante&anchor=Fig1
| unEstudiante |
unEstudiante crearConDni: 45626898 conNombre: 'John' conApellido: 'Williams' conLegajo: 'FAI-1000'.
```

Internal Representation and Key Implementation Points.

    Instance Variables
	apellido:		<Object>
	dni:		<Object>
	legajo:		<Object>
	nombre:		<Object>
	universidades:		<Object>


    Implementation Points