FROM gitpod/workspace-full

USER root

RUN apt-get update && \
    apt-get install -y \
      cmake \
      libboost-all-dev \
      libeigen3-dev \
      libmpfr-dev \
      libgmp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER gitpod