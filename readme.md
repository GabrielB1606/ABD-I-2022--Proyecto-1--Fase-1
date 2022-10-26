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

* __fase2\_queries__: Queries planteados en el enunciado y creación de indices. 
  
### Queries
Los queries especificados en el enunciado corresponden a los archivos `fase2_queries/query_1.sql` y `fase2_queries/query_2.sql`

### Indices
Con el fin de optimizar los queries planteados, se definieron los indices especificados en `fase2_queries/index.sql`. Estos indices se declaran en `start.sql`, tomar esto en consideración de querer comparar el costo de los queries con y sin los índices.

### Generar Inserts
Para generar los registros necesarios para poblar la base de datos, fue creado el script `util/gen_insert_queries.py`. Este script toma como argumento un número entero, el cual indica la cantidad de eventos con la que se desea llenar la base de datos (la cantidad por defecto de eventos es 3, es decir, un año de eventos). Este script genera en el directorio de ejecución un archivo con el nombre `insert_<n>eventos.sql`, siendo `n` la cantidad de eventos que se insertarán en la base de datos.