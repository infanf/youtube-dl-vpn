ARG ARCH=
FROM ${ARCH}debian:11-slim
ADD setup.sh /
RUN /setup.sh && rm /setup.sh
ENV PATH=/ffmpeg/bin:$PATH
WORKDIR /app
