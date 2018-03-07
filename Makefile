# Makefile

all: html pdf

help:
	echo "need global markdown-resume npm package"
	echo "need wkhtmltopdf"

install:

html: resume.md
	md2resume resume.md --template swissen

pdf: resume.md
	md2resume resume.md --pdf --template swissen

pandoc-html: resume.md
	pandoc -o resume.html -H theme.css.html resume.md

pandoc-pdf: resume.md
	pandoc -o resume.pdf resume.md --pdf-engine=xelatex

clean:
	rm -f resume.pdf
	rm -f resume.html

.PHONY : clean help install
