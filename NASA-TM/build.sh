#!/bin/bash
#build pdf (with bibtex)
"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex
bibtex heading.aux
"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex
"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex

mv heading.pdf hyperloop.pdf

. clean.sh
