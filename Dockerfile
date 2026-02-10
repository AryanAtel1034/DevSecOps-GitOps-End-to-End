FROM nginx:1.27-alpine

# Static site content
COPY . /usr/share/nginx/html

# Nginx serves on 80 by default
EXPOSE 80

