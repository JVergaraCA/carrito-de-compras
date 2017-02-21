Contexto

Un sitio ecommerce tiene diversas categorías de productos, en cada una de esas categorías aparecen los productos junto a sus precios.

Se pide construir un primer prototipo del sitio.

Parte Backend

1. Crear una aplicación llamada tienda con PostgreSQL. Realizar un commit con el proyecto vacío.

Crear y moverse al branch development.

2. Crear el modelo de categorías (category) con el campo nombre (name) y el modelo de productos. Antes de crear los modelos dibujar a mano el diagrama, y escoger donde agregar la columna con la clave foránea, si en el producto o categoría.

Revisar la migración antes de correr rake db:migrate.

Añadir los archivos después de la migración a GIT.

Hacer push a Github de la rama development.

Revisar la migración antes de correr rake db:migrate.

3. Se debe utilizar railroady para dibujar las relaciones. Después de agregar las relaciones belongs_to y has_many generar el diagrama de nuevo y observar la diferencia 4. El modelo de producto solo debe aceptar productos con precios.

5. Validar que el producto tenga categoría En Rails 4 hay que crear una validación.

En Rails 5 la validación viene incorporada en el belongs_to.

6. Agregar el campo premium a los productos. El campo premium por defecto debe ser false (puede ser un callback o ser especiﬁcado en la migración)

Añadir los archivos después de la migración a GIT.

Hacer push a Github de la rama development.

7. Dentro del archivo seeds.rb Borrado de todas las categorías y productos (si el borrado en cascada funciona no importa el orden)

Agregar 3 categorías.

Agregar al menos dos productos a cada categoría del seed. Uno de los productos debe ser agregado ocupando el método build de la relación products de una categoría.

Uno de los productos debe ser agregado ocupando el método create.

Después de agregar el último producto, destruirlo.

Tomar el último producto, actualizarlo a premium.

Actualizar todas las categorías cambiando sus respectivos nombres a mayúscula (No confundir con el callback visto en clases). Añadir a GIT los archivos respectivos. Hacer push a Github de la rama development. Hacer el merge a master Hacer push a la rama master

Parte Backend avanzadas

1. Crear y checkout a la rama backendavanzado 2. Agregar al modelo de productos el scope premium para seleccionar todos los productos premium. 3. Se debe agregar el scope last_n que recibe como parámetro el número de productos a devolver. No utilizar el método de clase .last puesto que devuelve un array y luego los métodos no serían concatenables Añadir a GIT los archivos respectivos. Hacer push a Github de la rama development. 4. Agregar borrado en cascada los productos al borrar una categoría. 5. Al borrar el último producto de una categoría se debe borrar la categoría (hint: ocupar el callback after_destroy). 6. Crear un campo del tipo integer para categoría llamado descuento que debe ir de 0 a 100. 7. Crear un método de instancia llamado precio_ﬁnal en los productos que muestre el precio con el descuento aplicado. Añadir a GIT los archivos Hacer el commit Hacer el merge a master hacer el push de la rama master

Parte Front-end

1. Crear y checkout a la rama frontend 2. Construir el controller de productos con el método index. 3. En la vista index mostrar todos los productos. 4. Cada producto debe aparecer junto con su categoría. 5. Crear un formulario para ﬁltrar los productos por su nombre. 6. Crear un input distinto para ﬁltrarlos por el precio. 7. La página inicial debe ser la de todos los productos. 8. Agregar al layout bootstrap. 9. Poner el yield dentro de un container de bootstrap. 10. Agregar el navbar y poner dentro de este los links a categorías y a productos. Añadir a GIT los archivos Hacer el commit Hacer el merge a master hacer el push de la rama master

Deployment

Poner las gemas necesarias para Heroku. Crear y push a Heroku Migrar la base de datos de Heroku Correr el seed en Heroku Probar que todo funcione correctamente