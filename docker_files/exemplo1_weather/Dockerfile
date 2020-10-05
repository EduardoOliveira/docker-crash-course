FROM alpine

RUN apk --no-cache add curl

RUN mkdir /app
WORKDIR /app

COPY weather.sh weather.sh

RUN chmod +x weather.sh

ENTRYPOINT [ "/app/weather.sh" ]

#docker build -t weather .
#docker run --rm weather