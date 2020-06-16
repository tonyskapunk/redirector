FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app/cmd/redirect
RUN go build -o main .
CMD ["/app/cmd/redirect/main"]
