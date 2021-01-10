#!/bin/bash

## get_dependencies


Rscript -e 'install.packages("bookdown", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("webshot", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("servr", repos="https://cloud.r-project.org")'


Rscript -e "webshot::install_phantomjs()"
