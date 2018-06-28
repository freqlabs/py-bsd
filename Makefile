PYTHON ?= python
PREFIX ?= /usr/local

do-build:
	${PYTHON} setup.py build

build: do-build

clean:
	rm -rf build
	find -E bsd -regex '.*\.(c|html)' -not -name yp_client.c -delete

install:
	${PYTHON} setup.py install --prefix ${PREFIX}
