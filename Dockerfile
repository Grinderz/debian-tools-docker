FROM debian:latest

LABEL Description="debian tools" Vendor="VARCH" Version="1.0" \
    org.label-schema.vcs-url="https://github.com/Grinderz/debian-tools-docker.git"

RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    dpkg-dev \
    && rm -rf /var/lib/apt/lists/*

ENV MODE GENERATE_REPO
VOLUME /data

ADD entrypoint.py .

ENTRYPOINT [ "python", "entrypoint.py" ]

