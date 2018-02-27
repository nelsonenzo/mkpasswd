FROM debian:jessie-slim

# Tested on Ubuntu 16.04.3 LTS - Xenial
RUN apt-get update && apt-get install -y whois

ENV METHOD=sha-512
ENV PASSWORD=defaultpassword

CMD /usr/bin/mkpasswd -m ${METHOD} ${PASSWORD}
