TARGET=evilginx
PACKAGES=core database log parser

.PHONY: all
all: build

build:
	@go build -o ./bin/$(TARGET) -mod=vendor

clean:
	@go clean
	@rm -f ./bin/$(TARGET)

install:
        @mkdir -p /root/evilginx
	@mkdir -p /root/evilginx/phishlets
	@mkdir -p /root/evilginx/redirectors
	@cp ./phishlets/* /root/evilginx/phishlets/
	@cp ./templates/* /root/evilginx/redirectors/
	@cp ./bin/$(TARGET) /usr/local/bin
