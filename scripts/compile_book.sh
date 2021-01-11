#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH

cd "$SCRIPTPATH"
cd ../
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::pdf_book")'
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::epub_book")'