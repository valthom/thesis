#!/bin/bash

# Set the name of the main TeX file without the .tex extension
MAIN_TEX_FILE="main"

# Compile the TeX document
pdflatex -synctex=1 -interaction=nonstopmode "$MAIN_TEX_FILE".tex

# Run BibTeX
bibtex "$MAIN_TEX_FILE".aux

# Compile the TeX document two more times to ensure correct cross-references
pdflatex -synctex=1 -interaction=nonstopmode "$MAIN_TEX_FILE".tex
pdflatex -synctex=1 -interaction=nonstopmode "$MAIN_TEX_FILE".tex

