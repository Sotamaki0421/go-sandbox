FROM golang:1.24-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /go-sandbox

ENV PATH="/go/bin:${PATH}"
COPY go.mod go.sum ./
RUN go mod download && go mod verify
RUN go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@v2.4.0
