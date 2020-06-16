FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app/cmd/redirector
RUN go build -o main .
CMD ["/app/cmd/redirector/main"]
