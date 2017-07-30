TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)
IMAGES=$(wildcard img/*)

all: denik print clean

denik: denik.pdf

print: denik.pdf print.pdf

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

%.pdf : %.tex $(IMAGES)
	pdflatex $<

remake:
	rm $(PDFS)
	make all

.PHONY: all denik print clean remake
