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
  
3. Update PROJECT variable in Makefile.

4. Remove old LaTeX source files and add new empty files.
  
  ```
  make init
  ```
  
6. Edit title and author in both `src/project-name-draft.tex` and `src/project-name.tex`.
  
7. Edit the `README` to remove everything but the title. Replace the title with the short story title.
  
8. Update count by running `make count`.
  
9. Commit everything.
  
  ```
  git add .  
  git commit -m "initial commit"
  ```

## Setup

gitinfo2 provides macros that are used in the front matter.
To initialise these hooks run:

    $ make hooks

## Building the draft PDF

To build the draft PDF:

    $ make draft

## Cleaning

The clean target removes all files generated by XeLaTeX,
other than the pdf. The cleanall target removes the PDF file
as well.
    
    $ make clean

## Live reload

There is a watch target for updating the PDF after any changes
to the TeX source.

    $ make watch

## Building the PDF

To build the final, non-draft version of the PDF:

    $ make pdf

