# language: es
@Eliminar
Requisito: Eliminar un producto inexistente

  Escenario: Eliminar un producto con un sku inexistente
    Dada una API válida con ruta "/api/v1/product/" y formato "application/json"
    Cuando se hace una petición "DELETE" con el sku "abc123"
    * a la API
    Entonces se recibe una respuesta "exitosa" con código 404
    * y el estado "false"
    * y el mensaje "El producto no fue encontrado"