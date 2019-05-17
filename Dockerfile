FROM golang:latest
ENV SRC=/go/src/
RUN mkdir -p /go/src/ \
    go get -u github.com/labstack/echo \
    go get -u github.com/labstack/echo/middleware \
    go get -u github.com/sirupsen/logrus \
WORKDIR /go/src/go_docker
RUN git clone https://github.com/kingcaubalejo/golang-docker.git /go/src/go_docker/ \
&& CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
go build -o bin/go_docker