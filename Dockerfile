FROM gcc:8.3

RUN apt-get update && apt-get install -y --no-install-recommends \
         cmake \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* 

ADD install.sh /
RUN bash install.sh
ENV PATH="/pisa/build/bin/:${PATH}"

CMD ["ls", "/pisa/build/bin"]
