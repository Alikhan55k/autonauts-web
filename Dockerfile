FROM nginx:1.27-alpine
COPY *.html *.css /usr/share/nginx/html/
COPY docker/40-config.sh /docker-entrypoint.d/40-config.sh
RUN chmod +x /docker-entrypoint.d/40-config.sh
EXPOSE 80
