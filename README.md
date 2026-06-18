# Proyecto CI/CD con Docker, GitHub Actions y AWS

## Descripción

Este proyecto consiste en una pequeña página web desplegada automáticamente mediante un flujo de integración y despliegue continuo (CI/CD). El objetivo es que cualquier cambio realizado en el archivo `index.html` se publique de forma automática utilizando Docker, GitHub Actions y un servidor AWS.

## Estructura del proyecto

* `index.html`: Página web que se mostrará en el servidor.
* `Dockerfile`: Archivo encargado de crear la imagen Docker del proyecto.
* `.github/workflows/deploy.yml`: Flujo de trabajo de GitHub Actions que automatiza la construcción y despliegue de la aplicación.

## Dockerfile

El Dockerfile utiliza una imagen de Nginx como servidor web. A continuación:

1. Descarga la imagen oficial de Nginx.
2. Copia los archivos del proyecto al servidor web.
3. Expone el puerto 80 para permitir el acceso a la página.

## Automatización con GitHub Actions

El archivo `deploy.yml` contiene las instrucciones necesarias para:

* Construir la imagen Docker.
* Probar que la imagen funciona correctamente.
* Conectarse al servidor AWS mediante credenciales almacenadas en los secretos del repositorio.
* Utilizar Docker Hub para almacenar y gestionar las imágenes.
* Desplegar automáticamente los cambios realizados en el proyecto.

## Funcionamiento

Cuando se modifica el contenido del archivo `index.html` y se suben los cambios al repositorio de GitHub, se ejecuta automáticamente el flujo CI/CD. Esto provoca que se genere una nueva imagen Docker y se actualice la página desplegada en el servidor AWS, permitiendo visualizar los cambios sin necesidad de intervenir manualmente.

## Tecnologías utilizadas

* HTML
* Docker
* Nginx
* GitHub
* GitHub Actions
* Docker Hub
* AWS

## Autor

**Sara Jimenez**

Proyecto realizado como práctica de CI/CD para automatizar el despliegue de una página web mediante contenedores Docker y GitHub Actions.
