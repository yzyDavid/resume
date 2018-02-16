# Makefile

all: html pdf

html: resume.md
	pandoc -o resume.html -H theme.css.html resume.md

pdf: resume.md
	pandoc -o resume.pdf resume.md --pdf-engine=xelatex

clean:
	rm -f resume.pdf
	rm -f resume.html

.PHONY : clean