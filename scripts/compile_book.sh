#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH
RESOURCES_DIR="medias" 
OUTPUT_DIR="docs"

cd "$SCRIPTPATH"
echo "copy $RESOURCES_DIR to "$OUTPUT_DIR"/"$RESOURCES_DIR""
cd ../
echo "copy resources to $OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"/"$RESOURCES_DIR"
cp -r "$RESOURCES_DIR"/* "$OUTPUT_DIR"/"$RESOURCES_DIR"
echo "compile the book"

Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::pdf_book")'
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::epub_book")'