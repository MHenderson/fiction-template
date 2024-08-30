#!/bin/bash

sed -i -e "s/horse/$1/g" Makefile
mv src/horse-draft.tex src/$1-draft.tex
mv src/horse.tex src/$1.tex
sed -i -e "s/The Horse Stealers/$2/g" src/$1-draft.tex
sed -i -e "s/Anton Chekov/$3/g" src/$1-draft.tex
sed -i -e "s/The Horse Stealers/$2/g" src/$1.tex
sed -i -e "s/Anton Chekov/$3/g" src/$1.tex
rm src/main.tex
touch src/main.tex
echo "# "$1 > README.md
make count
rm -rf .git
rm -rf .github
rm NEWS.md
git init
git add --all
git commit -m "Initial commit based on fiction-template v0.2.0."
