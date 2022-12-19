FROM golang:alpine as builder

COPY . /app
WORKDIR /app

RUN go install

RUN go build -ldflags="-s" -o helloworld


FROM gcr.io/distroless/static
COPY --from=builder /app/helloworld /app

CMD ["/app/helloworld"]
