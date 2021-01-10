#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH

cd "$SCRIPTPATH"
cd ../
Rscript -e 'bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)'