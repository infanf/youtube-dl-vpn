ARG ARCH=
FROM ${ARCH}infanf/ffmpeg
RUN apt-get update &&\
    apt-get install -yqq python3-pip &&\
    pip3 install --upgrade yt-dlp &&\
    mkdir -p /.cache &&\
    chmod 777 /.cache
WORKDIR /app
