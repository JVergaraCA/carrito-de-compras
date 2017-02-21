Contexto
Un sitio ecommerce tiene diversas categorías de productos, en cada una de esas categorías aparecen los productos junto a sus precios.
Se pide construir un primer prototipo del sitio.
Parte Backend
1. CrearunaaplicaciónllamadatiendaconPostgreSQL.
Realizar un commit con el proyecto vacío.
Crear y moverse al branch development.
2. Crearelmodelodecategorías(category)conelcampo nombre (name) y el modelo de productos.
Antes de crear los modelos dibujar a mano el diagrama, y escoger donde agregar la columna con la clave foránea, si en el producto o categoría.
Revisar la migración antes de correr rake db:migrate.
Añadir los archivos después de la migración a GIT.
Hacer push a Github de la rama development.
Revisar la migración antes de correr rake db:migrate.
3. Sedebeutilizarrailroadyparadibujarlasrelaciones. Después de agregar las relaciones belongs_to y has_many generar el diagrama de nuevo y observar la diferencia
        
 4. Elmodelodeproductosolodebeaceptarproductos con precios.
5. Validarqueelproductotengacategoría
En Rails 4 hay que crear una validación.
En Rails 5 la validación viene incorporada en el belongs_to.
6. Agregarelcampopremiumalosproductos.
El campo premium por defecto debe ser false (puede ser un callback o ser especificado en la migración)
Añadir los archivos después de la migración a GIT.
Hacer push a Github de la rama development.
7. Dentrodelarchivoseeds.rb
Borrado de todas las categorías y productos (si el borrado en cascada funciona no importa el orden)
Agregar 3 categorías.
Agregar al menos dos productos a cada categoría del seed.
Uno de los productos debe ser agregado ocupando el método build de la relación products de una categoría.
Uno de los productos debe ser agregado ocupando el método create.
Después de agregar el último producto, destruirlo.
Tomar el último producto, actualizarlo a premium.
Actualizar todas las categorías cambiando sus
             
 respectivos nombres a mayúscula (No confundir con el callback visto en clases).
Añadir a GIT los archivos respectivos.
Hacer push a Github de la rama development. Hacer el merge a master
Hacer push a la rama master
Parte Backend avanzadas
1. Crearycheckoutalaramabackendavanzado
2. Agregaralmodelodeproductoselscopepremium para seleccionar todos los productos premium.
3. Sedebeagregarelscopelast_nquerecibecomo parámetro el número de productos a devolver.
No utilizar el método de clase .last puesto que devuelve un array y luego los métodos no serían concatenables
Añadir a GIT los archivos respectivos.
Hacer push a Github de la rama development.
4. Agregarborradoencascadalosproductosalborrar una categoría.
5. Alborrarelúltimoproductodeunacategoríasedebe borrar la categoría (hint: ocupar el callback after_destroy).
6. Crearuncampodeltipointegerparacategoría llamado descuento que debe ir de 0 a 100.
7. Crearunmétododeinstanciallamadoprecio_finalen los productos que muestre el precio con el descuento aplicado.
Añadir a GIT los archivos Hacer el commit
         
 Hacer el merge a master
hacer el push de la rama master
Parte Front-end
1. Crearycheckoutalaramafrontend
2. Construirelcontrollerdeproductosconelmétodo index.
3. Enlavistaindexmostrartodoslosproductos.
4. Cadaproductodebeaparecerjuntoconsucategoría.
5. Crearunformularioparafiltrarlosproductosporsu nombre.
6. Crearuninputdistintoparafiltrarlosporelprecio.
7. Lapáginainicialdebeserladetodoslosproductos.
8. Agregarallayoutbootstrap.
9. Ponerelyielddentrodeuncontainerdebootstrap.
10. Agregarelnavbaryponerdentrodeesteloslinksa categorías y a productos.
Añadir a GIT los archivos
Hacer el commit
Hacer el merge a master
hacer el push de la rama master
Deployment
Poner las gemas necesarias para Heroku. Crear y push a Heroku
Migrar la base de datos de Heroku Correr el seed en Heroku
Probar que todo funcione correctamente
           