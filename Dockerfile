# Image officielle Nginx légère
FROM nginx:alpine

# Copier les fichiers du site
COPY index.html style.css /usr/share/nginx/html/

# Port utilisé par Nginx
EXPOSE 80
