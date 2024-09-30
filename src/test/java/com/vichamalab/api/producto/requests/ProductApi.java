package com.vichamalab.api.producto.requests;

import com.vichamalab.api.producto.dto.ProductResponse;
import io.restassured.response.Response;
import org.apache.http.HttpStatus;

import static io.restassured.RestAssured.given;

public class ProductApi {
    private static final String productApiPath = "/api/v1/product/";

    public static Response getProduct(String sku) {
        String rutaCompleta = String.format("%s{sku_creado}/", productApiPath);
        return given()
                .pathParam("sku_creado", sku)
                .when()
                .get(rutaCompleta);
    }
}
