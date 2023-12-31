# fiction-template

A template for PDF documents using XeLaTeX and latexmk.

## Installation

You need XeLaTeX and latexmk.

Here is the process for creating a new short story LaTeX repo.

1. Clone repo
  
  ```
  git clone git@github.com:MHenderson/fiction-template.git <PROJECT_NAME>
  ```
  
2. Remove history and init new repo.
  
  ```
  cd <PROJECT_NAME>
  rm -rf .git
  git init
  ```
  
3. Rename LaTeX source files.
  
  ```
  mv src/horse-draft.tex src/project-name-draft.tex
  mv src/horse.tex src/project-name.tex
  ```
  
4. Remove old `main.tex` and replace with new empty `main.tex`
  
  ```
  rm src/main.tex
  touch src/main.tex
  ```
  
5. Update PROJECT variable in Makefile.
  
6. Edit both `src/project-name-draft.tex` and `src/project-name.tex` so that the title and author are correct.
  
7. Edit the `README` to remove everything but the title. Replace the title with the short story title.
  
8. Update count by running `make count`.
  
9. Commit everything.
  
  ```
  git add .  
  git commit -m "initial commit"
  ```

## Setup

gitinfo2 provides macros that are used in the front matter.
There are Git hooks used to update the configuration files
used by gitinfo2 in the .githooks folder. To initialise
these hooks run:

    $ make hooks

## Building the PDF

To build the PDF, just call make with the pdf target.

    $ make pdf

## Cleaning

The clean target removes all files generated by XeLaTeX,
other than the pdf. The cleanall target removes the PDF file
as well.

## Live reload

There is a watch target for updating the PDF after any changes
to the TeX source.

    $ make watch

