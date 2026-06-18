FROM nginx:alpine
COPY . /usr/share/ngingx/html
EXPOSE 80
