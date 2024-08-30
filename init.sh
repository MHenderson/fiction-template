#!/bin/bash

mv src/horse-draft.tex src/$1-draft.tex
mv src/horse.tex src/$1.tex
rm src/main.tex
touch src/main.tex
echo "# "$1 > README.md
make count
