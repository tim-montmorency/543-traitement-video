#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH
OUTPUT_DIR="_book"
RESOURCES_DIR="resources" 

cd "$SCRIPTPATH"
echo "copy $RESOURCES_DIR to "$OUTPUT_DIR"/"$RESOURCES_DIR""
cd ../
mkdir -p "$OUTPUT_DIR"/"$RESOURCES_DIR"
cp -r "$RESOURCES_DIR"/* "$OUTPUT_DIR"/"$RESOURCES_DIR"
echo "Serve the book"
Rscript -e 'bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)'