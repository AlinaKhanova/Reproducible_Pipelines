FROM rocker/r-ver:4.2.1
RUN R -e "install.packages(c('tibble', 'dplyr', 'ggplot2', 'plotly', 'ggcorrplot', 'targets', 'titanic'))"

RUN apt-get update && \
    apt-get install -y libxml2-dev 

RUN apt-get update && apt-get install -y libglpk40
RUN apt-get update && apt-get install -y libxt6



COPY code.R D:/Reproducible/Reproducible/code.R

WORKDIR /Reproducible/Reproducible

CMD R -e "source('/Reproducible/Reproducible/code.R')"