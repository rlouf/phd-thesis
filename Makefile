all: thesis

thesis:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
