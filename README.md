## Build

```bash
$ docker build -t varch/debian-tools-docker .
$ docker push varch/debian-tools-docker

```

## Usage

```bash
$ docker run --rm -it -v /home/user/data:/data varch/debian-tools-docker
```
