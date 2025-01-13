FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz
RUN gunzip hellminer_linux64.tar.gz
RUN tar -xvf hellminer_linux64.tar.gz
RUN sed -i 's/RDWx2Sa8iyeLVTMUUi5ypY357ZXH5tNf56/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
