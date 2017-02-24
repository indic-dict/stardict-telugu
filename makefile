.PHONY: all

all:
	make -C te-head all
	make -C en-head all

tars:
	make -C te-head tars
	make -C en-head tars

