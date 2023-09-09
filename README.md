# Contenedor de Docker para PHP

Este proyecto contiene un ejemplo simple de como contenerizar una aplicacion de PHP en Docker.

Para correr el codigo ejemplo, hospeda el `index.php` en un server con Apache y PHP

Para Crear el contenedor de Docker

```bash
docker build -t tu-cuenta/tu-tag .
```

Para utilizar la version con `Apache`:

```bash
docker build -t tu-cuenta/tu-tag -f Dockerfile.apache .
```

Para correr el contenedor, vamos a mapear el puerto `80` que la aplicación expone al arrancar por `4000` en nuestro ordenador. 

```bash
docker run -it -p 4000:80 tu-cuenta/tu-tag
```

Y visita http://localhost:4000 

# Usuarios de Apple Silicon

Si estas trabajando en una Mac con Apple Silicon (M1, M2) es mejor que crees una imagen multi-arquitectura


```bash
docker buildx build --platform linux/amd64,linux/arm64 --push -t tu-cuenta/tu-tag . 
```
