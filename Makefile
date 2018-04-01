# makefile used for local dev/testing, not used by automated docker
# builders

default: container

container:
	sudo docker build -t bldr .
	sudo docker images | grep bldr
	sudo docker run --rm bldr gcc -v
	sudo docker run --rm bldr musl-gcc -v

clean:
	rm -f *~

.PHONY: default container
