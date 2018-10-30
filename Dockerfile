FROM teeks99/boost-cpp-docker:gcc-8

RUN apt-get update -y && apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install pipenv

RUN wget -O boost_1_67_0.tar.gz https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
RUN tar xzvf boost_1_67_0.tar.gz
RUN cd boost_1_67_0
RUN ./bootstrap.sh --prefix=/usr/local
RUN ./b2 install

RUN wget -O cmake-3.12.3.tar.gz https://cmake.org/files/v3.12/cmake-3.12.3.tar.gz
RUN tar xzvf cmake-3.12.3.tar.gz
RUN cd cmake-3.12.3
RUN ./configure
RUN make && make install

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

CMD ["bash"]
