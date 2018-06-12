TEXS=$(wildcard *.tex)
IMAGES=$(wildcard ../img/*)
PRINTS=$(wildcard ../print/*.tex)
PDFS=$(wildcard *.pdf)

all: diary.pdf print-single.pdf print-double.pdf clean

%.pdf : %.tex $(TEXS) $(IMAGES)
	pdflatex $<
	pdflatex $<

%.pdf : ../print/%.tex $(TEXS) $(IMAGES)
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

remake:
	rm -f $(PDF)
	make all

.PHONY: all print clean remake
