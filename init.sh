#!/bin/bash

PROJECT=new_project_name

mv src/horse-draft.tex src/$PROJECT-draft.tex
mv src/horse.tex src/$PROJECT.tex
rm src/main.tex
touch src/main.tex
