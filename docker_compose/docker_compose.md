# Exemplos docker-compose

## Criar contexto 

``` bash
docker-compose up
```

## Criar contexto em background

``` bash
docker-compose up -d
```

`-d` faz detach á input e output stream

## Parar contexto

``` bash
docker-compose stop
```

## Eliminar contexto

``` bash
docker-compose down
```

## Ver logs do contexto

``` bash
docker-compose logs -f
```

`-f` faz follow á output stream


## Executar a partir de outro contexto

``` bash
docker-compose -f exemplo1/docker-compose.yml up
```