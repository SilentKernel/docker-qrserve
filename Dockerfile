FROM golang:1.15.5

RUN apt-get update
RUN apt-get upgrade -y

ENV GOBIN /go/bin

RUN go get github.com/dobarkod/qrserve

EXPOSE 80
CMD ["qrserve", ":80"]
