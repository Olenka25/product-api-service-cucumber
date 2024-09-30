# language: es
  @Obtener
  Requisito:Obtener producto utilizando Antecedentes
    Antecedentes:
      Dada un producto con nombre "Nombre original"
      * y la descripción "Descripción original"
      * y el precio 3500
      * previamente creado con exito

    Escenario: Obtener un producto creado previamente con éxito
      Cuando se hace una petición "GET" con el nombre "obtener"
      * a la API
      Entonces se recibe una respuesta "exitosa" con código 200
      * y el mensaje "El producto fue encontrado"