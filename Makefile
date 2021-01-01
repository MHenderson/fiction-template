PDF_OUTPUT = fiction-template.pdf
TEX_INPUT = $(patsubst %.pdf, %.tex, $(PDF_OUTPUT)) main.tex

all: pdf

pdf: $(PDF_OUTPUT)

clean:
	latexmk -c

cleanall:
	latexmk -C

$(PDF_OUTPUT): $(TEX_INPUT)
	latexmk -pdfxe $<

watch:
	ls -d *.tex | entr sh -c 'make'

hooks:
	find .git/hooks -type l -exec rm {} \; && find .githooks -type f -exec ln -sf ../../{} .git/hooks/ \;

