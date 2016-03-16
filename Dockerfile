FROM nginx

RUN mkdir -p /etc/nginx/lancache /data/www/cache /data/www/logs \
 && chown -R nginx /data/www

COPY machines/lancache-single.conf /etc/nginx/nginx.conf
COPY sites/lancache.conf /etc/nginx/conf.d/lancache.conf
COPY lancache/* /etc/nginx/lancache/

EXPOSE 80 8081 8082 8083 8084 8085 8086 8087 8088 8089
