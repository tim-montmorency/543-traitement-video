#!/bin/bash

## get_dependencies


Rscript -e 'install.packages("bookdown", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("webshot", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("servr", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("kableExtra", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("dplyr", repos="https://cloud.r-project.org")'
#dplyr
#Rscript -e 'install.packages("Rapporter", repos="https://cloud.r-project.org")'
#Rscript -e 'install.packages("pander", repos="https://cloud.r-project.org")'

Rscript -e "webshot::install_phantomjs()"

## latex
sudo tlmgr update --self
sudo tlmgr install multirow  wrapfig tabu threeparttable threeparttablex environ makecell
sudo tlmgr install epstopdf
 