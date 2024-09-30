# language: es
@Actualizar
Requisito: Actualizar un producto usando Antecedentes

	Antecedentes:
		Dada un producto con nombre "Nombre original"
		* y la descripción "Descripción original"
		* y el precio 1500
		* previamente creado con exito

	Esquema del escenario: Actualizar un producto creado previamente con éxito
		Cuando se hace una petición "PUT" con el nombre "<nombre>"
		* y la descripción "<descripcion>"
		* y el precio <precio>
		* a la API
		Entonces se recibe una respuesta "erronea" con código <codigo>
		* y el mensaje "<mensaje>"

		@Cat1
		Ejemplos: Nombre incorrecto
			|nombre|descripcion|precio|codigo|mensaje|
			||Descripcion Actualizada|999|400|El nombre del producto no fue proporcionado|

		@Cat2
		Ejemplos: Descripción incorrecta
			|nombre|descripcion|precio|codigo|mensaje|
			|Myphone 19||999|400|La descripción del producto no fue proporcionada|

		@Cat1
		Ejemplos: Precio incorrecto
			|nombre|descripcion|precio|codigo|mensaje|
			|Myphone 19|Descripcion Actualizada|0|400|El precio del producto no fue proporcionado|