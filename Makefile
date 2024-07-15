PROJECT = horse
VERSION = 0.0.0
SUBFOLDER = Fiction/Short\ Stories

FINAL_INPUT = src/$(PROJECT).tex src/*.tex
FINAL_OUTDIR = ${WRITING_RELEASE_BUILD_FOLDER}/$(SUBFOLDER)
FINAL_OUTPUT = $(FINAL_OUTDIR)/$(PROJECT).pdf

DRAFT_INPUT = src/$(PROJECT)-draft.tex src/*.tex
DRAFT_OUTDIR = ${WRITING_DRAFT_BUILD_FOLDER}/$(SUBFOLDER)
DRAFT_OUTPUT = $(DRAFT_OUTDIR)/$(PROJECT)-draft.pdf

.PHONY: all draft pdf watch clean

all: draft

draft: $(DRAFT_OUTPUT)

pdf: $(FINAL_OUTPUT)

clean: $(DRAFT_INPUT)
	latexmk -c -cd -outdir=$(DRAFT_OUTDIR) -xelatex $<

$(FINAL_OUTPUT): $(FINAL_INPUT)
	latexmk -cd -outdir=$(FINAL_OUTDIR) -jobname=%A-v$(VERSION) -xelatex $<;
	latexmk -c -cd -outdir=$(FINAL_OUTDIR) -jobname=%A-v$(VERSION) -xelatex $<

$(DRAFT_OUTPUT): $(DRAFT_INPUT)
	latexmk -cd -outdir=$(DRAFT_OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(DRAFT_OUTDIR) -xelatex $<

init:
	mv src/horse-draft.tex src/$(PROJECT)-draft.tex
	mv src/horse.tex src/$(PROJECT).tex
	rm src/main.tex
	touch src/main.tex

watch: $(DRAFT_INPUT)
	latexmk -cd -outdir=$(DRAFT_OUTDIR) -pvc -xelatex $<

hooks:
	git config --local core.hooksPath ${HOOKSDIR}

count:
	wc src/main.tex > wc.txt 

install:
	sudo apt update
	sudo apt install texlive texlive-science texlive-latex-extra texlive-xetex latexmk
