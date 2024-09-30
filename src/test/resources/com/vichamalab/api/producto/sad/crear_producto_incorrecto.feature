# language: es
@Crear
Requisito: Crear un nuevo producto de manera incorrecta

	Esquema del escenario: Crear un producto con éxito
	Dada una API válida con ruta "/api/v1/product/" y formato "application/json"
	Cuando se hace una petición "POST" con el nombre "<nombre>"
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