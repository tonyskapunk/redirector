FROM golang:latest AS builder
WORKDIR /go/src/github.com/tonyskapunk/redirector/
COPY redirector.go .
RUN GOOS=linux CGO_ENABLED=0 go build -a -o redirector .

FROM alpine:latest
RUN addgroup -S app \
    && adduser -S -g app app \
    && apk add --no-cache ca-certificates
WORKDIR /app
COPY --from=builder /go/src/github.com/tonyskapunk/redirector/redirector .
RUN chown -R app:app ./
USER app
CMD ["./redirector"]
