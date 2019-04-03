PISA Docker Image
=================

[![Build Status](https://travis-ci.com/pisa-engine/docker.svg?branch=master)](https://travis-ci.com/pisa-engine/docker)

This project provides a Docker image for [PISA](https://github.com/pisa-engine/pisa).
It provides the ability to run command-line tools in an isolated environment.
The image can be furthermore used as a base for other images that provide means
of reproducing specific scenarios using PISA engine.

The image is available in [Docker Hub](https://hub.docker.com/r/pisa/pisa) and can be pulled with the command `docker pull pisa/pisa`.

## Building Image

```
git clone https://github.com/pisa-engine/docker.git
cd docker
make image
``` 

## Push image to Docker Hub

```
make push-image
``` 


## Command-Line Usage

Once built, you can execute a container, which will have all command-line tools
included in its `PATH` variable.

    # docker run --rm pisa create_freq_index -h

    # docker run -rm -v /path/to/data:/data \ 
        zcat /data/GOV2/**/*.gz | parse_collection \
            -f trecweb \
            --stemmer porter2 \
            --content-parser html \
            -o /data/output
