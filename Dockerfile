FROM golang:latest AS builder
WORKDIR /go/src/github.com/tonyskapunk/redirector/
COPY redirector.go .
RUN go get -d -v . \
  && GOOS=linux go build -a -o redirector .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /go/src/github.com/tonyskapunk/redirector/redirector .
CMD ["./redirector"]
