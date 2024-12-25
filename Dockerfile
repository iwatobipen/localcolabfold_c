FROM nvidia/cuda:12.3.2-cudnn9-runtime-ubuntu22.04

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    vim \
    sudo \
    build-essential
WORKDIR /opt

RUN wget https://raw.githubusercontent.com/YoshitakaMo/localcolabfold/main/install_colabbatch_linux.sh && \
    bash install_colabbatch_linux.sh

ENV PATH="/opt/localcolabfold/colabfold-conda/bin:${PATH}"    

    
