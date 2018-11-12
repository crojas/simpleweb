## Ejemplo docker con una app simple

ejemplo basico con docker + nodejs

# Compilar imagen
* docker build -t crojasla/simpleweb

# Correr imagen en un contenedor
* docker run -p 8080:8080 crojasla@simpleweb

# Ejecutar terminal dentro del contendor
* docker exec -it crojasla@simpleweb sh