# Build the standalone, per-topic exercise sheets.
#   make            -- rebuild every sheet's PDF (only when its sources change)
#   make clean      -- remove auxiliary files (keeps the PDFs)
#   make distclean  -- remove auxiliary files and the PDFs

SHEETS = $(basename $(wildcard [0-9][0-9]-*.tex))
PDFS   = $(addsuffix .pdf,$(SHEETS))

all: $(PDFS)

%.pdf: %.tex preamble.tex content/%.tex
	latexmk -pdf $*.tex

clean:
	latexmk -c $(addsuffix .tex,$(SHEETS))

distclean:
	latexmk -C $(addsuffix .tex,$(SHEETS))
	rm -f $(PDFS)

.PHONY: all clean distclean
