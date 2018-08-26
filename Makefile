TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)
IMAGES=$(wildcard img/*)

all: czech english deploy

czech: 
	cd czech && make

english: 
	cd english && make

clean:
	cd czech && make clean
	cd english && make clean

remake:
	cd czech && make remake
	cd english && make remake

deploy:
	mkdir -p build
	cp english/diary.pdf build/en-diary.pdf
	cp english/print-single.pdf build/en-print-single.pdf
	cp english/print-double.pdf build/en-print-double.pdf
	cp czech/diary.pdf build/cs-diary.pdf
	cp czech/print-single.pdf build/cs-print-single.pdf
	cp czech/print-double.pdf build/cs-print-double.pdf

.PHONY: all czech english clean remake deploy
