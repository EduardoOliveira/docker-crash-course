# Exemplos de linha de comandos

## Criar container 

``` bash
docker run --name um_nginx -d -p 8080:80 -v `pwd`/assets:/usr/share/nginx/html:ro nginx
```

`-p` expõe a porta 80 ao sistema operativo como 8080

`-v` monta a pasta assets dentro da doc root do nginx como read only

## Listar conainers criados

```bash 
docker ps -a
```

## Inspecionar container

Devolve a coniguração actual do container

```bash 
docker inspect um_nginx
```

## Parar container

Para o container sem destruir o filesystem

```bash 
docker stop um_nginx
```

## Remover container

Remove o container e o seu filesystem

```bash 
docker rm um_nginx
```

## Modo interactivo

```bash
docker run -it --rm ubuntu bash
```

`-i` modo interactivo, mantem o stdin aberto

`-t` aloca uma peudo-TTY 

`--rm` elimina o container assim que o processo terminar


## Entrar na bash do container 

``` bash
docker exec -it um_nginx bash 
```

## Variaveis de ambiente

```bash
docker run -it --rm -e "THAT=THIS" ubuntu env
```

`-e` cria uma variavel  de  ambiente no container


## Labels

```bash
docker run -it --rm -l "THAT=THIS" ubuntu env
```


## Fazer push das imagens para o docker hub

```bash
docker login --username=username --email=user@domain.com
docker tag imagem_local username/minha_app:latest #docker tag <imagem>  <repositorio>/<imagem>:<tag>
docker push username/minha_app
```

## Rotinas de cleanup

Ao utilizar imagens elas vão ficando guardadas em cache localmente pelo que convem ir limpando o espaço usado

```bash
docker image prune -a
docker volume prune 
```


