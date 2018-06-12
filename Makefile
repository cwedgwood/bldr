# makefile used for local dev/testing, not used by automated docker
# builders

default: container

container:
	docker build -t bldr .
	docker images bldr

runtest: container
	docker run --rm bldr sh -c 'echo ; gcc -v ; echo ; musl-gcc -v ; echo ; klcc -v; go version'

clean:
	rm -f *~

.PHONY: default container runtest
