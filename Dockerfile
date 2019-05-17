FROM golang:latest
ENV SRC=/go/src/
RUN mkdir -p /go/src/ \
    go get -u github.com/labstack/echo \
    go get -u github.com/labstack/echo/middleware \
    go get -u github.com/sirupsen/logrus \
WORKDIR /go/src/go_docker