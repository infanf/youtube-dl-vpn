FROM debian:11-slim
ADD setup.sh /
RUN /setup.sh
ENV PATH=/ffmpeg/bin:$PATH
