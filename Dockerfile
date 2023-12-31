# Usa la imagen oficial de PHP con Apache
FROM php:8.2

# Copia el script PHP al directorio raíz del servidor web en el contenedor
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

# Expone el puerto 80 para acceder al servicio
EXPOSE 80

# No es necesario especificar un CMD o ENTRYPOINT,
CMD [ "php","-S", "0.0.0.0:80", "./index.php" ]
