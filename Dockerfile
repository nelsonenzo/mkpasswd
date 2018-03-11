FROM debian:jessie-slim

# Tested on Ubuntu 16.04.3 LTS - Xenial
# mkpasswd is part of the whois package
RUN apt-get update && apt-get install -y whois

ENV METHOD=sha-512
ENV PASSWORD=defaultpassword

COPY ./gpg_pub/ /usr/src/gpg_pub/
RUN gpg --import /usr/src/gpg_pub/nelson.pub

COPY ./src/encrypt.sh /usr/src/encrypt.sh
CMD /usr/src/encrypt.sh
