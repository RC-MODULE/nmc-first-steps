include environment.mk



.DEFAULT_GOAL = all
all: download install 

download:
	$(MAKE) -C deps download

install:
	$(MAKE) -C deps install

configure:
	$(MAKE) -C steps configure
