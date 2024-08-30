# fiction-template

A template for PDF documents using XeLaTeX and latexmk.

## Dependencies

You need XeLaTeX and latexmk.

## Installation

Here is the process for creating a new project.

1. Clone repo
  
  ```
  git clone git@github.com:MHenderson/fiction-template.git <PROJECT_NAME>
  ```
  
2. Run init.sh script.
  
  ```
  cd <PROJECT_NAME>
  bash init.sh
  ```
  
## Usage

### Building the draft PDF

To build the draft PDF:

    $ make draft

### Cleaning

The clean target removes all files generated by XeLaTeX,
other than the pdf. The cleanall target removes the PDF file
as well.
    
    $ make clean

### Live reload

There is a watch target for updating the PDF after any changes
to the TeX source.

    $ make watch

### Configuring hooks

gitinfo2 provides macros that are used in the front matter.
To initialise these hooks run:

    $ make hooks

### Building the PDF

To build the final, non-draft version of the PDF:

    $ make pdf

