PAPER=main
BIB=main

all:
	pdflatex ${PAPER}
	biber ${BIB}
	pdflatex ${PAPER}
	pdflatex ${PAPER}

once:
	pdflatex ${PAPER}

clean:
	rm *.out *.brf *.aux *.log *.blg *.bbl

quiet:
	pdflatex -interaction=nonstopmode ${PAPER}
	biber ${BIB}
	pdflatex -interaction=nonstopmode ${PAPER}
	pdflatex -interaction=nonstopmode ${PAPER}