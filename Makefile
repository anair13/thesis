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
