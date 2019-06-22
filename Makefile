export rootdir = $(shell pwd)/..
include $(rootdir)/build/config/env.mk

project += binutils
project += gmp
project += mpfr
project += mpc
#project += gcc



include Makefile.inner
prepareproject = $(project:%=%-prepare)
prepare: $(prepareproject)


buildproject = $(project:%=%-build)
build: $(buildproject)

installproject = $(project:%=%-install)
install: $(installproject)

all: prepare build install

cleanproject = $(project:%=%-clean)
clean: $(cleanproject)
