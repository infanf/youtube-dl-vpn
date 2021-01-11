FROM debian:10-slim
ADD setup.sh /
RUN /setup.sh
RUN apt-get -y purge gcc bzip2 nasm yasm autoconf automake build-essential cmake git-core libass-dev libfreetype6-dev libsdl2-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev pkg-config texinfo wget zlib1g-dev libx265-dev libnuma-dev libfdk-aac-dev libmp3lame-dev libopus-dev libx264-dev libssl-dev\
    && apt-get clean
ENV PATH=/ffmpeg/bin:$PATH
