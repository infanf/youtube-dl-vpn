ARG ARCH=
FROM ${ARCH}debian:11-slim
ADD ffmpeg.sh /
RUN /ffmpeg.sh && rm /ffmpeg.sh
ENV PATH=/ffmpeg/bin:$PATH
WORKDIR /app
