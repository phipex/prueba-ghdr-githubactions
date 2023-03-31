# Utilizamos una imagen base de Node.js
FROM node:14

# Creamos un directorio de trabajo en la imagen
WORKDIR /app

# Copiamos los archivos de nuestra aplicación en el directorio de trabajo
COPY package*.json ./
COPY src/ ./src/

# Instalamos las dependencias
RUN npm install

# Exponemos el puerto 3000
EXPOSE 3000

# Arrancamos la aplicación
CMD ["npm", "start"]
