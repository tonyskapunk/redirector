FROM golang:latest AS builder
RUN go get -d -v github.com/tonyskapunk/redirector
WORKDIR /go/src/github.com/tonyskapunk/redirector/
COPY redirector.go .
RUN GOOS=linux go build -a -o redirector .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /go/src/github.com/tonyskapunk/redirector/redirector .
CMD ["./redirector"]
