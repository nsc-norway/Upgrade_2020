FROM ubuntu_18.04_nsc:0.1
MAINTAINER "Arvind Sundaram" <arvind dot sundaram at medisin dot no>

# update conda
RUN conda install -c bioconda/label/cf201901 fastqc
RUN conda install -c bioconda/label/cf201901 multiqc
RUN conda install -c bioconda/label/cf201901 bbmap
RUN conda install -c bioconda/label/cf201901 hisat2
RUN conda install -c bioconda/label/cf201901 samtools
RUN conda install -c bioconda/label/cf201901 qualimap
RUN conda install -c bioconda/label/cf201901 subread
