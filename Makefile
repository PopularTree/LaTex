NAME = report

all: ${NAME}.pdf


${NAME}.pdf: ${NAME}.tex 
	platex ${NAME}.tex
	platex ${NAME}.tex
	dvipdfmx ${NAME}.dvi

clean:
	rm *.aux *.dvi *.log ${NAME}.pdf

re: clean all

first:
	rm -rf .git
	rm README.md

.PHONEY: all clean re first
