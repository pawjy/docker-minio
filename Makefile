CURL = curl

all:

deps:

test:

test-ci:
	git clone https://github.com/wakaba/serverset
	cd serverset && make test-minio

updatenightly:
	$(CURL) -sSLf https://raw.githubusercontent.com/wakaba/ciconfig/master/ciconfig | RUN_GIT=1 REMOVE_UNUSED=1 perl

## License: Public Domain.
