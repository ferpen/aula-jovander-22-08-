## Para executar o banco, use os comandos listados abaixo na ppasta que contém o dockerfile:
1- docker build -t meu-app-php .
2- docker run -d -p 8080:80 -v dados_db_mysql:/var/lib/mysql --name meu-container-php meu-app-php

## https://hub.docker.com/repository/docker/ferpen/meu-app-php/general