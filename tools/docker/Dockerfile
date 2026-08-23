FROM debian:13

ARG USE_DEVKITPRO=1

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
    ninja-build nasm flex bison wget ca-certificates git clangd libpng-dev libpng-tools

# Install DevkitPro
RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        wget --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0" \
        https://apt.devkitpro.org/install-devkitpro-pacman ;\
    fi
RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        sed -i 's/apt-get install devkitpro-pacman/apt-get install devkitpro-pacman -y/g' ./install-devkitpro-pacman ;\
    fi
RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        chmod +x ./install-devkitpro-pacman ;\
    fi
RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        ./install-devkitpro-pacman ;\
    fi

RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        ln -s /proc/mounts /etc/mtab ;\
    fi
RUN if [ "$USE_DEVKITPRO" = "1" ]; then \
        dkp-pacman -S switch-dev switch-sdl2 switch-glad switch-enet --noconfirm ;\
    fi

RUN mkdir -p /home
RUN chmod 777 /home

ENV DEVKITPRO=/opt/devkitpro
