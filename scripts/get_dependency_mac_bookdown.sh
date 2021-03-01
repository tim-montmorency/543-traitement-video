#!/bin/bash

## get_dependencies


Rscript -e 'install.packages("bookdown", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("webshot", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("servr", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("kableExtra", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("dplyr", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("pander", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("glue", repos="https://cloud.r-project.org")'
Rscript -e 'install.packages("devtools", repos="https://cloud.r-project.org")'
Rscript -r 'devtools::install_github("rich-iannone/DiagrammeR")'
#Rscript -e 'install.packages("rgl", repos="http://R-Forge.R-project.org")'
#Rscript -e 'install.packages("rglwidget", repos="http://R-Forge.R-project.org")'
#Rscript -e 'install.packages("DiagrammeR", repos="http://R-Forge.R-project.org")'
 	
#dplyr
#Rscript -e 'install.packages("Rapporter", repos="https://cloud.r-project.org")'
#Rscript -e 'install.packages("pander", repos="https://cloud.r-project.org")'

Rscript -e "webshot::install_phantomjs()"

## latex


