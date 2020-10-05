# Exemplos dockerfile

## Criar uma imagem 

Na pasta com o ficheiro Dockerfile

``` bash
docker build -t a_minha_imagem:1.1.0_alpine .
```

`-t` é o nome da imagem e opcionalmente a tag composta pela versão e/ou especifidades da build


## Criar uma imagem fora de contexto

``` bash
docker build -t a_minha_imagem:1.1.0_alpine -f exemplo1/Dockerfile
```

`-f` pode ser usado para especificar o Dockerfile


