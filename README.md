# Linear Algebra — lecture-notes booklet

A LaTeX booklet collecting the **linear algebra** theory of the *Algebra with
Geometry* course, typeset as a single book-style PDF (`LinearAlgebra.pdf`,
~55 pages). The layout, theorem styling and colour palette follow the
`TeoriaKategorii` notes (KOMA-Script `scrbook`, Libertine fonts, `tcolorbox`
theorem environments with a coloured left accent bar).

The content is transcribed and reorganised from the original beamer lecture
slides (`02 complex numbers`, `03 vector spaces`, `04 matrices`,
`05 systems of linear equations`, `06 matrix determinants`,
`06.5 Linear mappings, eigenvalues and eigenvectors`,
`11 Eigenvalues and eigenvectors`).

## Files

| File | Purpose |
|---|---|
| `LinearAlgebra.tex` | Master document — preamble, theorem styles, chapter structure |
| `body_complex.tex` | Ch. 1 — Complex numbers (arithmetic, polar form, De Moivre, roots, polynomials) |
| `body_groups_fields.tex` | Ch. 2 — Groups and fields (introduction) |
| `body1.tex` | Ch. 3 — Vector spaces (subspaces, span, independence, basis, dimension) |
| `body2.tex` | Ch. 4 — Matrices (operations, elementary operations, echelon form, rank, determinants, matrix inversion) |
| `body3.tex` | Ch. 5 — Systems of linear equations (incl. homogeneous systems, Cramer's rule, invertibility criteria) |
| `body4.tex` | Ch. 6 — Linear mappings |
| `body5.tex` | Ch. 7 — Eigenvalues and eigenvectors (incl. PageRank lecture and an AI outlook section) |
| `body_exercises.tex` | Ch. E — Exercises: the ten tutorial series (`../LAG_T_*.pdf`) transcribed in book notation |
| `exercise-sheets/` | The same exercises, as standalone per-topic PDFs students can download individually (see its own README) |
| `Eigenvectors.png`, `03fig01.png` | Figures used in the notes |
| `LinearAlgebra.pdf` | Compiled result |

The complex plane (Argand diagram) is drawn with TikZ, so no external image is
needed for it.

`body_exercises.tex` does not contain the exercise text itself: each section `\input`s the matching
file in `exercise-sheets/content/`, which is also what the standalone sheets in `exercise-sheets/`
are built from, so the problems are maintained in one place.

## Requirements

A TeX distribution with `latex-extra` / `science` collections (tested on
**TeX Live 2025**, macOS). Required packages — all in a standard TeX Live:
`scrbook` (KOMA-Script); `libertine`, `newtxmath`, `beramono` (fonts);
`babel-english`; `microtype`, `geometry`, `scrlayer-scrpage`, `parskip`;
`amsmath`, `amssymb`, `amsthm`, `mathtools`; `tikz`, `tikz-cd`; `xcolor`,
`tcolorbox` (library `most`); `enumitem`, `hyperref`, `graphicx`.

## How to compile

```bash
make            # rebuild the PDF (only when sources change)
make watch      # continuous mode: rebuild on every save
make clean      # remove auxiliary files (keeps the PDF)
make distclean  # remove auxiliary files and the PDF
```

Or directly:

```bash
latexmk -pdf LinearAlgebra.tex
```

## Acknowledgements

This booklet is the result of work by multiple people at the faculty, among them
prof. Agata Pilitowska, who co-authored the tutorial series the exercises are drawn from.
