# makefile used for local dev/testing, not used by automated docker
# builders

default: container

container:
	sudo docker build -t bldr . | cat
	sudo docker images bldr
	sudo docker run --rm bldr sh -c 'echo ; gcc -v ; echo ; musl-gcc -v ; echo ; klcc -v'

clean:
	rm -f *~

.PHONY: default container
