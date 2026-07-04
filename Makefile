# Build the Linear Algebra lecture-notes booklet.
#   make            -- rebuild the PDF (only when sources change)
#   make watch      -- continuous mode: rebuild on every saved change
#   make clean      -- remove auxiliary files (keeps the PDF)
#   make distclean  -- remove auxiliary files and the PDF

TEX  = LinearAlgebra
SRCS = $(TEX).tex $(wildcard body*.tex)

all: $(TEX).pdf

$(TEX).pdf: $(SRCS)
	latexmk -pdf $(TEX).tex

watch:
	latexmk -pdf -pvc $(TEX).tex

clean:
	latexmk -c

distclean:
	latexmk -C

.PHONY: all watch clean distclean
