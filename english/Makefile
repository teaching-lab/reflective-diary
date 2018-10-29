TEXS=$(wildcard *.tex)
IMAGES=$(wildcard ../img/*)
PRINTS=$(wildcard ../print/*.tex)
PDFS=$(wildcard *.pdf)

all: diary.pdf print-single.pdf print-double.pdf clean

%.pdf : %.tex $(TEXS) $(IMAGES)
	texfot latexmk -pdf $<

%.pdf : ../print/%.tex $(TEXS) $(IMAGES)
	texfot latexmk -pdf $<

clean:
	latexmk -c diary ../print/print-single ../print/print-double

remake:
	rm -f $(PDF)
	make all

.PHONY: all print clean remake
