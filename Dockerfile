FROM ubuntu:20.04

LABEL version="0.1" description="Servidor Web completo" maintainer="joaobloomer"

ENV API_URL=http://localhost:8000/api/
ENV API_BANCO=database

RUN apt-get update -y && apt-get install nginx -y \
    && rm -rf /var/lib/apt/lists/*

COPY ./site/index.html /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html/

VOLUME /arquivos/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80