TITLE=main
IMAGES=$(wildcard img/*)

all: $(TITLE).pdf

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

$(TITLE).pdf: $(TITLE).tex $(IMAGES)
	pdflatex $(TITLE)
