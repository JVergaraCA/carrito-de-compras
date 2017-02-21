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

Actualizar todas las categorías cambiando sus