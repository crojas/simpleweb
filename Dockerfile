# Imagen de origin para crear la nueva imagen en este es alpine con nodejs en el.
FROM node:alpine

# Directorio donde se va a dejar la app en el contenedor.
WORKDIR /usr/app

# Instalar dependencias, primero no necesario para crear el contenedor y luego el resto del proyecto.
# De forma que quede en el cache en la instalación y no haga "npm install" cuando se hace buil nuevamante.
COPY  ./package.json ./
RUN npm install
COPY ./ ./

# Comando para iniciar la app.
CMD [ "npm", "start" ]