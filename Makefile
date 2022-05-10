REPORT = QuizX-Y
all: ${REPORT}.pdf


${REPORT}.pdf: ${REPORT}.tex 
	platex ${REPORT}.tex
	platex ${REPORT}.tex
	dvipdfmx ${REPORT}.dvi

clean:
	rm *.aux *.dvi *.log ${REPORT}.pdf
