# language: es
@Obtener
Requisito: Obtener un producto inexistente

  Escenario: Obtener un producto con un sku inexistente
    Dada una API válida con ruta "/api/v1/product/" y formato "application/json"
    Cuando se hace una petición "GET" con el sku "abc123"
    * a la API
    Entonces se recibe una respuesta "erronea" con código 404
    * y el estado "false"
    * y el mensaje "El producto no fue encontrado"