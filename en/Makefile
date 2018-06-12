TEXS=$(wildcard *.tex)
IMAGES=$(wildcard ../img/*)
PRINTS=$(wildcard ../print/*.tex)
PDFS=$(wildcard *.pdf)

all: diary.pdf print clean

diary.pdf : $(TEXS) $(IMAGES)
	pdflatex diary.tex
	pdflatex diary.tex

print: $(PRINTS) $(TEXS) $(IMAGES)
	pdflatex ../print/print-single.tex
	pdflatex ../print/print-double.tex

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

remake:
	rm $(PDF)
	make all

.PHONY: all print clean remake
