# Exercise sheets — individual downloads

Each topic's exercises are available here as a short, standalone PDF, so students can download just
the set they need instead of the whole book.

| Sheet | Topic |
|---|---|
| `01-complex-numbers.pdf` | Complex numbers |
| `02-groups-and-fields.pdf` | Operations modulo $n$. Groups and fields |
| `03-vector-spaces.pdf` | Vector spaces |
| `04-independence-basis-dimension.pdf` | Linear independence. Bases and dimension |
| `05-matrices.pdf` | Matrices |
| `06-systems-of-linear-equations.pdf` | Systems of linear equations |
| `07-linear-mappings.pdf` | Linear mappings. Matrices of linear mappings |
| `08-eigenvalues-eigenvectors.pdf` | Eigenvalues and eigenvectors |

## How this folder is organised

The exercise *text* lives once, in `content/<nn>-<topic>.tex`. Those files are `\input` from two
places so the problems are never duplicated:

- the book's Exercises chapter (`../body_exercises.tex`), and
- the standalone sheet for that topic (`<nn>-<topic>.tex` here), which wraps the same content file
  in a minimal, lightweight preamble (`preamble.tex`) so it compiles on its own.

If you edit an exercise, edit the file in `content/` — the change shows up in both the book and the
matching standalone sheet next time each is rebuilt.

## Building

```bash
make            # rebuild every sheet whose content changed
make clean      # remove auxiliary files (keeps the PDFs)
make distclean  # remove auxiliary files and the PDFs
```

Or compile a single sheet directly: `latexmk -pdf 01-complex-numbers.tex`.
