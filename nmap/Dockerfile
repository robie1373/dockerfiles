FROM debian:jessie
MAINTAINER Robie Lutsey <robie1373@gmail.com>
ENV VERSION 7.00
RUN apt-get update && apt-get -y install build-essential wget bzip2

RUN wget http://nmap.org/dist/nmap-${VERSION}.tar.bz2 && \
	bzip2 -cd nmap-${VERSION}.tar.bz2 | tar xvf - && \
	cd nmap-${VERSION} && \
	./configure && \
	make && \
	make install && \
	cd && \
	rm -rf nmap-${VERSION}

WORKDIR /root

#ENTRYPOINT ["nmap"]
