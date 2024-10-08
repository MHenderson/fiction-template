# fiction-template

A template for PDF documents using XeLaTeX and latexmk.

## Dependencies

* XeLaTex (`apt install texlive texlive-xetex`)
* latemk (`apt install latexmk`)

## Usage

### Create a new project

Run the `init.sh` script to create a new project.

```
bash -c "$(curl https://raw.githubusercontent.com/MHenderson/fiction-template/main/init.sh)"
```

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

