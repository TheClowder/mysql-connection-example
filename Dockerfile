FROM golang:1.7.5

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH/src/github.com/root/
ADD . $GOPATH/src/github.com/root/

RUN go get -u github.com/go-sql-driver/mysql

