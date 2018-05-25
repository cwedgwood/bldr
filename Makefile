# makefile used for local dev/testing, not used by automated docker
# builders

default: container

container:
	docker build -t bldr . | cat
	docker images bldr
	docker run --rm bldr sh -c 'echo ; gcc -v ; echo ; musl-gcc -v ; echo ; klcc -v'

clean:
	rm -f *~

.PHONY: default container
