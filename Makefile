PROJECT = horse
OUTDIR = ../out
TMPOUT = ../out
PDF_OUTPUT = $(OUTDIR)/$(PROJECT).pdf
TEX_INPUT = src/$(PROJECT).tex src/*.tex
DRAFT_INPUT = src/$(PROJECT)-draft.tex

all: pdf

pdf: $(PDF_OUTPUT)

clean: $(TEX_INPUT)
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

$(PDF_OUTPUT): $(TEX_INPUT)
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

watch: $(DRAFT_INPUT)
	latexmk -cd -outdir=$(TMPOUT) -pvc -xelatex $(word 1, $^)

hooks:
	find .git/hooks -type l -exec rm {} \; && find .githooks -type f -exec ln -sf ../../{} .git/hooks/ \;
	.git/hooks/post-commit  \;

count:
	wc src/main.tex > count.txt 

