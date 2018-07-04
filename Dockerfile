FROM debian:latest

LABEL   description="debian tools" \
        vendor="VARCH" \
        version="1.1.0" \
        vcs-url="https://github.com/grinderz/debian-tools-docker.git" \
        docker.cmd="docker run --rm -it -v /home/user/data:/data varch/debian-tools-docker"

RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    dpkg-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV MODE GENERATE_REPO
VOLUME /data

ADD entrypoint.py .

ENTRYPOINT [ "python", "entrypoint.py" ]
