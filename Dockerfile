FROM nimmis/debian:wheezy

MAINTAINER ramzes13 <petru.darii@gmail.com>

RUN apt-get update && yes | apt-get install curl wget nano mc apt-transport-https

RUN curl -k https://repo.varnish-cache.org/GPG-key.txt |apt-key add -

RUN echo "deb https://repo.varnish-cache.org/debian/ wheezy varnish-3.0" \
   | tee -a /etc/apt/sources.list.d/varnish-cache.list

RUN apt-get update; true # disable errors "Problem with the SSL CA cert"

RUN yes | apt-get install varnish