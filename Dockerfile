FROM ubuntu:bionic

RUN apt-get update --fix-missing
RUN apt-get install -y cmake gdb g++-8 git autotools-dev autoconf libtool

ADD install.sh /
RUN bash install.sh
ENV PATH="/pisa/build/bin/:${PATH}"

CMD ["ls", "/pisa/build/bin"]
