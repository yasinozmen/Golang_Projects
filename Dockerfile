FROM golang:1.16

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . ./

COPY ./ui /app/ui

RUN go build -o main

EXPOSE 8080

CMD ["/app/main"]