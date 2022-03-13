FROM ubuntu:20.04
RUN apt-get update -yq && \
    apt-get -yq install iputils-ping unzip zip \
    iproute2 openssh-client openssh-server curl wget vim passwd sudo && \
    curl -fsSL https://get.docker.com - get-docker.sh && \
    sh get-docker.sh 
RUN curl -s "https://get.sdkman.io" | bash
COPY ./tools.sh tools.sh
RUN chmod +x tools.sh
RUN sudo /bin/bash -c ./tools.sh
