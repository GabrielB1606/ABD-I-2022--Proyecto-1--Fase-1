# Proyecto 1 - ABD 

## Fase I 

* __DD\_queries__: Consultas al Diccionario de Datos. 
* __DDL\_queries__: Creación de Estructuras y Roles.
* __DML\_queries__: Inserción de Datos.

### Cargar Base de Datos
Para montar la base de datos, ejecutar el archivo `start.sql`. Este archivo ejecutará en el orden indicado los queries DDL e insertará data dummy en la base de datos.

### Borrar Base de Datos
Para droppear todas las estructuras relacionadas con la base de datos, ejecutar el archivo `drop.sql`.

### Views
Para seleccionar las vistas especificadas en el enunciado del proyecto, ejecutar el archivo `views.sql`. (Se recomiendo ejecutar primero `util/pretty_sqlplus.sql`)

### Probar Constraints y Triggers
En el archivo `DML_queries/test_constraints.sql` hay algunos inserts que violan las reglas del negocio.

### Diccionario de Datos
En la carpeta `DD_queries` se encuentran todas las sentencias SQL usadas para la elaboración del informe.

### Formatear SQLPLUS
El script `util/pretty_sqlplus.sql` cambia el formato de la consola de oracle para que los resultados sean más legibles.

## Fase II