FROM ubuntu:18.04

#RUN useradd -ms /bin/bash xtreamcodes

#USER xtreamcodes
#WORKDIR /home/xtreamcodes

RUN wget https://github.com/amidevous/xtream-ui-docker/raw/refs/heads/main/sources.list -O /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install libxslt1-dev libcurl3 libgeoip-dev python wget -y
RUN wget https://github.com/amidevous/xtream-ui-docker/raw/refs/heads/main/install.py -O /root/install.py
RUN python3 install itertools
RUN python /root/install.py
