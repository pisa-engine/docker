FROM gcc:8.3

RUN curl https://cmake.org/files/v3.14/cmake-3.14.1-Linux-x86_64.sh -o /tmp/curl-install.sh \
      && chmod u+x /tmp/curl-install.sh \
      && mkdir /usr/bin/cmake \
      && /tmp/curl-install.sh --skip-license --prefix=/usr/bin/cmake \
      && rm /tmp/curl-install.sh

ENV PATH="/usr/bin/cmake/bin:${PATH}"

ADD install.sh /
RUN bash install.sh
ENV PATH="/pisa/build/bin/:${PATH}"

CMD ["ls", "/pisa/build/bin"]
