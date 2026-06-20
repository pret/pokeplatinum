FROM debian:13

ENV DEBIAN_FRONTEND=noninteractive

# Locale
#ENV LANG="en_US.UTF-8"
#ENV LANGUAGE="en_US.UTF-8"
#ENV LC_ALL="en_US.UTF-8"

#RUN apt update && apt install locales -y
#RUN locale-gen en_US.UTF-8
#RUN dpkg-reconfigure locales

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential libsdl2-2.0-0 libsdl2-dev libenet7 libenet-dev xvfb \
    python3 gcc-arm-none-eabi wine wine32 wine64 libnss-unknown fuse file \
    ninja-build nasm flex bison

RUN mkdir -p /home
RUN chmod 777 /home
