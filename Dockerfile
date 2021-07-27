FROM debian:10-slim
ADD setup.sh /
RUN /setup.sh
ENV PATH=/ffmpeg/bin:$PATH
