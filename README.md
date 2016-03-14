# Supported tags and respective `Dockerfile` links

-   [`2.3.0` (*2.3.0/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/master/ubuntu/Dockerfile)
-   [`2.3.0-alpine` (*2.3.0/alpine/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/master/alpine/Dockerfile)
-   [`2.3.1` (*2.3.1/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/2.3.1/ubuntu/Dockerfile)
-   [`2.3.1-alpine` (*2.3.1/Dockerfile*)](https://github.com/gkuiper/docker-systemc/blob/2.3.1/alpineDockerfile)

# How to use this image

```console
$ docker pull guusk/docker-systemc:<tag>
$ docker run -it --rm --name my-srcs -v "$PWD":/usr/src/mysrcs -w /usr/src/mysrcs guusk/docker-systemc:<tag> bash
```
