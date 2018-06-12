TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)
IMAGES=$(wildcard img/*)

all: czech english

czech: 
	cd cs && make

english: 
	cd en && make

clean:
	cd cs && make clean
	cd en && make clean

remake:
	cd cs && make remake
	cd en && make remake

.PHONY: all czech english clean remake
