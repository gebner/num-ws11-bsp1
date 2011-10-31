.PHONY: all clean

EPSFIGS = $(addprefix fig_, $(addsuffix .eps, \
	exp scaledsin lin poly3 poly6))
PDFFIGS = $(subst .eps,.pdf,$(EPSFIGS))

all: notes.pdf

notes.pdf: notes.tex $(PDFFIGS)

$(EPSFIGS): $(wildcard *.m)
	octave --quiet --eval plots

%.pdf: %.eps
	epstopdf $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	$(RM) *.eps *.pdf *.log *.aux
