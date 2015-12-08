# Supported tags and respective `Dockerfile` links

-   [`2.3.0` (*2.3.0/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/master/Dockerfile)
-   [`2.3.1` (*2.3.1/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/2.3.1/Dockerfile)

# How to use this image

```console
$ docker pull guusk/docker-systemc
$ docker run -it --rm --name my-srcs -v "$PWD":/usr/src/mysrcs -w /usr/src/mysrcs guusk/docker-systemc:2.3.0 make
```
