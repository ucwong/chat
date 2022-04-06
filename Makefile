.PHONY: all clean
GOBIN = build/bin
OS = $(shell uname)
ifeq ($(OS), Linux)
endif

ifeq ($(OS), Darwin)
endif
all:
	mkdir -p $(GOBIN)
	go build -v -o $(GOBIN)/chat cmd/chat/*.go
clean:
	go clean -cache
	rm -rf $(GOBIN)/*
