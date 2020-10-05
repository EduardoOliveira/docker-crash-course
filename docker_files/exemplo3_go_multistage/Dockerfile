FROM golang:1.15.2 AS builder

WORKDIR /app

COPY main.go main.go

RUN go mod init go_example

RUN go build

RUN ls -la

RUN ./go_example


FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/go_example .

CMD ["./go_example"]  


#docker build -t go_example .
#docker run --rm go_example