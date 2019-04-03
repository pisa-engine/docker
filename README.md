PISA Docker Image
=================

[![Build Status](https://travis-ci.com/pisa-engine/docker.svg?branch=master)](https://travis-ci.com/pisa-engine/docker)

This project provides a Docker image for [PISA](https://github.com/pisa-engine/pisa).
It provides the ability to run command-line tools in an isolated environment.
The image can be furthermore used as a base for other images that provide means
of reproducing specific scenarios using PISA engine.

## Building Image

The image is currently unavailable on the Docker Hub.
You can, however, easily build it on your machine:

    # git clone https://github.com/pisa-engine/docker.git
    # docker build --tag=pisa ./docker

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
