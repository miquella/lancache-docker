FROM nginx:mainline-alpine

COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/lancache/* /etc/nginx/lancache/
COPY etc/nginx/sites-available/* /etc/nginx/sites-available/
COPY etc/nginx/sites-enabled/* /etc/nginx/sites-enabled/

# Steam
EXPOSE 8081

# Blizzard
EXPOSE 8083

# Origin
EXPOSE 8085
