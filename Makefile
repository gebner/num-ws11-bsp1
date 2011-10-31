.PHONY: all clean

EPSFIGS = $(addprefix fig_, \
	$(foreach i,exp scaledsin lin poly3 poly6, \
	$(i).eps $(i)_internal.eps $(i)_central.eps $(i)_noscale.eps))
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
