run:
	go run main.go

test:
	go test ./...

lint:
	golangci-lint run ./...

fmt:
	golangci-lint fmt ./...