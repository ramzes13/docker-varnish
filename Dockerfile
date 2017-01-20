FROM nimmis/debian:wheezy

MAINTAINER ramzes13 <petru.darii@gmail.com>

RUN apt-get update && yes | apt-get install apt-utils curl wget nano mc apt-transport-https ca-certificates procps

RUN curl https://repo.varnish-cache.org/GPG-key.txt |apt-key add -

RUN echo "deb https://repo.varnish-cache.org/debian/ wheezy varnish-3.0" \
   | tee -a /etc/apt/sources.list.d/varnish-cache.list

RUN apt-get update

# RUN yes | apt-get install varnish=3.0.2-2+deb7u2
RUN yes | apt-get install varnish