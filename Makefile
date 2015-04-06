all: thesis

thesis:
	pdflatex main.tex
	bibtex thesis
	pdflatex main.tex
	pdflatex main.tex
