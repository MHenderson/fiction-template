#!/bin/bash

read -p "Enter project name: " project
read -p "Enter title: " title
read -p "Enter author: " author
sed -i -e "s/horse/$project/g" Makefile
mv src/horse-draft.tex src/$project-draft.tex
mv src/horse.tex src/$project.tex
sed -i -e "s/The Horse Stealers/$title/g" src/$project-draft.tex
sed -i -e "s/Anton Chekov/$author/g" src/$project-draft.tex
sed -i -e "s/The Horse Stealers/$title/g" src/$project.tex
sed -i -e "s/Anton Chekov/$author/g" src/$project.tex
rm src/$project.tex-e
rm src/$project-draft.tex-e
rm src/main.tex
touch src/main.tex
echo "# "$project > README.md
make count
rm -rf .git
rm -rf .github
rm NEWS.md
git init
git add --all
git commit -m "Initial commit based on fiction-template v0.2.0."
