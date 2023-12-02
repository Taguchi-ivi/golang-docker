# build stage
FROM golang:1.21.4-alpine3.18 AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o main /app/main.go


# development stage
FROM golang:1.21.4-alpine3.18 AS development
WORKDIR /app
COPY --from=builder /app .
COPY .env .
RUN go install github.com/cosmtrek/air@latest
CMD ["air"]


# production stage
FROM alpine:3.18 AS production
WORKDIR /app
COPY --from=builder /app/main .
COPY .env .
EXPOSE 8080
CMD [ "/app/main" ]
