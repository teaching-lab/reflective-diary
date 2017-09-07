TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)
IMAGES=$(wildcard img/*)

all: denik print clean

denik: denik.pdf

print: print.pdf denik

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

%.pdf : %.tex $(IMAGES)
	pdflatex $<
	pdflatex $<

remake:
	rm $(PDFS)
	make all

.PHONY: all denik print clean remake
