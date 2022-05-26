ARG port=3000

FROM golang:alpine AS builder
WORKDIR /app
COPY go.mod main.go ./
RUN CGO_ENABLED=0 go build -o main

FROM scratch
ENV PORT=${port}
WORKDIR /
COPY --from=builder /app/main /main
EXPOSE ${PORT}
ENTRYPOINT ["/main"]
