FROM docker:stable
 
RUN apk update && apk upgrade && \
    apk add --no-cache git docker-compose
 
COPY --from=golang:1.13-alpine /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"
 
RUN go get -u github.com/awslabs/amazon-ecr-credential-helper/ecr-login/cli/docker-credential-ecr-login
 
RUN cp  /root/go/bin/docker-credential-ecr-login /usr/bin
 
RUN chmod +x  /usr/bin/docker-credential-ecr-login
RUN echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/go-1.11/" >> /root/.bash_rc
 
RUN mkdir /root/.docker
RUN echo "{\"credsStore\":\"ecr-login\"}" > /root/.docker/config.json
 
COPY ./build_and_push.sh /usr/bin