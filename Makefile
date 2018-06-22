TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)
IMAGES=$(wildcard img/*)

all: czech english deploy

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

deploy:
	mkdir -p build
	cp en/diary.pdf build/en-diary.pdf
	cp en/print-single.pdf build/en-print-single.pdf
	cp en/print-double.pdf build/en-print-double.pdf
	cp cs/diary.pdf build/cs-diary.pdf
	cp cs/print-single.pdf build/cs-print-single.pdf
	cp cs/print-double.pdf build/cs-print-double.pdf

.PHONY: all czech english clean remake deploy
