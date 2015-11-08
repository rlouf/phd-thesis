all: manuscript

manuscript:
	pdflatex main.tex
	bibtex main1
	bibtex main2
	bibtex main3
	bibtex main4
	pdflatex main.tex
	pdflatex main.tex

thesis: manuscript
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=1 -dLastPage=2 -sOutputFile=cover_upmc.pdf couv/template/modelethese.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=18 -dLastPage=19 -sOutputFile=back_upmc.pdf couv/template/modelethese.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=thesis.pdf cover_upmc.pdf main.pdf white.pdf back_upmc.pdf

