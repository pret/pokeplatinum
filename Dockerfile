FROM ubuntu:noble

RUN apt-get update -y
RUN apt-get install -y bison flex g++ gcc-arm-none-eabi git make ninja-build pkg-config python3 wget

RUN dpkg --add-architecture i386
RUN mkdir -pm755 /etc/apt/keyrings
RUN wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
RUN wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
RUN apt-get update -y
RUN apt-get install -y --install-recommends winehq-stable

COPY tools/cw/license.dat /etc/mwerks/license.dat
ENV LM_LICENSE_FILE=/etc/mwerks/license.dat
