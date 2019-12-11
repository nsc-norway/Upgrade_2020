FROM centos:8
MAINTAINER "Arvind Sundaram" <arvind dot sundaram at medisin dot no>

# download conda
# RUN ["/bin/bash", "-c", "wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda.sh"]
RUN ["/bin/bash", "-c", "curl https://repo.anaconda.com/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh --output $HOME/miniconda.sh"]
RUN chmod 0755 $HOME/miniconda.sh
RUN ["/bin/bash", "-c", "$HOME/miniconda.sh -b -p $HOME/conda"]
ENV PATH="$HOME/conda/bin:$PATH"
RUN rm $HOME/miniconda.sh

# update conda
RUN conda install -c bioconda/label/cf201901 fastqc
RUN conda install -c bioconda/label/cf201901 multiqc
RUN conda install -c bioconda/label/cf201901 bbmap
RUN conda install -c bioconda/label/cf201901 hisat2
RUN conda install -c bioconda/label/cf201901 samtools
RUN conda install -c bioconda/label/cf201901 qualimap
RUN conda install -c bioconda/label/cf201901 subread
# RUN conda update conda
# RUN conda install conda-build
# RUN conda install binstar
