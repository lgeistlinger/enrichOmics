FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true

RUN Rscript -e "devtools::install('.', dependencies=TRUE, repos = c(CRAN = 'https://cran.r-project.org'), build_vignettes = TRUE)"
