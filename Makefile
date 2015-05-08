all: thesis

thesis:
	pdflatex main.tex
	bibtex main1
	bibtex main2
	bibtex main3
	bibtex main4
	pdflatex main.tex
	pdflatex main.tex
