# Usa la imagen oficial de PHP con Apache
FROM php:7.4-apache

# Copia el script PHP al directorio raíz del servidor web en el contenedor
COPY index.php /var/www/html/

# Expone el puerto 80 para acceder al servicio
EXPOSE 80

# No es necesario especificar un CMD o ENTRYPOINT, 
# ya que la imagen base ya tiene configurado Apache para iniciar automáticamente.
