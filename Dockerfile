FROM ubuntu:jammy

RUN apt-get update -y
RUN apt-get install -y \
        git \
        build-essential \
        pkg-config \
        python3 \
        python3-venv \
        python3-pip \
        python-is-python3 \
        binutils-arm-none-eabi \
        gcc-arm-none-eabi \
        wget
RUN dpkg --add-architecture i386
RUN mkdir -pm755 /etc/apt/keyrings
RUN wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
RUN wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
RUN apt-get update -y
RUN apt-get install -y --install-recommends winehq-stable
RUN python -m venv .venv
RUN . .venv/bin/activate
RUN pip install meson ninja
COPY tools/cw/license.dat /etc/mwerks/license.dat
ENV LM_LICENSE_FILE=/etc/mwerks/license.dat
RUN hash -r

CMD [ "/bin/sh" ]
