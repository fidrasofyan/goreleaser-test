BINARY=bin/goreleaser-test
PKG := example/goreleaser-test/internal
VERSION := $(shell git describe --tags --always --dirty)
COMMIT  := $(shell git rev-parse --short HEAD)
LDFLAGS := -s -w \
	-X '$(PKG)/config.AppVersion=$(VERSION)' \
	-X '$(PKG)/config.AppCommit=$(COMMIT)'

build:
	go build -ldflags "$(LDFLAGS)" -o $(BINARY) .