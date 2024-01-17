FROM debian:12-slim

COPY sources /root/sources
WORKDIR /root/sources

RUN chmod +x entrypoint.sh
RUN ./entrypoint.sh package_base

ENTRYPOINT ["/bin/zsh"]
