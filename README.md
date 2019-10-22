

# BD_BOOFLIX

Sistema de una biblioteca_BOOFLIX. 

Descripción: Para este prototipo se ha realizado un análisis y
observación en la empresa, de cómo funciona su proceso de Registro de los
libros en el Instituto Nuestra señora del valle  de san Vicente de cañete
bueno y lo ideal para sistemas de registro de
Biblioteca.

ESTRUCTURA DE LAS TABLAS

Esta base de datos estara conformada por los siguientes tablas:

- AUTOR:contiene los datos (nombre,apellido,pais)
- PERSONA :contiene los datos de la persona (nombre,codper,apellido,)
- LIBRO: contiene datos del libro.
- DETALLE_PRESTAMO: Aca nos dara la cantidad de libro que a propoionado el alumno.
- UBIGEO: nos dara la direccion.
- PAIS: aca se refiere a la nacionalidad del autor.
- CATEGORIA: el libro puede tener 1 o varias categorias.
- EDITORIAL: aca se refiere de que editorial viene el libro.
- PRESTAMO: registra las salidas de cada libro y entrega.
- USUARIO: contiene 3 usuarios, para iniciar sesion

REALCIONES ENTRE LAS TABLAS

Para establecer las relaciones debe tener en cuenta lo siguiente:
- Un país puede tener 0, uno o muchos autores.
- Un libro puede tener 0, uno muchos autores.
- Un libro puede tener 0, uno o muchas editoriales.
- Un libro puede pertencer 0, uno o muchas categorias.
- Una persona puede vivir en 0, uno o muchos lugares.
- Un  persona puede tener 0, uno o muchos usuarios.
- Una persona puede pedir 0, uno o muchos libros.


FUNCIONALIDADES:

- Registro de alumnos que obtienen los libros.
- Busqueda rapida de los libros.
- controlar el prestamo de cada libro.
- Permitir actualizar infomacion .
- Permisos de usuario.
- Reporte de prestamo y devoluciones.
- Inventario de los libros de la biblioteca
- Control sobre el estado de los libros



