FROM debian:bookworm
RUN apt-get update && apt-get install -y --no-install-recommends systemd systemd-sysv g++ cmake make \
    && rm -rf /var/lib/apt/lists/*
CMD ["/sbin/init"]
